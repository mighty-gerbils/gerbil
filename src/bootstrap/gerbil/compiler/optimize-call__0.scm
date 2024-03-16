(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710617612)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp152078 (list gxc#::basic-xform::t))
            (__tmp152076
             (let ((__tmp152077
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp152077 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp152078
         '()
         __tmp152076
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args151779_
        (apply make-instance gxc#::optimize-call::t _$args151779_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx151771_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self151774_
                (let ((__obj152073
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj152073))
               (__tmp152079
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self151774_ _stx151771_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp152079
           gxc#current-compile-method
           _self151774_))))
    (define gxc#optimize-call%
      (lambda (_self151625_ _stx151626_)
        (let* ((___stx151824151825_ _stx151626_)
               (_g151629151649_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx151824151825_)))))
          (let ((___kont151826151827_
                 (lambda (_L151693_ _L151694_)
                   (let* ((_rator-id151712_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L151694_)))
                          (_rator-type151714_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id151712_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type151714_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152080
                                  (##structure-ref
                                   _rator-type151714_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id151712_
                              '" => "
                              _rator-type151714_
                              '" "
                              __tmp152080))
                           (let ((_optimized151717_
                                  (let ((__method152074
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type151714_
                                            'optimize-call))))
                                    (if __method152074
                                        (__method152074
                                         _rator-type151714_
                                         _self151625_
                                         _stx151626_
                                         _L151693_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type151714_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type151714_))
                                 _optimized151717_
                                 (let* ((___stx151806151807_ _optimized151717_)
                                        (_g151720151730_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx151806151807_)))))
                                   (let ((___kont151808151809_
                                          (lambda (_L151750_)
                                            (let ((__tmp152081
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L151750_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152081
                                               _stx151626_))))
                                         (___kont151810151811_
                                          (lambda () _optimized151717_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx151806151807_))
                                         (let ((_e151723151742_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx151806151807_))))
                                           (let ((_tl151725151747_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e151723151742_)))
                                                 (_hd151724151745_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e151723151742_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd151724151745_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd151724151745_))
                                                     (___kont151808151809_
                                                      _tl151725151747_)
                                                     (___kont151810151811_))
                                                 (___kont151810151811_))))
                                         (___kont151810151811_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type151714_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self151625_ _stx151626_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151626_
                                _rator-type151714_)))))))
                (___kont151828151829_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self151625_ _stx151626_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx151824151825_))
                (let ((_e151633151661_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx151824151825_))))
                  (let ((_tl151635151666_
                         (let () (declare (not safe)) (##cdr _e151633151661_)))
                        (_hd151634151664_
                         (let ()
                           (declare (not safe))
                           (##car _e151633151661_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl151635151666_))
                        (let ((_e151636151669_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151635151666_))))
                          (let ((_tl151638151674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151636151669_)))
                                (_hd151637151672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151636151669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd151637151672_))
                                (let ((_e151639151677_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd151637151672_))))
                                  (let ((_tl151641151682_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e151639151677_)))
                                        (_hd151640151680_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e151639151677_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd151640151680_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd151640151680_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl151641151682_))
                                                (let ((_e151642151685_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl151641151682_))))
                                                  (let ((_tl151644151690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151642151685_)))
                                                        (_hd151643151688_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151642151685_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151644151690_))
                                                        (___kont151826151827_
                                                         _tl151638151674_
                                                         _hd151643151688_)
                                                        (___kont151828151829_))))
                                                (___kont151828151829_))
                                            (___kont151828151829_))
                                        (___kont151828151829_))))
                                (___kont151828151829_))))
                        (___kont151828151829_))))
                (___kont151828151829_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151578_ _ctx151579_ _stx151580_ _args151581_)
        (let* ((_g151583151593_
                (lambda (_g151584151590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151584151590_))))
               (_g151582151622_
                (lambda (_g151584151596_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151584151596_))
                      (let ((_e151586151598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151584151596_))))
                        (let ((_hd151587151601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151586151598_)))
                              (_tl151588151603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151586151598_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151588151603_))
                              ((lambda (_L151606_)
                                 (let* ((_klass151617_
                                         (let ((__tmp152082
                                                (##structure-ref
                                                 _self151578_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151580_
                                            __tmp152082)))
                                        (_object151619_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx151579_
                                            _L151606_))))
                                   (if (##structure-ref
                                        _klass151617_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152083
                                              (let ((__tmp152084
                                                     (let ((__tmp152086
                                                            (let ((__tmp152087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152088
                                  (##structure-ref
                                   _klass151617_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152088 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152087)))
                   (__tmp152085
                    (let () (declare (not safe)) (cons _object151619_ '()))))
               (declare (not safe))
               (cons __tmp152086 __tmp152085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152084))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152083
                                          _stx151580_))
                                       (if (##structure-ref
                                            _klass151617_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152089
                                                  (let ((__tmp152090
                                                         (let ((__tmp152092
                                                                (let ((__tmp152093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152094
                                      (##structure-ref
                                       _klass151617_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152094 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152093)))
                       (__tmp152091
                        (let ()
                          (declare (not safe))
                          (cons _object151619_ '()))))
                   (declare (not safe))
                   (cons __tmp152092 __tmp152091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152090))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152089
                                              _stx151580_))
                                           (let ((__tmp152095
                                                  (let ((__tmp152096
                                                         (let ((__tmp152102
                                                                (let ((__tmp152103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152103)))
                       (__tmp152097
                        (let ((__tmp152099
                               (let ((__tmp152100
                                      (let ((__tmp152101
                                             (##structure-ref
                                              _self151578_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152101 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152100)))
                              (__tmp152098
                               (let ()
                                 (declare (not safe))
                                 (cons _object151619_ '()))))
                          (declare (not safe))
                          (cons __tmp152099 __tmp152098))))
                   (declare (not safe))
                   (cons __tmp152102 __tmp152097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152096))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152095
                                              _stx151580_))))))
                               _hd151587151601_)
                              (let ()
                                (declare (not safe))
                                (_g151583151593_ _g151584151596_)))))
                      (let ()
                        (declare (not safe))
                        (_g151583151593_ _g151584151596_))))))
          (declare (not safe))
          (_g151582151622_ _args151581_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass151781 __method-table151782)
        (let ((__id151783
               (let ((__slot151784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151781 'id))))
                 (if __slot151784
                     __slot151784
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151578_ _ctx151579_ _stx151580_ _args151581_)
            (let* ((_g151583151593_
                    (lambda (_g151584151590_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151584151590_))))
                   (_g151582151622_
                    (lambda (_g151584151596_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151584151596_))
                          (let ((_e151586151598_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151584151596_))))
                            (let ((_hd151587151601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151586151598_)))
                                  (_tl151588151603_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151586151598_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151588151603_))
                                  ((lambda (_L151606_)
                                     (let* ((_klass151617_
                                             (let ((__tmp152104
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151578_
                                                       __id151783
                                                       __klass151781
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151580_
                                                __tmp152104)))
                                            (_object151619_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx151579_
                                                _L151606_))))
                                       (if (##structure-ref
                                            _klass151617_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152105
                                                  (let ((__tmp152106
                                                         (let ((__tmp152108
                                                                (let ((__tmp152109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152110
                                      (##structure-ref
                                       _klass151617_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152110 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152109)))
                       (__tmp152107
                        (let ()
                          (declare (not safe))
                          (cons _object151619_ '()))))
                   (declare (not safe))
                   (cons __tmp152108 __tmp152107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152106))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152105
                                              _stx151580_))
                                           (if (##structure-ref
                                                _klass151617_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152111
                                                      (let ((__tmp152112
                                                             (let ((__tmp152114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152115
                                   (let ((__tmp152116
                                          (##structure-ref
                                           _klass151617_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152116 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152115)))
                           (__tmp152113
                            (let ()
                              (declare (not safe))
                              (cons _object151619_ '()))))
                       (declare (not safe))
                       (cons __tmp152114 __tmp152113))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152111
                                                  _stx151580_))
                                               (let ((__tmp152117
                                                      (let ((__tmp152118
                                                             (let ((__tmp152124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152125
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152125)))
                           (__tmp152119
                            (let ((__tmp152121
                                   (let ((__tmp152122
                                          (let ((__tmp152123
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151578_
                                                    __id151783
                                                    __klass151781
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152123 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152122)))
                                  (__tmp152120
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151619_ '()))))
                              (declare (not safe))
                              (cons __tmp152121 __tmp152120))))
                       (declare (not safe))
                       (cons __tmp152124 __tmp152119))))
                (declare (not safe))
                (cons '%#call __tmp152118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152117
                                                  _stx151580_))))))
                                   _hd151587151601_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151583151593_ _g151584151596_)))))
                          (let ()
                            (declare (not safe))
                            (_g151583151593_ _g151584151596_))))))
              (declare (not safe))
              (_g151582151622_ _args151581_))))))
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
      (lambda (_self151293_ _ctx151294_ _stx151295_ _args151296_)
        (let* ((_klass151298_
                (let ((__tmp152126
                       (##structure-ref _self151293_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151295_ __tmp152126)))
               (_fields151300_
                (length (##structure-ref _klass151298_ '5 gxc#!class::t '#f)))
               (_args151306_
                (map (lambda (_g151301151303_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx151294_ _g151301151303_)))
                     _args151296_))
               (_inline-make-object151308_
                (let ((__tmp152127
                       (let ((__tmp152133
                              (let ((__tmp152134
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152134)))
                             (__tmp152128
                              (let ((__tmp152130
                                     (let ((__tmp152131
                                            (let ((__tmp152132
                                                   (##structure-ref
                                                    _self151293_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152132 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152131)))
                                    (__tmp152129
                                     (make-list _fields151300_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp152130 __tmp152129))))
                         (declare (not safe))
                         (cons __tmp152133 __tmp152128))))
                  (declare (not safe))
                  (cons '%#call __tmp152127))))
          (let ((_$e151311_
                 (##structure-ref _klass151298_ '6 gxc#!class::t '#f)))
            (if _$e151311_
                ((lambda (_ctor151314_)
                   (let ((_$obj151316_
                          (let ((__tmp152135 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152135)))
                         (_ctor-impl151317_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151298_
                             _ctor151314_))))
                     (let ((__tmp152136
                            (let ((__tmp152137
                                   (let ((__tmp152205
                                          (let ((__tmp152206
                                                 (let ((__tmp152208
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151316_
                                                                '())))
                                                       (__tmp152207
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151308_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152208
                                                         __tmp152207))))
                                            (declare (not safe))
                                            (cons __tmp152206 '())))
                                         (__tmp152138
                                          (let ((__tmp152139
                                                 (let ((__tmp152140
                                                        (let ((__tmp152144
                                                               (if _ctor-impl151317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152145
                                  (let ((__tmp152149
                                         (let ((__tmp152150
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151317_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152150)))
                                        (__tmp152146
                                         (let ((__tmp152147
                                                (let ((__tmp152148
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151316_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152148))))
                                           (declare (not safe))
                                           (cons __tmp152147 _args151306_))))
                                    (declare (not safe))
                                    (cons __tmp152149 __tmp152146))))
                             (declare (not safe))
                             (cons '%#call __tmp152145))
                           (let* ((_$ctor151319_
                                   (let ((__tmp152151 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152151)))
                                  (__tmp152152
                                   (let ((__tmp152187
                                          (let ((__tmp152188
                                                 (let ((__tmp152204
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151319_
                                                                '())))
                                                       (__tmp152189
                                                        (let ((__tmp152190
                                                               (let ((__tmp152191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152202
                                     (let ((__tmp152203
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152203)))
                                    (__tmp152192
                                     (let ((__tmp152199
                                            (let ((__tmp152200
                                                   (let ((__tmp152201
                                                          (##structure-ref
                                                           _self151293_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152201 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152200)))
                                           (__tmp152193
                                            (let ((__tmp152197
                                                   (let ((__tmp152198
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152198)))
                                                  (__tmp152194
                                                   (let ((__tmp152195
                                                          (let ((__tmp152196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151314_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152195 '()))))
                                              (declare (not safe))
                                              (cons __tmp152197 __tmp152194))))
                                       (declare (not safe))
                                       (cons __tmp152199 __tmp152193))))
                                (declare (not safe))
                                (cons __tmp152202 __tmp152192))))
                         (declare (not safe))
                         (cons '%#call __tmp152191))))
                  (declare (not safe))
                  (cons __tmp152190 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152204
                                                         __tmp152189))))
                                            (declare (not safe))
                                            (cons __tmp152188 '())))
                                         (__tmp152153
                                          (let ((__tmp152154
                                                 (let ((__tmp152155
                                                        (let ((__tmp152185
                                                               (let ((__tmp152186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151319_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152186)))
                      (__tmp152156
                       (let ((__tmp152178
                              (let ((__tmp152179
                                     (let ((__tmp152183
                                            (let ((__tmp152184
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151319_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152184)))
                                           (__tmp152180
                                            (let ((__tmp152181
                                                   (let ((__tmp152182
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152182))))
                                              (declare (not safe))
                                              (cons __tmp152181
                                                    _args151306_))))
                                       (declare (not safe))
                                       (cons __tmp152183 __tmp152180))))
                                (declare (not safe))
                                (cons '%#call __tmp152179)))
                             (__tmp152157
                              (let ((__tmp152158
                                     (let ((__tmp152159
                                            (let ((__tmp152176
                                                   (let ((__tmp152177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152177)))
                                                  (__tmp152160
                                                   (let ((__tmp152174
                                                          (let ((__tmp152175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152175)))
                 (__tmp152161
                  (let ((__tmp152172
                         (let ((__tmp152173
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152173)))
                        (__tmp152162
                         (let ((__tmp152169
                                (let ((__tmp152170
                                       (let ((__tmp152171
                                              (##structure-ref
                                               _self151293_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152171 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152170)))
                               (__tmp152163
                                (let ((__tmp152167
                                       (let ((__tmp152168
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152168)))
                                      (__tmp152164
                                       (let ((__tmp152165
                                              (let ((__tmp152166
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151314_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152166))))
                                         (declare (not safe))
                                         (cons __tmp152165 '()))))
                                  (declare (not safe))
                                  (cons __tmp152167 __tmp152164))))
                           (declare (not safe))
                           (cons __tmp152169 __tmp152163))))
                    (declare (not safe))
                    (cons __tmp152172 __tmp152162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152174
                                                           __tmp152161))))
                                              (declare (not safe))
                                              (cons __tmp152176 __tmp152160))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152159))))
                                (declare (not safe))
                                (cons __tmp152158 '()))))
                         (declare (not safe))
                         (cons __tmp152178 __tmp152157))))
                  (declare (not safe))
                  (cons __tmp152185 __tmp152156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152155))))
                                            (declare (not safe))
                                            (cons __tmp152154 '()))))
                                     (declare (not safe))
                                     (cons __tmp152187 __tmp152153))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152152))))
                      (__tmp152141
                       (let ((__tmp152142
                              (let ((__tmp152143
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151316_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152143))))
                         (declare (not safe))
                         (cons __tmp152142 '()))))
                  (declare (not safe))
                  (cons __tmp152144 __tmp152141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152140))))
                                            (declare (not safe))
                                            (cons __tmp152139 '()))))
                                     (declare (not safe))
                                     (cons __tmp152205 __tmp152138))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152137))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152136 _stx151295_))))
                 _$e151311_)
                (let ((_$e151321_
                       (##structure-ref _klass151298_ '10 gxc#!class::t '#f)))
                  (if _$e151321_
                      ((lambda (_metaclass151324_)
                         (let* ((_$obj151326_
                                 (let ((__tmp152209 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152209)))
                                (_metakons151328_
                                 (let ((__tmp152210
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151295_
                                           _metaclass151324_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152210
                                    'instance-init!))))
                           (let ((__tmp152211
                                  (let ((__tmp152212
                                         (let ((__tmp152243
                                                (let ((__tmp152244
                                                       (let ((__tmp152246
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151326_ '())))
                     (__tmp152245
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151308_ '()))))
                 (declare (not safe))
                 (cons __tmp152246 __tmp152245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152244 '())))
                                               (__tmp152213
                                                (let ((__tmp152214
                                                       (let ((__tmp152215
                                                              (let ((__tmp152219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151328_
                                 (let ((__tmp152220
                                        (let ((__tmp152228
                                               (let ((__tmp152229
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151328_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152229)))
                                              (__tmp152221
                                               (let ((__tmp152225
                                                      (let ((__tmp152226
                                                             (let ((__tmp152227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151293_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152227 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152226)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152222
                                                      (let ((__tmp152223
                                                             (let ((__tmp152224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151326_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152224))))
                (declare (not safe))
                (cons __tmp152223 _args151306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152225
                                                       __tmp152222))))
                                          (declare (not safe))
                                          (cons __tmp152228 __tmp152221))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152220))
                                 (let ((__tmp152230
                                        (let ((__tmp152241
                                               (let ((__tmp152242
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152242)))
                                              (__tmp152231
                                               (let ((__tmp152238
                                                      (let ((__tmp152239
                                                             (let ((__tmp152240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151293_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152240 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152239)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152232
                                                      (let ((__tmp152236
                                                             (let ((__tmp152237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152237)))
                    (__tmp152233
                     (let ((__tmp152234
                            (let ((__tmp152235
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151326_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152235))))
                       (declare (not safe))
                       (cons __tmp152234 _args151306_))))
                (declare (not safe))
                (cons __tmp152236 __tmp152233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152238
                                                       __tmp152232))))
                                          (declare (not safe))
                                          (cons __tmp152241 __tmp152231))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152230))))
                            (__tmp152216
                             (let ((__tmp152217
                                    (let ((__tmp152218
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151326_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152218))))
                               (declare (not safe))
                               (cons __tmp152217 '()))))
                        (declare (not safe))
                        (cons __tmp152219 __tmp152216))))
                 (declare (not safe))
                 (cons '%#begin __tmp152215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152214 '()))))
                                           (declare (not safe))
                                           (cons __tmp152243 __tmp152213))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152212))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152211 _stx151295_))))
                       _$e151321_)
                      (if (##structure-ref _klass151298_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151306_) _fields151300_)
                              (let ((__tmp152247
                                     (let ((__tmp152248
                                            (let ((__tmp152253
                                                   (let ((__tmp152254
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152254)))
                                                  (__tmp152249
                                                   (let ((__tmp152250
                                                          (let ((__tmp152251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152252
                                (##structure-ref
                                 _self151293_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152252 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152250
                                                           _args151306_))))
                                              (declare (not safe))
                                              (cons __tmp152253 __tmp152249))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152248))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152247
                                 _stx151295_))
                              (let ((__tmp152256
                                     (##structure-ref
                                      _self151293_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152255
                                     (length (##structure-ref
                                              _klass151298_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151295_
                                 __tmp152256
                                 __tmp152255)))
                          (let ((_$obj151331_
                                 (let ((__tmp152257 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152257))))
                            (let _lp151333_ ((_rest151335_ _args151306_)
                                             (_initializers151336_ '()))
                              (let* ((___stx151862151863_ _rest151335_)
                                     (_g151340151361_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx151862151863_)))))
                                (let ((___kont151864151865_
                                       (lambda (_L151415_ _L151416_ _L151417_)
                                         (let* ((_slot151448_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151417_))))
                                                (_off151450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151298_
                                                    _slot151448_))))
                                           (if _off151450_
                                               (let ((__tmp152258
                                                      (let ((__tmp152259
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151450_ _L151416_))))
                (declare (not safe))
                (cons __tmp152259 _initializers151336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151333_
                                                  _L151415_
                                                  __tmp152258))
                                               (let ((__tmp152260
                                                      (##structure-ref
                                                       _self151293_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151295_
                                                  __tmp152260
                                                  _slot151448_))))))
                                      (___kont151866151867_
                                       (lambda ()
                                         (let ((__tmp152261
                                                (let ((__tmp152262
                                                       (let ((__tmp152285
                                                              (let ((__tmp152286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152288
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151331_ '())))
                                   (__tmp152287
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151308_ '()))))
                               (declare (not safe))
                               (cons __tmp152288 __tmp152287))))
                        (declare (not safe))
                        (cons __tmp152286 '())))
                     (__tmp152263
                      (let ((__tmp152264
                             (let ((__tmp152265
                                    (let ((__tmp152282
                                           (let ((__tmp152283
                                                  (let ((__tmp152284
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152284))))
                                             (declare (not safe))
                                             (cons __tmp152283 '())))
                                          (__tmp152266
                                           (let ((__tmp152267
                                                  (lambda (_i151375_ _r151376_)
                                                    (let ((__tmp152268
                                                           (let ((__tmp152269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152279
                                 (let ((__tmp152280
                                        (let ((__tmp152281
                                               (##structure-ref
                                                _self151293_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152281 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152280)))
                                (__tmp152270
                                 (let ((__tmp152276
                                        (let ((__tmp152277
                                               (let ((__tmp152278
                                                      (car _i151375_)))
                                                 (declare (not safe))
                                                 (cons __tmp152278 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152277)))
                                       (__tmp152271
                                        (let ((__tmp152274
                                               (let ((__tmp152275
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151331_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152275)))
                                              (__tmp152272
                                               (let ((__tmp152273
                                                      (cdr _i151375_)))
                                                 (declare (not safe))
                                                 (cons __tmp152273 '()))))
                                          (declare (not safe))
                                          (cons __tmp152274 __tmp152272))))
                                   (declare (not safe))
                                   (cons __tmp152276 __tmp152271))))
                            (declare (not safe))
                            (cons __tmp152279 __tmp152270))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152269))))
              (declare (not safe))
              (cons __tmp152268 _r151376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152267
                                                     '()
                                                     _initializers151336_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152282 __tmp152266))))
                               (declare (not safe))
                               (cons '%#begin __tmp152265))))
                        (declare (not safe))
                        (cons __tmp152264 '()))))
                 (declare (not safe))
                 (cons __tmp152285 __tmp152263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152262))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152261
                                            _stx151295_))))
                                      (___kont151868151869_
                                       (lambda ()
                                         (let ((__tmp152289
                                                (let ((__tmp152290
                                                       (let ((__tmp152304
                                                              (let ((__tmp152305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152307
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151331_ '())))
                                   (__tmp152306
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151308_ '()))))
                               (declare (not safe))
                               (cons __tmp152307 __tmp152306))))
                        (declare (not safe))
                        (cons __tmp152305 '())))
                     (__tmp152291
                      (let ((__tmp152292
                             (let ((__tmp152293
                                    (let ((__tmp152297
                                           (let ((__tmp152298
                                                  (let ((__tmp152302
                                                         (let ((__tmp152303
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152303)))
                (__tmp152299
                 (let ((__tmp152300
                        (let ((__tmp152301
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151331_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152301))))
                   (declare (not safe))
                   (cons __tmp152300 _args151306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152302
                                                          __tmp152299))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152298)))
                                          (__tmp152294
                                           (let ((__tmp152295
                                                  (let ((__tmp152296
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152296))))
                                             (declare (not safe))
                                             (cons __tmp152295 '()))))
                                      (declare (not safe))
                                      (cons __tmp152297 __tmp152294))))
                               (declare (not safe))
                               (cons '%#begin __tmp152293))))
                        (declare (not safe))
                        (cons __tmp152292 '()))))
                 (declare (not safe))
                 (cons __tmp152304 __tmp152291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152290))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152289
                                            _stx151295_)))))
                                  (let* ((_g151338151378_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx151862151863_))
                                                (___kont151866151867_)
                                                (___kont151868151869_))))
                                         (___match151899151900_
                                          (lambda (_e151345151383_
                                                   _hd151346151386_
                                                   _tl151347151388_
                                                   _e151348151391_
                                                   _hd151349151394_
                                                   _tl151350151396_
                                                   _e151351151399_
                                                   _hd151352151402_
                                                   _tl151353151404_
                                                   _e151354151407_
                                                   _hd151355151410_
                                                   _tl151356151412_)
                                            (let ((_L151415_ _tl151356151412_)
                                                  (_L151416_ _hd151355151410_)
                                                  (_L151417_ _hd151352151402_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151417_))
                                                  (___kont151864151865_
                                                   _L151415_
                                                   _L151416_
                                                   _L151417_)
                                                  (___kont151868151869_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx151862151863_))
                                        (let ((_e151345151383_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx151862151863_))))
                                          (let ((_tl151347151388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151345151383_)))
                                                (_hd151346151386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151345151383_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151346151386_))
                                                (let ((_e151348151391_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151346151386_))))
                                                  (let ((_tl151350151396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151348151391_)))
                                                        (_hd151349151394_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151348151391_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151349151394_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151349151394_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151350151396_))
                        (let ((_e151351151399_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151350151396_))))
                          (let ((_tl151353151404_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151351151399_)))
                                (_hd151352151402_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151351151399_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151353151404_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151347151388_))
                                    (let ((_e151354151407_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151347151388_))))
                                      (let ((_tl151356151412_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151354151407_)))
                                            (_hd151355151410_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151354151407_))))
                                        (___match151899151900_
                                         _e151345151383_
                                         _hd151346151386_
                                         _tl151347151388_
                                         _e151348151391_
                                         _hd151349151394_
                                         _tl151350151396_
                                         _e151351151399_
                                         _hd151352151402_
                                         _tl151353151404_
                                         _e151354151407_
                                         _hd151355151410_
                                         _tl151356151412_)))
                                    (___kont151868151869_))
                                (___kont151868151869_))))
                        (___kont151868151869_))
                    (___kont151868151869_))
                (___kont151868151869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont151868151869_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151338151378_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass151785 __method-table151786)
        (let ((__id151787
               (let ((__slot151788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151785 'id))))
                 (if __slot151788
                     __slot151788
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151293_ _ctx151294_ _stx151295_ _args151296_)
            (let* ((_klass151298_
                    (let ((__tmp152308
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151293_
                              __id151787
                              __klass151785
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151295_ __tmp152308)))
                   (_fields151300_
                    (length (##structure-ref
                             _klass151298_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151306_
                    (map (lambda (_g151301151303_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx151294_ _g151301151303_)))
                         _args151296_))
                   (_inline-make-object151308_
                    (let ((__tmp152309
                           (let ((__tmp152315
                                  (let ((__tmp152316
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152316)))
                                 (__tmp152310
                                  (let ((__tmp152312
                                         (let ((__tmp152313
                                                (let ((__tmp152314
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151293_
                                                          __id151787
                                                          __klass151785
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152314 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152313)))
                                        (__tmp152311
                                         (make-list
                                          _fields151300_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp152312 __tmp152311))))
                             (declare (not safe))
                             (cons __tmp152315 __tmp152310))))
                      (declare (not safe))
                      (cons '%#call __tmp152309))))
              (let ((_$e151311_
                     (##structure-ref _klass151298_ '6 gxc#!class::t '#f)))
                (if _$e151311_
                    ((lambda (_ctor151314_)
                       (let ((_$obj151316_
                              (let ((__tmp152317 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152317)))
                             (_ctor-impl151317_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151298_
                                 _ctor151314_))))
                         (let ((__tmp152318
                                (let ((__tmp152319
                                       (let ((__tmp152387
                                              (let ((__tmp152388
                                                     (let ((__tmp152390
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152389
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151308_ '()))))
               (declare (not safe))
               (cons __tmp152390 __tmp152389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152388 '())))
                                             (__tmp152320
                                              (let ((__tmp152321
                                                     (let ((__tmp152322
                                                            (let ((__tmp152326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151317_
                               (let ((__tmp152327
                                      (let ((__tmp152331
                                             (let ((__tmp152332
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151317_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152332)))
                                            (__tmp152328
                                             (let ((__tmp152329
                                                    (let ((__tmp152330
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152329
                                                     _args151306_))))
                                        (declare (not safe))
                                        (cons __tmp152331 __tmp152328))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152327))
                               (let* ((_$ctor151319_
                                       (let ((__tmp152333
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152333)))
                                      (__tmp152334
                                       (let ((__tmp152369
                                              (let ((__tmp152370
                                                     (let ((__tmp152386
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152371
                    (let ((__tmp152372
                           (let ((__tmp152373
                                  (let ((__tmp152384
                                         (let ((__tmp152385
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152385)))
                                        (__tmp152374
                                         (let ((__tmp152381
                                                (let ((__tmp152382
                                                       (let ((__tmp152383
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151293_
                         __id151787
                         __klass151785
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152383 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152382)))
                                               (__tmp152375
                                                (let ((__tmp152379
                                                       (let ((__tmp152380
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151316_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152380)))
              (__tmp152376
               (let ((__tmp152377
                      (let ((__tmp152378
                             (let ()
                               (declare (not safe))
                               (cons _ctor151314_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152378))))
                 (declare (not safe))
                 (cons __tmp152377 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152379
                                                        __tmp152376))))
                                           (declare (not safe))
                                           (cons __tmp152381 __tmp152375))))
                                    (declare (not safe))
                                    (cons __tmp152384 __tmp152374))))
                             (declare (not safe))
                             (cons '%#call __tmp152373))))
                      (declare (not safe))
                      (cons __tmp152372 '()))))
               (declare (not safe))
               (cons __tmp152386 __tmp152371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152370 '())))
                                             (__tmp152335
                                              (let ((__tmp152336
                                                     (let ((__tmp152337
                                                            (let ((__tmp152367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152368
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151319_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152368)))
                          (__tmp152338
                           (let ((__tmp152360
                                  (let ((__tmp152361
                                         (let ((__tmp152365
                                                (let ((__tmp152366
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151319_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152366)))
                                               (__tmp152362
                                                (let ((__tmp152363
                                                       (let ((__tmp152364
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151316_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152363
                                                        _args151306_))))
                                           (declare (not safe))
                                           (cons __tmp152365 __tmp152362))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152361)))
                                 (__tmp152339
                                  (let ((__tmp152340
                                         (let ((__tmp152341
                                                (let ((__tmp152358
                                                       (let ((__tmp152359
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152359)))
              (__tmp152342
               (let ((__tmp152356
                      (let ((__tmp152357
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152357)))
                     (__tmp152343
                      (let ((__tmp152354
                             (let ((__tmp152355
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152355)))
                            (__tmp152344
                             (let ((__tmp152351
                                    (let ((__tmp152352
                                           (let ((__tmp152353
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151293_
                                                     __id151787
                                                     __klass151785
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152353 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152352)))
                                   (__tmp152345
                                    (let ((__tmp152349
                                           (let ((__tmp152350
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152350)))
                                          (__tmp152346
                                           (let ((__tmp152347
                                                  (let ((__tmp152348
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152348))))
                                             (declare (not safe))
                                             (cons __tmp152347 '()))))
                                      (declare (not safe))
                                      (cons __tmp152349 __tmp152346))))
                               (declare (not safe))
                               (cons __tmp152351 __tmp152345))))
                        (declare (not safe))
                        (cons __tmp152354 __tmp152344))))
                 (declare (not safe))
                 (cons __tmp152356 __tmp152343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152358
                                                        __tmp152342))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152341))))
                                    (declare (not safe))
                                    (cons __tmp152340 '()))))
                             (declare (not safe))
                             (cons __tmp152360 __tmp152339))))
                      (declare (not safe))
                      (cons __tmp152367 __tmp152338))))
               (declare (not safe))
               (cons '%#if __tmp152337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152336 '()))))
                                         (declare (not safe))
                                         (cons __tmp152369 __tmp152335))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152334))))
                          (__tmp152323
                           (let ((__tmp152324
                                  (let ((__tmp152325
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151316_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152325))))
                             (declare (not safe))
                             (cons __tmp152324 '()))))
                      (declare (not safe))
                      (cons __tmp152326 __tmp152323))))
               (declare (not safe))
               (cons '%#begin __tmp152322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152321 '()))))
                                         (declare (not safe))
                                         (cons __tmp152387 __tmp152320))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152319))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152318 _stx151295_))))
                     _$e151311_)
                    (let ((_$e151321_
                           (##structure-ref
                            _klass151298_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e151321_
                          ((lambda (_metaclass151324_)
                             (let* ((_$obj151326_
                                     (let ((__tmp152391 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152391)))
                                    (_metakons151328_
                                     (let ((__tmp152392
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151295_
                                               _metaclass151324_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152392
                                        'instance-init!))))
                               (let ((__tmp152393
                                      (let ((__tmp152394
                                             (let ((__tmp152425
                                                    (let ((__tmp152426
                                                           (let ((__tmp152428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151326_ '())))
                         (__tmp152427
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151308_ '()))))
                     (declare (not safe))
                     (cons __tmp152428 __tmp152427))))
              (declare (not safe))
              (cons __tmp152426 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152395
                                                    (let ((__tmp152396
                                                           (let ((__tmp152397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152401
                                 (if _metakons151328_
                                     (let ((__tmp152402
                                            (let ((__tmp152410
                                                   (let ((__tmp152411
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152411)))
                                                  (__tmp152403
                                                   (let ((__tmp152407
                                                          (let ((__tmp152408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152409
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151293_
                                   __id151787
                                   __klass151785
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152409 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152408)))
                 (__tmp152404
                  (let ((__tmp152405
                         (let ((__tmp152406
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151326_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152406))))
                    (declare (not safe))
                    (cons __tmp152405 _args151306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152407
                                                           __tmp152404))))
                                              (declare (not safe))
                                              (cons __tmp152410 __tmp152403))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152402))
                                     (let ((__tmp152412
                                            (let ((__tmp152423
                                                   (let ((__tmp152424
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152424)))
                                                  (__tmp152413
                                                   (let ((__tmp152420
                                                          (let ((__tmp152421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152422
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151293_
                                   __id151787
                                   __klass151785
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152422 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152421)))
                 (__tmp152414
                  (let ((__tmp152418
                         (let ((__tmp152419
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152419)))
                        (__tmp152415
                         (let ((__tmp152416
                                (let ((__tmp152417
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151326_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152417))))
                           (declare (not safe))
                           (cons __tmp152416 _args151306_))))
                    (declare (not safe))
                    (cons __tmp152418 __tmp152415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152420
                                                           __tmp152414))))
                                              (declare (not safe))
                                              (cons __tmp152423 __tmp152413))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152412))))
                                (__tmp152398
                                 (let ((__tmp152399
                                        (let ((__tmp152400
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151326_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152400))))
                                   (declare (not safe))
                                   (cons __tmp152399 '()))))
                            (declare (not safe))
                            (cons __tmp152401 __tmp152398))))
                     (declare (not safe))
                     (cons '%#begin __tmp152397))))
              (declare (not safe))
              (cons __tmp152396 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152425
                                                     __tmp152395))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152394))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152393
                                  _stx151295_))))
                           _$e151321_)
                          (if (##structure-ref
                               _klass151298_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151306_) _fields151300_)
                                  (let ((__tmp152429
                                         (let ((__tmp152430
                                                (let ((__tmp152435
                                                       (let ((__tmp152436
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152436)))
              (__tmp152431
               (let ((__tmp152432
                      (let ((__tmp152433
                             (let ((__tmp152434
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151293_
                                       __id151787
                                       __klass151785
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152434 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152433))))
                 (declare (not safe))
                 (cons __tmp152432 _args151306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152435
                                                        __tmp152431))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152430))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152429
                                     _stx151295_))
                                  (let ((__tmp152438
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151293_
                                            __id151787
                                            __klass151785
                                            '#f)))
                                        (__tmp152437
                                         (length (##structure-ref
                                                  _klass151298_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151295_
                                     __tmp152438
                                     __tmp152437)))
                              (let ((_$obj151331_
                                     (let ((__tmp152439 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152439))))
                                (let _lp151333_ ((_rest151335_ _args151306_)
                                                 (_initializers151336_ '()))
                                  (let* ((___stx151904151905_ _rest151335_)
                                         (_g151340151361_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx151904151905_)))))
                                    (let ((___kont151906151907_
                                           (lambda (_L151415_
                                                    _L151416_
                                                    _L151417_)
                                             (let* ((_slot151448_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151417_))))
                                                    (_off151450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151298_
                                                        _slot151448_))))
                                               (if _off151450_
                                                   (let ((__tmp152440
                                                          (let ((__tmp152441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151450_ _L151416_))))
                    (declare (not safe))
                    (cons __tmp152441 _initializers151336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151333_
                                                      _L151415_
                                                      __tmp152440))
                                                   (let ((__tmp152442
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151293_
                                                             __id151787
                                                             __klass151785
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151295_
                                                      __tmp152442
                                                      _slot151448_))))))
                                          (___kont151908151909_
                                           (lambda ()
                                             (let ((__tmp152443
                                                    (let ((__tmp152444
                                                           (let ((__tmp152467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152468
                                 (let ((__tmp152470
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151331_ '())))
                                       (__tmp152469
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151308_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152470 __tmp152469))))
                            (declare (not safe))
                            (cons __tmp152468 '())))
                         (__tmp152445
                          (let ((__tmp152446
                                 (let ((__tmp152447
                                        (let ((__tmp152464
                                               (let ((__tmp152465
                                                      (let ((__tmp152466
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151331_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152465 '())))
                                              (__tmp152448
                                               (let ((__tmp152449
                                                      (lambda (_i151375_
                                                               _r151376_)
                                                        (let ((__tmp152450
                                                               (let ((__tmp152451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152461
                                     (let ((__tmp152462
                                            (let ((__tmp152463
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151293_
                                                      __id151787
                                                      __klass151785
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152463 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152462)))
                                    (__tmp152452
                                     (let ((__tmp152458
                                            (let ((__tmp152459
                                                   (let ((__tmp152460
                                                          (car _i151375_)))
                                                     (declare (not safe))
                                                     (cons __tmp152460 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152459)))
                                           (__tmp152453
                                            (let ((__tmp152456
                                                   (let ((__tmp152457
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152457)))
                                                  (__tmp152454
                                                   (let ((__tmp152455
                                                          (cdr _i151375_)))
                                                     (declare (not safe))
                                                     (cons __tmp152455 '()))))
                                              (declare (not safe))
                                              (cons __tmp152456 __tmp152454))))
                                       (declare (not safe))
                                       (cons __tmp152458 __tmp152453))))
                                (declare (not safe))
                                (cons __tmp152461 __tmp152452))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152451))))
                  (declare (not safe))
                  (cons __tmp152450 _r151376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152449
                                                         '()
                                                         _initializers151336_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152464
                                                  __tmp152448))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152447))))
                            (declare (not safe))
                            (cons __tmp152446 '()))))
                     (declare (not safe))
                     (cons __tmp152467 __tmp152445))))
              (declare (not safe))
              (cons '%#let-values __tmp152444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152443
                                                _stx151295_))))
                                          (___kont151910151911_
                                           (lambda ()
                                             (let ((__tmp152471
                                                    (let ((__tmp152472
                                                           (let ((__tmp152486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152487
                                 (let ((__tmp152489
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151331_ '())))
                                       (__tmp152488
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151308_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152489 __tmp152488))))
                            (declare (not safe))
                            (cons __tmp152487 '())))
                         (__tmp152473
                          (let ((__tmp152474
                                 (let ((__tmp152475
                                        (let ((__tmp152479
                                               (let ((__tmp152480
                                                      (let ((__tmp152484
                                                             (let ((__tmp152485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152485)))
                    (__tmp152481
                     (let ((__tmp152482
                            (let ((__tmp152483
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151331_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152483))))
                       (declare (not safe))
                       (cons __tmp152482 _args151306_))))
                (declare (not safe))
                (cons __tmp152484 __tmp152481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152480)))
                                              (__tmp152476
                                               (let ((__tmp152477
                                                      (let ((__tmp152478
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151331_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152477 '()))))
                                          (declare (not safe))
                                          (cons __tmp152479 __tmp152476))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152475))))
                            (declare (not safe))
                            (cons __tmp152474 '()))))
                     (declare (not safe))
                     (cons __tmp152486 __tmp152473))))
              (declare (not safe))
              (cons '%#let-values __tmp152472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152471
                                                _stx151295_)))))
                                      (let* ((_g151338151378_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx151904151905_))
                                                    (___kont151908151909_)
                                                    (___kont151910151911_))))
                                             (___match151941151942_
                                              (lambda (_e151345151383_
                                                       _hd151346151386_
                                                       _tl151347151388_
                                                       _e151348151391_
                                                       _hd151349151394_
                                                       _tl151350151396_
                                                       _e151351151399_
                                                       _hd151352151402_
                                                       _tl151353151404_
                                                       _e151354151407_
                                                       _hd151355151410_
                                                       _tl151356151412_)
                                                (let ((_L151415_
                                                       _tl151356151412_)
                                                      (_L151416_
                                                       _hd151355151410_)
                                                      (_L151417_
                                                       _hd151352151402_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151417_))
                                                      (___kont151906151907_
                                                       _L151415_
                                                       _L151416_
                                                       _L151417_)
                                                      (___kont151910151911_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx151904151905_))
                                            (let ((_e151345151383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx151904151905_))))
                                              (let ((_tl151347151388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151345151383_)))
                                                    (_hd151346151386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151345151383_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151346151386_))
                                                    (let ((_e151348151391_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151346151386_))))
                                                      (let ((_tl151350151396_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151348151391_)))
                    (_hd151349151394_
                     (let () (declare (not safe)) (##car _e151348151391_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151349151394_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151349151394_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151350151396_))
                            (let ((_e151351151399_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151350151396_))))
                              (let ((_tl151353151404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151351151399_)))
                                    (_hd151352151402_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151351151399_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151353151404_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151347151388_))
                                        (let ((_e151354151407_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151347151388_))))
                                          (let ((_tl151356151412_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151354151407_)))
                                                (_hd151355151410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151354151407_))))
                                            (___match151941151942_
                                             _e151345151383_
                                             _hd151346151386_
                                             _tl151347151388_
                                             _e151348151391_
                                             _hd151349151394_
                                             _tl151350151396_
                                             _e151351151399_
                                             _hd151352151402_
                                             _tl151353151404_
                                             _e151354151407_
                                             _hd151355151410_
                                             _tl151356151412_)))
                                        (___kont151910151911_))
                                    (___kont151910151911_))))
                            (___kont151910151911_))
                        (___kont151910151911_))
                    (___kont151910151911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont151910151911_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151338151378_))))))))))))))))))
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
      (lambda (_self151115_ _ctx151116_ _stx151117_ _args151118_)
        (let* ((_g151120151130_
                (lambda (_g151121151127_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151121151127_))))
               (_g151119151168_
                (lambda (_g151121151133_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151121151133_))
                      (let ((_e151123151135_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151121151133_))))
                        (let ((_hd151124151138_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151123151135_)))
                              (_tl151125151140_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151123151135_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151125151140_))
                              ((lambda (_L151143_)
                                 (let* ((_klass151154_
                                         (let ((__tmp152490
                                                (##structure-ref
                                                 _self151115_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151117_
                                            __tmp152490)))
                                        (_field151156_
                                         (let ((__tmp152491
                                                (##structure-ref
                                                 _self151115_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151154_
                                            __tmp152491)))
                                        (_object151158_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx151116_
                                            _L151143_))))
                                   (if (##structure-ref
                                        _klass151154_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152492
                                              (let ((__tmp152501
                                                     (if (##structure-ref
                                                          _self151115_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152493
                                                     (let ((__tmp152498
                                                            (let ((__tmp152499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152500
                                  (##structure-ref
                                   _self151115_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152500 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152499)))
                   (__tmp152494
                    (let ((__tmp152496
                           (let ((__tmp152497
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151156_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152497)))
                          (__tmp152495
                           (let ()
                             (declare (not safe))
                             (cons _object151158_ '()))))
                      (declare (not safe))
                      (cons __tmp152496 __tmp152495))))
               (declare (not safe))
               (cons __tmp152498 __tmp152494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152501
                                                      __tmp152493))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152492
                                          _stx151117_))
                                       (if (##structure-ref
                                            _klass151154_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152502
                                                  (let ((__tmp152511
                                                         (if (##structure-ref
                                                              _self151115_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152503
                                                         (let ((__tmp152508
                                                                (let ((__tmp152509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152510
                                      (##structure-ref
                                       _self151115_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152510 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152509)))
                       (__tmp152504
                        (let ((__tmp152506
                               (let ((__tmp152507
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151156_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152507)))
                              (__tmp152505
                               (let ()
                                 (declare (not safe))
                                 (cons _object151158_ '()))))
                          (declare (not safe))
                          (cons __tmp152506 __tmp152505))))
                   (declare (not safe))
                   (cons __tmp152508 __tmp152504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152511
                                                          __tmp152503))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152502
                                              _stx151117_))
                                           (let ((_$e151161_
                                                  (let ((__tmp152512
                                                         (##structure-ref
                                                          _self151115_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151154_
                                                     __tmp152512))))
                                             (if _$e151161_
                                                 ((lambda (_klass151164_)
                                                    (let ((__tmp152513
                                                           (let ((__tmp152522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151115_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152514
                          (let ((__tmp152519
                                 (let ((__tmp152520
                                        (let ((__tmp152521
                                               (##structure-ref
                                                _self151115_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152521 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152520)))
                                (__tmp152515
                                 (let ((__tmp152517
                                        (let ((__tmp152518
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151156_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152518)))
                                       (__tmp152516
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151158_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152517 __tmp152516))))
                            (declare (not safe))
                            (cons __tmp152519 __tmp152515))))
                     (declare (not safe))
                     (cons __tmp152522 __tmp152514))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152513 _stx151117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151161_)
                                                 (if (##structure-ref
                                                      _self151115_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152523
                                                            (let* ((_$obj151166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152524 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152524)))
                           (__tmp152525
                            (let ((__tmp152565
                                   (let ((__tmp152566
                                          (let ((__tmp152568
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151166_ '())))
                                                (__tmp152567
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151158_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152568 __tmp152567))))
                                     (declare (not safe))
                                     (cons __tmp152566 '())))
                                  (__tmp152526
                                   (let ((__tmp152527
                                          (let ((__tmp152528
                                                 (let ((__tmp152557
                                                        (let ((__tmp152558
                                                               (let ((__tmp152562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152563
                                     (let ((__tmp152564
                                            (##structure-ref
                                             _klass151154_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152564 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152563)))
                             (__tmp152559
                              (let ((__tmp152560
                                     (let ((__tmp152561
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151166_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152561))))
                                (declare (not safe))
                                (cons __tmp152560 '()))))
                         (declare (not safe))
                         (cons __tmp152562 __tmp152559))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152558)))
               (__tmp152529
                (let ((__tmp152546
                       (let ((__tmp152547
                              (let ((__tmp152554
                                     (let ((__tmp152555
                                            (let ((__tmp152556
                                                   (##structure-ref
                                                    _self151115_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152556 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152555)))
                                    (__tmp152548
                                     (let ((__tmp152552
                                            (let ((__tmp152553
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151156_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152553)))
                                           (__tmp152549
                                            (let ((__tmp152550
                                                   (let ((__tmp152551
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152551))))
                                              (declare (not safe))
                                              (cons __tmp152550 '()))))
                                       (declare (not safe))
                                       (cons __tmp152552 __tmp152549))))
                                (declare (not safe))
                                (cons __tmp152554 __tmp152548))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152547)))
                      (__tmp152530
                       (let ((__tmp152531
                              (let ((__tmp152532
                                     (let ((__tmp152544
                                            (let ((__tmp152545
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152545)))
                                           (__tmp152533
                                            (let ((__tmp152541
                                                   (let ((__tmp152542
                                                          (let ((__tmp152543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151115_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152543 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152542)))
                                                  (__tmp152534
                                                   (let ((__tmp152539
                                                          (let ((__tmp152540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151166_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152540)))
                 (__tmp152535
                  (let ((__tmp152536
                         (let ((__tmp152537
                                (let ((__tmp152538
                                       (##structure-ref
                                        _self151115_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152538 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152537))))
                    (declare (not safe))
                    (cons __tmp152536 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152539
                                                           __tmp152535))))
                                              (declare (not safe))
                                              (cons __tmp152541 __tmp152534))))
                                       (declare (not safe))
                                       (cons __tmp152544 __tmp152533))))
                                (declare (not safe))
                                (cons '%#call __tmp152532))))
                         (declare (not safe))
                         (cons __tmp152531 '()))))
                  (declare (not safe))
                  (cons __tmp152546 __tmp152530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152557
                                                         __tmp152529))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152528))))
                                     (declare (not safe))
                                     (cons __tmp152527 '()))))
                              (declare (not safe))
                              (cons __tmp152565 __tmp152526))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152525))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152523 _stx151117_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152569
                                                            (let ((__tmp152570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152576
                                  (let ((__tmp152577
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152577)))
                                 (__tmp152571
                                  (let ((__tmp152572
                                         (let ((__tmp152573
                                                (let ((__tmp152574
                                                       (let ((__tmp152575
                                                              (##structure-ref
                                                               _self151115_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152575
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152574))))
                                           (declare (not safe))
                                           (cons __tmp152573 '()))))
                                    (declare (not safe))
                                    (cons _object151158_ __tmp152572))))
                             (declare (not safe))
                             (cons __tmp152576 __tmp152571))))
                      (declare (not safe))
                      (cons '%#call __tmp152570))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152569 _stx151117_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151124151138_)
                              (let ()
                                (declare (not safe))
                                (_g151120151130_ _g151121151133_)))))
                      (let ()
                        (declare (not safe))
                        (_g151120151130_ _g151121151133_))))))
          (declare (not safe))
          (_g151119151168_ _args151118_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass151789 __method-table151790)
        (let ((__slot151791
               (let ((__slot151794
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151789 'slot))))
                 (if __slot151794
                     __slot151794
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id151792
               (let ((__slot151795
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151789 'id))))
                 (if __slot151795
                     __slot151795
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?151793
               (let ((__slot151796
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151789 'checked?))))
                 (if __slot151796
                     __slot151796
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151115_ _ctx151116_ _stx151117_ _args151118_)
            (let* ((_g151120151130_
                    (lambda (_g151121151127_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151121151127_))))
                   (_g151119151168_
                    (lambda (_g151121151133_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151121151133_))
                          (let ((_e151123151135_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151121151133_))))
                            (let ((_hd151124151138_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151123151135_)))
                                  (_tl151125151140_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151123151135_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151125151140_))
                                  ((lambda (_L151143_)
                                     (let* ((_klass151154_
                                             (let ((__tmp152578
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151115_
                                                       __id151792
                                                       __klass151789
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151117_
                                                __tmp152578)))
                                            (_field151156_
                                             (let ((__tmp152579
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151115_
                                                       __slot151791
                                                       __klass151789
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151154_
                                                __tmp152579)))
                                            (_object151158_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx151116_
                                                _L151143_))))
                                       (if (##structure-ref
                                            _klass151154_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152580
                                                  (let ((__tmp152589
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151115_
                        __checked?151793
                        __klass151789
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp152581
                 (let ((__tmp152586
                        (let ((__tmp152587
                               (let ((__tmp152588
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151115_
                                         __id151792
                                         __klass151789
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp152588 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152587)))
                       (__tmp152582
                        (let ((__tmp152584
                               (let ((__tmp152585
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151156_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152585)))
                              (__tmp152583
                               (let ()
                                 (declare (not safe))
                                 (cons _object151158_ '()))))
                          (declare (not safe))
                          (cons __tmp152584 __tmp152583))))
                   (declare (not safe))
                   (cons __tmp152586 __tmp152582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152589
                                                          __tmp152581))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152580
                                              _stx151117_))
                                           (if (##structure-ref
                                                _klass151154_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152590
                                                      (let ((__tmp152599
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151115_
                            __checked?151793
                            __klass151789
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp152591
                     (let ((__tmp152596
                            (let ((__tmp152597
                                   (let ((__tmp152598
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151115_
                                             __id151792
                                             __klass151789
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp152598 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152597)))
                           (__tmp152592
                            (let ((__tmp152594
                                   (let ((__tmp152595
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151156_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152595)))
                                  (__tmp152593
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151158_ '()))))
                              (declare (not safe))
                              (cons __tmp152594 __tmp152593))))
                       (declare (not safe))
                       (cons __tmp152596 __tmp152592))))
                (declare (not safe))
                (cons __tmp152599 __tmp152591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152590
                                                  _stx151117_))
                                               (let ((_$e151161_
                                                      (let ((__tmp152600
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151115_
                        __slot151791
                        __klass151789
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151154_ __tmp152600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151161_
                                                     ((lambda (_klass151164_)
                                                        (let ((__tmp152601
                                                               (let ((__tmp152610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151115_
                                     __checked?151793
                                     __klass151789
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp152602
                              (let ((__tmp152607
                                     (let ((__tmp152608
                                            (let ((__tmp152609
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151115_
                                                      __id151792
                                                      __klass151789
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152609 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152608)))
                                    (__tmp152603
                                     (let ((__tmp152605
                                            (let ((__tmp152606
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151156_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152606)))
                                           (__tmp152604
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151158_ '()))))
                                       (declare (not safe))
                                       (cons __tmp152605 __tmp152604))))
                                (declare (not safe))
                                (cons __tmp152607 __tmp152603))))
                         (declare (not safe))
                         (cons __tmp152610 __tmp152602))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152601 _stx151117_)))
              _$e151161_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151115_
                                                            __checked?151793
                                                            __klass151789
                                                            '#f))
                                                         (let ((__tmp152611
                                                                (let* ((_$obj151166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152612 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152612)))
                               (__tmp152613
                                (let ((__tmp152653
                                       (let ((__tmp152654
                                              (let ((__tmp152656
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151166_
                                                             '())))
                                                    (__tmp152655
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151158_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp152656
                                                      __tmp152655))))
                                         (declare (not safe))
                                         (cons __tmp152654 '())))
                                      (__tmp152614
                                       (let ((__tmp152615
                                              (let ((__tmp152616
                                                     (let ((__tmp152645
                                                            (let ((__tmp152646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152650
                                  (let ((__tmp152651
                                         (let ((__tmp152652
                                                (##structure-ref
                                                 _klass151154_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp152652 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp152651)))
                                 (__tmp152647
                                  (let ((__tmp152648
                                         (let ((__tmp152649
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151166_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152649))))
                                    (declare (not safe))
                                    (cons __tmp152648 '()))))
                             (declare (not safe))
                             (cons __tmp152650 __tmp152647))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp152646)))
                   (__tmp152617
                    (let ((__tmp152634
                           (let ((__tmp152635
                                  (let ((__tmp152642
                                         (let ((__tmp152643
                                                (let ((__tmp152644
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151115_
                                                          __id151792
                                                          __klass151789
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152644 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152643)))
                                        (__tmp152636
                                         (let ((__tmp152640
                                                (let ((__tmp152641
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151156_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152641)))
                                               (__tmp152637
                                                (let ((__tmp152638
                                                       (let ((__tmp152639
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151166_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152638 '()))))
                                           (declare (not safe))
                                           (cons __tmp152640 __tmp152637))))
                                    (declare (not safe))
                                    (cons __tmp152642 __tmp152636))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152635)))
                          (__tmp152618
                           (let ((__tmp152619
                                  (let ((__tmp152620
                                         (let ((__tmp152632
                                                (let ((__tmp152633
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152633)))
                                               (__tmp152621
                                                (let ((__tmp152629
                                                       (let ((__tmp152630
                                                              (let ((__tmp152631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151115_
                                __id151792
                                __klass151789
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152631 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152630)))
              (__tmp152622
               (let ((__tmp152627
                      (let ((__tmp152628
                             (let ()
                               (declare (not safe))
                               (cons _$obj151166_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152628)))
                     (__tmp152623
                      (let ((__tmp152624
                             (let ((__tmp152625
                                    (let ((__tmp152626
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151115_
                                              __slot151791
                                              __klass151789
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152626 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152625))))
                        (declare (not safe))
                        (cons __tmp152624 '()))))
                 (declare (not safe))
                 (cons __tmp152627 __tmp152623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152629
                                                        __tmp152622))))
                                           (declare (not safe))
                                           (cons __tmp152632 __tmp152621))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152620))))
                             (declare (not safe))
                             (cons __tmp152619 '()))))
                      (declare (not safe))
                      (cons __tmp152634 __tmp152618))))
               (declare (not safe))
               (cons __tmp152645 __tmp152617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152616))))
                                         (declare (not safe))
                                         (cons __tmp152615 '()))))
                                  (declare (not safe))
                                  (cons __tmp152653 __tmp152614))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152613))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152611 _stx151117_))
                 (let ((__tmp152657
                        (let ((__tmp152658
                               (let ((__tmp152664
                                      (let ((__tmp152665
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152665)))
                                     (__tmp152659
                                      (let ((__tmp152660
                                             (let ((__tmp152661
                                                    (let ((__tmp152662
                                                           (let ((__tmp152663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151115_
                             __slot151791
                             __klass151789
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152663 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152661 '()))))
                                        (declare (not safe))
                                        (cons _object151158_ __tmp152660))))
                                 (declare (not safe))
                                 (cons __tmp152664 __tmp152659))))
                          (declare (not safe))
                          (cons '%#call __tmp152658))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152657 _stx151117_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151124151138_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151120151130_ _g151121151133_)))))
                          (let ()
                            (declare (not safe))
                            (_g151120151130_ _g151121151133_))))))
              (declare (not safe))
              (_g151119151168_ _args151118_))))))
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
      (lambda (_self150919_ _ctx150920_ _stx150921_ _args150922_)
        (let* ((_g150924150938_
                (lambda (_g150925150935_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g150925150935_))))
               (_g150923150990_
                (lambda (_g150925150941_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g150925150941_))
                      (let ((_e150928150943_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g150925150941_))))
                        (let ((_hd150929150946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e150928150943_)))
                              (_tl150930150948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e150928150943_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150930150948_))
                              (let ((_e150931150951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150930150948_))))
                                (let ((_hd150932150954_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150931150951_)))
                                      (_tl150933150956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150931150951_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl150933150956_))
                                      ((lambda (_L150959_ _L150960_)
                                         (let* ((_klass150974_
                                                 (let ((__tmp152666
                                                        (##structure-ref
                                                         _self150919_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx150921_
                                                    __tmp152666)))
                                                (_field150976_
                                                 (let ((__tmp152667
                                                        (##structure-ref
                                                         _self150919_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass150974_
                                                    __tmp152667)))
                                                (_object150978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx150920_
                                                    _L150960_)))
                                                (_value150980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx150920_
                                                    _L150959_))))
                                           (if (##structure-ref
                                                _klass150974_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152668
                                                      (let ((__tmp152678
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self150919_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp152669
                     (let ((__tmp152675
                            (let ((__tmp152676
                                   (let ((__tmp152677
                                          (##structure-ref
                                           _self150919_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152677 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152676)))
                           (__tmp152670
                            (let ((__tmp152673
                                   (let ((__tmp152674
                                          (let ()
                                            (declare (not safe))
                                            (cons _field150976_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152674)))
                                  (__tmp152671
                                   (let ((__tmp152672
                                          (let ()
                                            (declare (not safe))
                                            (cons _value150980_ '()))))
                                     (declare (not safe))
                                     (cons _object150978_ __tmp152672))))
                              (declare (not safe))
                              (cons __tmp152673 __tmp152671))))
                       (declare (not safe))
                       (cons __tmp152675 __tmp152670))))
                (declare (not safe))
                (cons __tmp152678 __tmp152669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152668
                                                  _stx150921_))
                                               (if (##structure-ref
                                                    _klass150974_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152679
                                                          (let ((__tmp152689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self150919_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152680
                         (let ((__tmp152686
                                (let ((__tmp152687
                                       (let ((__tmp152688
                                              (##structure-ref
                                               _self150919_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152688 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152687)))
                               (__tmp152681
                                (let ((__tmp152684
                                       (let ((__tmp152685
                                              (let ()
                                                (declare (not safe))
                                                (cons _field150976_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152685)))
                                      (__tmp152682
                                       (let ((__tmp152683
                                              (let ()
                                                (declare (not safe))
                                                (cons _value150980_ '()))))
                                         (declare (not safe))
                                         (cons _object150978_ __tmp152683))))
                                  (declare (not safe))
                                  (cons __tmp152684 __tmp152682))))
                           (declare (not safe))
                           (cons __tmp152686 __tmp152681))))
                    (declare (not safe))
                    (cons __tmp152689 __tmp152680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152679
                                                      _stx150921_))
                                                   (let ((_$e150983_
                                                          (let ((__tmp152690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self150919_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass150974_ __tmp152690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e150983_
                                                         ((lambda (_klass150986_)
                                                            (let ((__tmp152691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152701
                                  (if (##structure-ref
                                       _self150919_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp152692
                                  (let ((__tmp152698
                                         (let ((__tmp152699
                                                (let ((__tmp152700
                                                       (##structure-ref
                                                        _self150919_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp152700 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152699)))
                                        (__tmp152693
                                         (let ((__tmp152696
                                                (let ((__tmp152697
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field150976_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152697)))
                                               (__tmp152694
                                                (let ((__tmp152695
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value150980_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object150978_
                                                        __tmp152695))))
                                           (declare (not safe))
                                           (cons __tmp152696 __tmp152694))))
                                    (declare (not safe))
                                    (cons __tmp152698 __tmp152693))))
                             (declare (not safe))
                             (cons __tmp152701 __tmp152692))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp152691 _stx150921_)))
                  _$e150983_)
                 (if (##structure-ref _self150919_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp152702
                            (let* ((_$obj150988_
                                    (let ((__tmp152703 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp152703)))
                                   (__tmp152704
                                    (let ((__tmp152746
                                           (let ((__tmp152747
                                                  (let ((__tmp152749
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj150988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp152748
                 (let () (declare (not safe)) (cons _object150978_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152749
                                                          __tmp152748))))
                                             (declare (not safe))
                                             (cons __tmp152747 '())))
                                          (__tmp152705
                                           (let ((__tmp152706
                                                  (let ((__tmp152707
                                                         (let ((__tmp152738
                                                                (let ((__tmp152739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152743
                                      (let ((__tmp152744
                                             (let ((__tmp152745
                                                    (##structure-ref
                                                     _klass150974_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp152745 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp152744)))
                                     (__tmp152740
                                      (let ((__tmp152741
                                             (let ((__tmp152742
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj150988_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152742))))
                                        (declare (not safe))
                                        (cons __tmp152741 '()))))
                                 (declare (not safe))
                                 (cons __tmp152743 __tmp152740))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp152739)))
                       (__tmp152708
                        (let ((__tmp152726
                               (let ((__tmp152727
                                      (let ((__tmp152735
                                             (let ((__tmp152736
                                                    (let ((__tmp152737
                                                           (##structure-ref
                                                            _self150919_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp152737 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152736)))
                                            (__tmp152728
                                             (let ((__tmp152733
                                                    (let ((__tmp152734
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field150976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152734)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152729
                                                    (let ((__tmp152731
                                                           (let ((__tmp152732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj150988_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152732)))
                  (__tmp152730
                   (let () (declare (not safe)) (cons _value150980_ '()))))
              (declare (not safe))
              (cons __tmp152731 __tmp152730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152733
                                                     __tmp152729))))
                                        (declare (not safe))
                                        (cons __tmp152735 __tmp152728))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp152727)))
                              (__tmp152709
                               (let ((__tmp152710
                                      (let ((__tmp152711
                                             (let ((__tmp152724
                                                    (let ((__tmp152725
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152725)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152712
                                                    (let ((__tmp152721
                                                           (let ((__tmp152722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152723
                                 (##structure-ref
                                  _self150919_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp152723 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152722)))
                  (__tmp152713
                   (let ((__tmp152719
                          (let ((__tmp152720
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj150988_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp152720)))
                         (__tmp152714
                          (let ((__tmp152716
                                 (let ((__tmp152717
                                        (let ((__tmp152718
                                               (##structure-ref
                                                _self150919_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152718 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp152717)))
                                (__tmp152715
                                 (let ()
                                   (declare (not safe))
                                   (cons _value150980_ '()))))
                            (declare (not safe))
                            (cons __tmp152716 __tmp152715))))
                     (declare (not safe))
                     (cons __tmp152719 __tmp152714))))
              (declare (not safe))
              (cons __tmp152721 __tmp152713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152724
                                                     __tmp152712))))
                                        (declare (not safe))
                                        (cons '%#call __tmp152711))))
                                 (declare (not safe))
                                 (cons __tmp152710 '()))))
                          (declare (not safe))
                          (cons __tmp152726 __tmp152709))))
                   (declare (not safe))
                   (cons __tmp152738 __tmp152708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp152707))))
                                             (declare (not safe))
                                             (cons __tmp152706 '()))))
                                      (declare (not safe))
                                      (cons __tmp152746 __tmp152705))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152704))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152702 _stx150921_))
                     (let ((__tmp152750
                            (let ((__tmp152751
                                   (let ((__tmp152758
                                          (let ((__tmp152759
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp152759)))
                                         (__tmp152752
                                          (let ((__tmp152753
                                                 (let ((__tmp152755
                                                        (let ((__tmp152756
                                                               (let ((__tmp152757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self150919_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp152757 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152756)))
               (__tmp152754
                (let () (declare (not safe)) (cons _value150980_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152755
                                                         __tmp152754))))
                                            (declare (not safe))
                                            (cons _object150978_
                                                  __tmp152753))))
                                     (declare (not safe))
                                     (cons __tmp152758 __tmp152752))))
                              (declare (not safe))
                              (cons '%#call __tmp152751))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152750 _stx150921_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd150932150954_
                                       _hd150929150946_)
                                      (let ()
                                        (declare (not safe))
                                        (_g150924150938_ _g150925150941_)))))
                              (let ()
                                (declare (not safe))
                                (_g150924150938_ _g150925150941_)))))
                      (let ()
                        (declare (not safe))
                        (_g150924150938_ _g150925150941_))))))
          (declare (not safe))
          (_g150923150990_ _args150922_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass151797 __method-table151798)
        (let ((__slot151799
               (let ((__slot151802
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151797 'slot))))
                 (if __slot151802
                     __slot151802
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id151800
               (let ((__slot151803
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151797 'id))))
                 (if __slot151803
                     __slot151803
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?151801
               (let ((__slot151804
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151797 'checked?))))
                 (if __slot151804
                     __slot151804
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self150919_ _ctx150920_ _stx150921_ _args150922_)
            (let* ((_g150924150938_
                    (lambda (_g150925150935_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g150925150935_))))
                   (_g150923150990_
                    (lambda (_g150925150941_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g150925150941_))
                          (let ((_e150928150943_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g150925150941_))))
                            (let ((_hd150929150946_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150928150943_)))
                                  (_tl150930150948_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150928150943_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl150930150948_))
                                  (let ((_e150931150951_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl150930150948_))))
                                    (let ((_hd150932150954_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e150931150951_)))
                                          (_tl150933150956_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e150931150951_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl150933150956_))
                                          ((lambda (_L150959_ _L150960_)
                                             (let* ((_klass150974_
                                                     (let ((__tmp152760
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self150919_
                                                               __id151800
                                                               __klass151797
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx150921_
                                                        __tmp152760)))
                                                    (_field150976_
                                                     (let ((__tmp152761
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self150919_
                                                               __slot151799
                                                               __klass151797
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass150974_
                                                        __tmp152761)))
                                                    (_object150978_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx150920_
                                                        _L150960_)))
                                                    (_value150980_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx150920_
                                                        _L150959_))))
                                               (if (##structure-ref
                                                    _klass150974_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152762
                                                          (let ((__tmp152772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self150919_
                                __checked?151801
                                __klass151797
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152763
                         (let ((__tmp152769
                                (let ((__tmp152770
                                       (let ((__tmp152771
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self150919_
                                                 __id151800
                                                 __klass151797
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp152771 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152770)))
                               (__tmp152764
                                (let ((__tmp152767
                                       (let ((__tmp152768
                                              (let ()
                                                (declare (not safe))
                                                (cons _field150976_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152768)))
                                      (__tmp152765
                                       (let ((__tmp152766
                                              (let ()
                                                (declare (not safe))
                                                (cons _value150980_ '()))))
                                         (declare (not safe))
                                         (cons _object150978_ __tmp152766))))
                                  (declare (not safe))
                                  (cons __tmp152767 __tmp152765))))
                           (declare (not safe))
                           (cons __tmp152769 __tmp152764))))
                    (declare (not safe))
                    (cons __tmp152772 __tmp152763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152762
                                                      _stx150921_))
                                                   (if (##structure-ref
                                                        _klass150974_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp152773
                                                              (let ((__tmp152783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self150919_
                                    __checked?151801
                                    __klass151797
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp152774
                             (let ((__tmp152780
                                    (let ((__tmp152781
                                           (let ((__tmp152782
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self150919_
                                                     __id151800
                                                     __klass151797
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152782 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152781)))
                                   (__tmp152775
                                    (let ((__tmp152778
                                           (let ((__tmp152779
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field150976_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152779)))
                                          (__tmp152776
                                           (let ((__tmp152777
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value150980_ '()))))
                                             (declare (not safe))
                                             (cons _object150978_
                                                   __tmp152777))))
                                      (declare (not safe))
                                      (cons __tmp152778 __tmp152776))))
                               (declare (not safe))
                               (cons __tmp152780 __tmp152775))))
                        (declare (not safe))
                        (cons __tmp152783 __tmp152774))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp152773 _stx150921_))
               (let ((_$e150983_
                      (let ((__tmp152784
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self150919_
                                __slot151799
                                __klass151797
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass150974_
                         __tmp152784))))
                 (if _$e150983_
                     ((lambda (_klass150986_)
                        (let ((__tmp152785
                               (let ((__tmp152795
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self150919_
                                             __checked?151801
                                             __klass151797
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp152786
                                      (let ((__tmp152792
                                             (let ((__tmp152793
                                                    (let ((__tmp152794
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self150919_
                                                              __id151800
                                                              __klass151797
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp152794 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152793)))
                                            (__tmp152787
                                             (let ((__tmp152790
                                                    (let ((__tmp152791
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field150976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152791)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152788
                                                    (let ((__tmp152789
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value150980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object150978_ __tmp152789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152790
                                                     __tmp152788))))
                                        (declare (not safe))
                                        (cons __tmp152792 __tmp152787))))
                                 (declare (not safe))
                                 (cons __tmp152795 __tmp152786))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp152785 _stx150921_)))
                      _$e150983_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self150919_
                            __checked?151801
                            __klass151797
                            '#f))
                         (let ((__tmp152796
                                (let* ((_$obj150988_
                                        (let ((__tmp152797 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp152797)))
                                       (__tmp152798
                                        (let ((__tmp152840
                                               (let ((__tmp152841
                                                      (let ((__tmp152843
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj150988_ '())))
                    (__tmp152842
                     (let () (declare (not safe)) (cons _object150978_ '()))))
                (declare (not safe))
                (cons __tmp152843 __tmp152842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152841 '())))
                                              (__tmp152799
                                               (let ((__tmp152800
                                                      (let ((__tmp152801
                                                             (let ((__tmp152832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152833
                                   (let ((__tmp152837
                                          (let ((__tmp152838
                                                 (let ((__tmp152839
                                                        (##structure-ref
                                                         _klass150974_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp152839 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp152838)))
                                         (__tmp152834
                                          (let ((__tmp152835
                                                 (let ((__tmp152836
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj150988_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152836))))
                                            (declare (not safe))
                                            (cons __tmp152835 '()))))
                                     (declare (not safe))
                                     (cons __tmp152837 __tmp152834))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp152833)))
                           (__tmp152802
                            (let ((__tmp152820
                                   (let ((__tmp152821
                                          (let ((__tmp152829
                                                 (let ((__tmp152830
                                                        (let ((__tmp152831
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self150919_
                          __id151800
                          __klass151797
                          '#f))))
                  (declare (not safe))
                  (cons __tmp152831 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152830)))
                                                (__tmp152822
                                                 (let ((__tmp152827
                                                        (let ((__tmp152828
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field150976_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152828)))
               (__tmp152823
                (let ((__tmp152825
                       (let ((__tmp152826
                              (let ()
                                (declare (not safe))
                                (cons _$obj150988_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152826)))
                      (__tmp152824
                       (let () (declare (not safe)) (cons _value150980_ '()))))
                  (declare (not safe))
                  (cons __tmp152825 __tmp152824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152827
                                                         __tmp152823))))
                                            (declare (not safe))
                                            (cons __tmp152829 __tmp152822))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp152821)))
                                  (__tmp152803
                                   (let ((__tmp152804
                                          (let ((__tmp152805
                                                 (let ((__tmp152818
                                                        (let ((__tmp152819
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp152819)))
               (__tmp152806
                (let ((__tmp152815
                       (let ((__tmp152816
                              (let ((__tmp152817
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self150919_
                                        __id151800
                                        __klass151797
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp152817 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152816)))
                      (__tmp152807
                       (let ((__tmp152813
                              (let ((__tmp152814
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj150988_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152814)))
                             (__tmp152808
                              (let ((__tmp152810
                                     (let ((__tmp152811
                                            (let ((__tmp152812
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self150919_
                                                      __slot151799
                                                      __klass151797
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152812 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp152811)))
                                    (__tmp152809
                                     (let ()
                                       (declare (not safe))
                                       (cons _value150980_ '()))))
                                (declare (not safe))
                                (cons __tmp152810 __tmp152809))))
                         (declare (not safe))
                         (cons __tmp152813 __tmp152808))))
                  (declare (not safe))
                  (cons __tmp152815 __tmp152807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152818
                                                         __tmp152806))))
                                            (declare (not safe))
                                            (cons '%#call __tmp152805))))
                                     (declare (not safe))
                                     (cons __tmp152804 '()))))
                              (declare (not safe))
                              (cons __tmp152820 __tmp152803))))
                       (declare (not safe))
                       (cons __tmp152832 __tmp152802))))
                (declare (not safe))
                (cons '%#if __tmp152801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152800 '()))))
                                          (declare (not safe))
                                          (cons __tmp152840 __tmp152799))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152798))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152796 _stx150921_))
                         (let ((__tmp152844
                                (let ((__tmp152845
                                       (let ((__tmp152852
                                              (let ((__tmp152853
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp152853)))
                                             (__tmp152846
                                              (let ((__tmp152847
                                                     (let ((__tmp152849
                                                            (let ((__tmp152850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152851
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self150919_
                                     __slot151799
                                     __klass151797
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp152851 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152850)))
                   (__tmp152848
                    (let () (declare (not safe)) (cons _value150980_ '()))))
               (declare (not safe))
               (cons __tmp152849 __tmp152848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object150978_
                                                      __tmp152847))))
                                         (declare (not safe))
                                         (cons __tmp152852 __tmp152846))))
                                  (declare (not safe))
                                  (cons '%#call __tmp152845))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp152844
                            _stx150921_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd150932150954_
                                           _hd150929150946_)
                                          (let ()
                                            (declare (not safe))
                                            (_g150924150938_
                                             _g150925150941_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g150924150938_ _g150925150941_)))))
                          (let ()
                            (declare (not safe))
                            (_g150924150938_ _g150925150941_))))))
              (declare (not safe))
              (_g150923150990_ _args150922_))))))
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
      (lambda (_self150752_ _ctx150753_ _stx150754_ _args150755_)
        (let* ((_self150756150765_ _self150752_)
               (_E150758150769_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150756150765_))))
               (_K150759150776_
                (lambda (_inline150772_ _dispatch150773_ _arity150774_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self150752_ _args150755_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx150754_
                         _arity150774_)))
                  (if _inline150772_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp152854
                               (let ((__tmp152855
                                      (_inline150772_ _stx150754_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152855
                                  _stx150754_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx150753_ __tmp152854)))
                      (if _dispatch150773_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch150773_))
                            (let ((__tmp152856
                                   (let ((__tmp152857
                                          (let ((__tmp152858
                                                 (let ((__tmp152859
                                                        (let ((__tmp152860
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch150773_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp152860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152859
                                                         _args150755_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp152858))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp152857
                                      _stx150754_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx150753_ __tmp152856)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx150753_ _stx150754_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150756150765_ 'gxc#!lambda::t))
              (let* ((_e150760150779_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150756150765_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150761150782_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150756150765_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150785_ _e150761150782_)
                     (_e150762150787_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150756150765_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch150790_ _e150762150787_)
                     (_e150763150792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150756150765_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline150795_ _e150763150792_))
                (declare (not safe))
                (_K150759150776_
                 _inline150795_
                 _dispatch150790_
                 _arity150785_))
              (let () (declare (not safe)) (_E150758150769_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150590_ _ctx150591_ _stx150592_ _args150593_)
        (let* ((_self150594150601_ _self150590_)
               (_E150596150605_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150594150601_))))
               (_K150597150619_
                (lambda (_clauses150608_)
                  (let ((_$e150614_
                         (let ((__tmp152861
                                (lambda (_g150609150611_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150609150611_
                                     _args150593_)))))
                           (declare (not safe))
                           (find __tmp152861 _clauses150608_))))
                    (if _$e150614_
                        ((lambda (_clause150617_)
                           (let ((__method152075
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150617_
                                     'optimize-call))))
                             (if __method152075
                                 (__method152075
                                  _clause150617_
                                  _ctx150591_
                                  _stx150592_
                                  _args150593_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150617_
                                          'optimize-call)))))
                         _$e150614_)
                        (let ((__tmp152862
                               (map gxc#!lambda-arity _clauses150608_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150592_
                           __tmp152862)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150594150601_
                 'gxc#!case-lambda::t))
              (let* ((_e150598150622_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150594150601_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150599150625_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150594150601_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses150628_ _e150599150625_))
                (declare (not safe))
                (_K150597150619_ _clauses150628_))
              (let () (declare (not safe)) (_E150596150605_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150404_ _args150405_)
        (let* ((_self150406150413_ _self150404_)
               (_E150408150417_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150406150413_))))
               (_K150409150457_
                (lambda (_arity150420_)
                  (let* ((_arity150421150430_ _arity150420_)
                         (_E150424150434_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150421150430_)))))
                    (let ((_K150428150454_
                           (lambda ()
                             (fx= (length _args150405_) _arity150420_)))
                          (_K150425150440_
                           (lambda (_arity150438_)
                             (fx>= (length _args150405_) _arity150438_))))
                      (let ((_try-match150423150450_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150421150430_))
                                   (let ((_tl150427150445_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150421150430_)))
                                         (_hd150426150443_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150421150430_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150427150445_))
                                         (let ((_arity150448_
                                                _hd150426150443_))
                                           (declare (not safe))
                                           (_K150425150440_ _arity150448_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150424150434_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150424150434_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150421150430_))
                            (let () (declare (not safe)) (_K150428150454_))
                            (let ()
                              (declare (not safe))
                              (_try-match150423150450_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150406150413_ 'gxc#!lambda::t))
              (let* ((_e150410150460_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150406150413_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150411150463_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150406150413_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150466_ _e150411150463_))
                (declare (not safe))
                (_K150409150457_ _arity150466_))
              (let () (declare (not safe)) (_E150408150417_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150288_ _ctx150289_ _stx150290_ _args150291_)
        (let* ((_self150292150300_ _self150288_)
               (_E150294150304_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150292150300_))))
               (_K150295150388_
                (lambda (_dispatch150307_ _table150308_)
                  (let* ((_g150309150318_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150307_)))
                         (_else150311150326_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150307_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx150289_ _stx150290_))))
                         (_K150313150372_
                          (lambda (_main150329_ _keys150330_)
                            (let ((_g152863_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150290_
                                      _args150291_))))
                              (begin
                                (let ((_g152864_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g152863_)
                                             (##vector-length _g152863_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g152864_ 2)))
                                      (error "Context expects 2 values"
                                             _g152864_)))
                                (let ((_pargs150332_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g152863_ 0)))
                                      (_kwargs150333_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g152863_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150329_))
                                    (if _table150308_
                                        (let ((_xargs150340_
                                               (map (lambda (_key150335_)
                                                      (let ((_$e150337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150335_ _kwargs150333_))))
                (if _$e150337_ (values _$e150337_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150330_)))
                                          (for-each
                                           (lambda (_kw150342_)
                                             (if (memq (car _kw150342_)
                                                       _keys150330_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150290_
                                                    _keys150330_
                                                    _kw150342_))))
                                           _kwargs150333_)
                                          (let ((__tmp152865
                                                 (let ((__tmp152866
                                                        (let ((__tmp152867
                                                               (let ((__tmp152872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152873
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150329_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152873)))
                             (__tmp152868
                              (let ((__tmp152870
                                     (let ((__tmp152871
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp152871)))
                                    (__tmp152869
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150332_
                                               _xargs150340_))))
                                (declare (not safe))
                                (cons __tmp152870 __tmp152869))))
                         (declare (not safe))
                         (cons __tmp152872 __tmp152868))))
                  (declare (not safe))
                  (cons '%#call __tmp152867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp152866
                                                    _stx150290_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx150289_
                                             __tmp152865)))
                                        (let* ((_kwt150344_
                                                (let ((__tmp152874
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp152874)))
                                               (_kwvars150347_
                                                (map (lambda (_g152875_)
                                                       (let ((__tmp152876
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp152876)))
                                                     _kwargs150333_))
                                               (_kwbind150352_
                                                (map (lambda (_kw150349_
                                                              _kwvar150350_)
                                                       (let ((__tmp152879
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150350_ '())))
                     (__tmp152877
                      (let ((__tmp152878 (cdr _kw150349_)))
                        (declare (not safe))
                        (cons __tmp152878 '()))))
                 (declare (not safe))
                 (cons __tmp152879 __tmp152877)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150333_
                                                     _kwvars150347_))
                                               (_kwset150357_
                                                (map (lambda (_kw150354_
                                                              _kwvar150355_)
                                                       (let ((__tmp152880
                                                              (let ((__tmp152881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152889
                                    (let ((__tmp152890
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150344_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152890)))
                                   (__tmp152882
                                    (let ((__tmp152886
                                           (let ((__tmp152887
                                                  (let ((__tmp152888
                                                         (car _kw150354_)))
                                                    (declare (not safe))
                                                    (cons __tmp152888 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152887)))
                                          (__tmp152883
                                           (let ((__tmp152884
                                                  (let ((__tmp152885
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152885))))
                                             (declare (not safe))
                                             (cons __tmp152884 '()))))
                                      (declare (not safe))
                                      (cons __tmp152886 __tmp152883))))
                               (declare (not safe))
                               (cons __tmp152889 __tmp152882))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp152881))))
                 (declare (not safe))
                 (cons '%#call __tmp152880)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150333_
                                                     _kwvars150347_))
                                               (_xkwargs150362_
                                                (map (lambda (_kw150359_
                                                              _kwvar150360_)
                                                       (let ((__tmp152893
                                                              (car _kw150359_))
                                                             (__tmp152891
                                                              (let ((__tmp152892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150360_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152892))))
                 (declare (not safe))
                 (cons __tmp152893 __tmp152891)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150333_
                                                     _kwvars150347_))
                                               (_xargs150369_
                                                (map (lambda (_key150364_)
                                                       (let ((_$e150366_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150364_ _xkwargs150362_))))
                 (if _$e150366_ (values _$e150366_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150330_)))
                                          (let ((__tmp152894
                                                 (let ((__tmp152895
                                                        (let ((__tmp152896
                                                               (let ((__tmp152897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152898
                                     (let ((__tmp152899
                                            (let ((__tmp152913
                                                   (let ((__tmp152914
                                                          (let ((__tmp152924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150344_ '())))
                        (__tmp152915
                         (let ((__tmp152916
                                (let ((__tmp152917
                                       (let ((__tmp152918
                                              (let ((__tmp152919
                                                     (let ((__tmp152921
                                                            (let ((__tmp152922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152923 (length _kwargs150333_)))
                             (declare (not safe))
                             (cons __tmp152923 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152922)))
                   (__tmp152920
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp152921 __tmp152920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp152919))))
                                         (declare (not safe))
                                         (cons '%#call __tmp152918))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp152917
                                   _stx150290_))))
                           (declare (not safe))
                           (cons __tmp152916 '()))))
                    (declare (not safe))
                    (cons __tmp152924 __tmp152915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152914 '())))
                                                  (__tmp152900
                                                   (let ((__tmp152901
                                                          (let ((__tmp152902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152903
                                (let ((__tmp152904
                                       (let ((__tmp152905
                                              (let ((__tmp152906
                                                     (let ((__tmp152911
                                                            (let ((__tmp152912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150329_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152912)))
                   (__tmp152907
                    (let ((__tmp152909
                           (let ((__tmp152910
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150344_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152910)))
                          (__tmp152908
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150332_ _xargs150369_))))
                      (declare (not safe))
                      (cons __tmp152909 __tmp152908))))
               (declare (not safe))
               (cons __tmp152911 __tmp152907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp152906))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152905
                                          _stx150290_))))
                                  (declare (not safe))
                                  (cons __tmp152904 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp152903 _kwset150357_))))
                    (declare (not safe))
                    (cons '%#begin __tmp152902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152901 '()))))
                                              (declare (not safe))
                                              (cons __tmp152913 __tmp152900))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp152899))))
                                (declare (not safe))
                                (cons __tmp152898 '()))))
                         (declare (not safe))
                         (cons _kwbind150352_ __tmp152897))))
                  (declare (not safe))
                  (cons '%#let-values __tmp152896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp152895
                                                    _stx150290_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx150289_
                                             __tmp152894)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150309150318_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150314150375_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150309150318_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150315150378_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150309150318_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150381_ _e150315150378_)
                               (_e150316150383_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150309150318_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150386_ _e150316150383_))
                          (declare (not safe))
                          (_K150313150372_ _main150386_ _keys150381_))
                        (let () (declare (not safe)) (_else150311150326_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150292150300_
                 'gxc#!kw-lambda::t))
              (let* ((_e150296150391_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150292150300_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150297150394_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150292150300_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150397_ _e150297150394_)
                     (_e150298150399_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150292150300_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150402_ _e150298150399_))
                (declare (not safe))
                (_K150295150388_ _dispatch150402_ _table150397_))
              (let () (declare (not safe)) (_E150294150304_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx149901_ _args149902_)
        (let _lp149904_ ((_rest149906_ _args149902_)
                         (_pargs149907_ '())
                         (_kwargs149908_ '()))
          (let* ((___stx151955151956_ _rest149906_)
                 (_g149914149966_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx151955151956_)))))
            (let ((___kont151957151958_
                   (lambda (_L150145_ _L150146_)
                     (let ((__tmp152925
                            (let ()
                              (declare (not safe))
                              (cons _L150146_ _pargs149907_))))
                       (declare (not safe))
                       (_lp149904_ _L150145_ __tmp152925 _kwargs149908_))))
                  (___kont151959151960_
                   (lambda (_L150091_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150091_ _pargs149907_))
                             (reverse _kwargs149908_))))
                  (___kont151961151962_
                   (lambda (_L150038_ _L150039_ _L150040_)
                     (let ((_kw150057_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150040_))))
                       (if (assq _kw150057_ _kwargs149908_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx149901_
                              _kw150057_))
                           (let ((__tmp152926
                                  (let ((__tmp152927
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150057_ _L150039_))))
                                    (declare (not safe))
                                    (cons __tmp152927 _kwargs149908_))))
                             (declare (not safe))
                             (_lp149904_
                              _L150038_
                              _pargs149907_
                              __tmp152926))))))
                  (___kont151963151964_
                   (lambda (_L149986_ _L149987_)
                     (let ((__tmp152928
                            (let ()
                              (declare (not safe))
                              (cons _L149987_ _pargs149907_))))
                       (declare (not safe))
                       (_lp149904_ _L149986_ __tmp152928 _kwargs149908_))))
                  (___kont151965151966_
                   (lambda ()
                     (values (reverse _pargs149907_)
                             (reverse _kwargs149908_)))))
              (let* ((_g149913149973_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx151955151956_))
                            (___kont151965151966_)
                            (let () (declare (not safe)) (_g149914149966_)))))
                     (___match152062152063_
                      (lambda (_e149945150006_
                               _hd149946150009_
                               _tl149947150011_
                               _e149948150014_
                               _hd149949150017_
                               _tl149950150019_
                               _e149951150022_
                               _hd149952150025_
                               _tl149953150027_
                               _e149954150030_
                               _hd149955150033_
                               _tl149956150035_)
                        (let ((_L150038_ _tl149956150035_)
                              (_L150039_ _hd149955150033_)
                              (_L150040_ _hd149952150025_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150040_))
                              (___kont151961151962_
                               _L150038_
                               _L150039_
                               _L150040_)
                              (___kont151963151964_
                               _tl149947150011_
                               _hd149946150009_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx151955151956_))
                    (let ((_e149918150110_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx151955151956_))))
                      (let ((_tl149920150115_
                             (let ()
                               (declare (not safe))
                               (##cdr _e149918150110_)))
                            (_hd149919150113_
                             (let ()
                               (declare (not safe))
                               (##car _e149918150110_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd149919150113_))
                            (let ((_e149921150118_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd149919150113_))))
                              (let ((_tl149923150123_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e149921150118_)))
                                    (_hd149922150121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e149921150118_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd149922150121_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd149922150121_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl149923150123_))
                                            (let ((_e149924150126_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl149923150123_))))
                                              (let ((_tl149926150131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e149924150126_)))
                                                    (_hd149925150129_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e149924150126_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd149925150129_))
                                                    (let ((_e149927150134_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd149925150129_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e149927150134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl149926150131_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl149920150115_))
                          (let ((_e149928150137_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl149920150115_))))
                            (let ((_tl149930150142_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e149928150137_)))
                                  (_hd149929150140_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e149928150137_))))
                              (___kont151957151958_
                               _tl149930150142_
                               _hd149929150140_)))
                          (___kont151963151964_
                           _tl149920150115_
                           _hd149919150113_))
                      (___kont151963151964_ _tl149920150115_ _hd149919150113_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e149927150134_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl149926150131_))
                          (___kont151959151960_ _tl149920150115_)
                          (___kont151963151964_
                           _tl149920150115_
                           _hd149919150113_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl149926150131_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl149920150115_))
                              (let ((_e149954150030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl149920150115_))))
                                (let ((_tl149956150035_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e149954150030_)))
                                      (_hd149955150033_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e149954150030_))))
                                  (___match152062152063_
                                   _e149918150110_
                                   _hd149919150113_
                                   _tl149920150115_
                                   _e149921150118_
                                   _hd149922150121_
                                   _tl149923150123_
                                   _e149924150126_
                                   _hd149925150129_
                                   _tl149926150131_
                                   _e149954150030_
                                   _hd149955150033_
                                   _tl149956150035_)))
                              (___kont151963151964_
                               _tl149920150115_
                               _hd149919150113_))
                          (___kont151963151964_
                           _tl149920150115_
                           _hd149919150113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl149926150131_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl149920150115_))
                                                            (let ((_e149954150030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl149920150115_))))
                      (let ((_tl149956150035_
                             (let ()
                               (declare (not safe))
                               (##cdr _e149954150030_)))
                            (_hd149955150033_
                             (let ()
                               (declare (not safe))
                               (##car _e149954150030_))))
                        (___match152062152063_
                         _e149918150110_
                         _hd149919150113_
                         _tl149920150115_
                         _e149921150118_
                         _hd149922150121_
                         _tl149923150123_
                         _e149924150126_
                         _hd149925150129_
                         _tl149926150131_
                         _e149954150030_
                         _hd149955150033_
                         _tl149956150035_)))
                    (___kont151963151964_ _tl149920150115_ _hd149919150113_))
                (___kont151963151964_ _tl149920150115_ _hd149919150113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont151963151964_
                                             _tl149920150115_
                                             _hd149919150113_))
                                        (___kont151963151964_
                                         _tl149920150115_
                                         _hd149919150113_))
                                    (___kont151963151964_
                                     _tl149920150115_
                                     _hd149919150113_))))
                            (___kont151963151964_
                             _tl149920150115_
                             _hd149919150113_))))
                    (let () (declare (not safe)) (_g149913149973_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self149896_ _ctx149897_ _stx149898_ _args149899_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx149897_ _stx149898_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
