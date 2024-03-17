(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710694214)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp152030 (list gxc#::basic-xform::t))
            (__tmp152028
             (let ((__tmp152029
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp152029 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp152030
         '()
         __tmp152028
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args151731_
        (apply make-instance gxc#::optimize-call::t _$args151731_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx151723_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self151726_
                (let ((__obj152025
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj152025))
               (__tmp152031
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self151726_ _stx151723_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp152031
           gxc#current-compile-method
           _self151726_))))
    (define gxc#optimize-call%
      (lambda (_self151577_ _stx151578_)
        (let* ((___stx151776151777_ _stx151578_)
               (_g151581151601_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx151776151777_)))))
          (let ((___kont151778151779_
                 (lambda (_L151645_ _L151646_)
                   (let* ((_rator-id151664_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L151646_)))
                          (_rator-type151666_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id151664_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type151666_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152032
                                  (##structure-ref
                                   _rator-type151666_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id151664_
                              '" => "
                              _rator-type151666_
                              '" "
                              __tmp152032))
                           (let ((_optimized151669_
                                  (let ((__method152026
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type151666_
                                            'optimize-call))))
                                    (if __method152026
                                        (__method152026
                                         _rator-type151666_
                                         _self151577_
                                         _stx151578_
                                         _L151645_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type151666_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type151666_))
                                 _optimized151669_
                                 (let* ((___stx151758151759_ _optimized151669_)
                                        (_g151672151682_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx151758151759_)))))
                                   (let ((___kont151760151761_
                                          (lambda (_L151702_)
                                            (let ((__tmp152033
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L151702_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152033
                                               _stx151578_))))
                                         (___kont151762151763_
                                          (lambda () _optimized151669_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx151758151759_))
                                         (let ((_e151675151694_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx151758151759_))))
                                           (let ((_tl151677151699_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e151675151694_)))
                                                 (_hd151676151697_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e151675151694_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd151676151697_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd151676151697_))
                                                     (___kont151760151761_
                                                      _tl151677151699_)
                                                     (___kont151762151763_))
                                                 (___kont151762151763_))))
                                         (___kont151762151763_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type151666_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self151577_ _stx151578_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx151578_
                                _rator-type151666_)))))))
                (___kont151780151781_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self151577_ _stx151578_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx151776151777_))
                (let ((_e151585151613_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx151776151777_))))
                  (let ((_tl151587151618_
                         (let () (declare (not safe)) (##cdr _e151585151613_)))
                        (_hd151586151616_
                         (let ()
                           (declare (not safe))
                           (##car _e151585151613_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl151587151618_))
                        (let ((_e151588151621_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151587151618_))))
                          (let ((_tl151590151626_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151588151621_)))
                                (_hd151589151624_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151588151621_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd151589151624_))
                                (let ((_e151591151629_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd151589151624_))))
                                  (let ((_tl151593151634_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e151591151629_)))
                                        (_hd151592151632_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e151591151629_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd151592151632_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd151592151632_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl151593151634_))
                                                (let ((_e151594151637_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl151593151634_))))
                                                  (let ((_tl151596151642_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151594151637_)))
                                                        (_hd151595151640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151594151637_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151596151642_))
                                                        (___kont151778151779_
                                                         _tl151590151626_
                                                         _hd151595151640_)
                                                        (___kont151780151781_))))
                                                (___kont151780151781_))
                                            (___kont151780151781_))
                                        (___kont151780151781_))))
                                (___kont151780151781_))))
                        (___kont151780151781_))))
                (___kont151780151781_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self151530_ _ctx151531_ _stx151532_ _args151533_)
        (let* ((_g151535151545_
                (lambda (_g151536151542_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151536151542_))))
               (_g151534151574_
                (lambda (_g151536151548_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151536151548_))
                      (let ((_e151538151550_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151536151548_))))
                        (let ((_hd151539151553_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151538151550_)))
                              (_tl151540151555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151538151550_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151540151555_))
                              ((lambda (_L151558_)
                                 (let* ((_klass151569_
                                         (let ((__tmp152034
                                                (##structure-ref
                                                 _self151530_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151532_
                                            __tmp152034)))
                                        (_object151571_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx151531_
                                            _L151558_))))
                                   (if (##structure-ref
                                        _klass151569_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152035
                                              (let ((__tmp152036
                                                     (let ((__tmp152038
                                                            (let ((__tmp152039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152040
                                  (##structure-ref
                                   _klass151569_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152040 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152039)))
                   (__tmp152037
                    (let () (declare (not safe)) (cons _object151571_ '()))))
               (declare (not safe))
               (cons __tmp152038 __tmp152037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152036))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152035
                                          _stx151532_))
                                       (if (##structure-ref
                                            _klass151569_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152041
                                                  (let ((__tmp152042
                                                         (let ((__tmp152044
                                                                (let ((__tmp152045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152046
                                      (##structure-ref
                                       _klass151569_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152046 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152045)))
                       (__tmp152043
                        (let ()
                          (declare (not safe))
                          (cons _object151571_ '()))))
                   (declare (not safe))
                   (cons __tmp152044 __tmp152043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152042))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152041
                                              _stx151532_))
                                           (let ((__tmp152047
                                                  (let ((__tmp152048
                                                         (let ((__tmp152054
                                                                (let ((__tmp152055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152055)))
                       (__tmp152049
                        (let ((__tmp152051
                               (let ((__tmp152052
                                      (let ((__tmp152053
                                             (##structure-ref
                                              _self151530_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152053 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152052)))
                              (__tmp152050
                               (let ()
                                 (declare (not safe))
                                 (cons _object151571_ '()))))
                          (declare (not safe))
                          (cons __tmp152051 __tmp152050))))
                   (declare (not safe))
                   (cons __tmp152054 __tmp152049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152048))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152047
                                              _stx151532_))))))
                               _hd151539151553_)
                              (let ()
                                (declare (not safe))
                                (_g151535151545_ _g151536151548_)))))
                      (let ()
                        (declare (not safe))
                        (_g151535151545_ _g151536151548_))))))
          (declare (not safe))
          (_g151534151574_ _args151533_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass151733 __method-table151734)
        (let ((__id151735
               (let ((__slot151736
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151733 'id))))
                 (if __slot151736
                     __slot151736
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151530_ _ctx151531_ _stx151532_ _args151533_)
            (let* ((_g151535151545_
                    (lambda (_g151536151542_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151536151542_))))
                   (_g151534151574_
                    (lambda (_g151536151548_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151536151548_))
                          (let ((_e151538151550_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151536151548_))))
                            (let ((_hd151539151553_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151538151550_)))
                                  (_tl151540151555_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151538151550_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151540151555_))
                                  ((lambda (_L151558_)
                                     (let* ((_klass151569_
                                             (let ((__tmp152056
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151530_
                                                       __id151735
                                                       __klass151733
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151532_
                                                __tmp152056)))
                                            (_object151571_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx151531_
                                                _L151558_))))
                                       (if (##structure-ref
                                            _klass151569_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152057
                                                  (let ((__tmp152058
                                                         (let ((__tmp152060
                                                                (let ((__tmp152061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152062
                                      (##structure-ref
                                       _klass151569_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152062 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152061)))
                       (__tmp152059
                        (let ()
                          (declare (not safe))
                          (cons _object151571_ '()))))
                   (declare (not safe))
                   (cons __tmp152060 __tmp152059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152058))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152057
                                              _stx151532_))
                                           (if (##structure-ref
                                                _klass151569_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152063
                                                      (let ((__tmp152064
                                                             (let ((__tmp152066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152067
                                   (let ((__tmp152068
                                          (##structure-ref
                                           _klass151569_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152068 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152067)))
                           (__tmp152065
                            (let ()
                              (declare (not safe))
                              (cons _object151571_ '()))))
                       (declare (not safe))
                       (cons __tmp152066 __tmp152065))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152063
                                                  _stx151532_))
                                               (let ((__tmp152069
                                                      (let ((__tmp152070
                                                             (let ((__tmp152076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152077
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152077)))
                           (__tmp152071
                            (let ((__tmp152073
                                   (let ((__tmp152074
                                          (let ((__tmp152075
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self151530_
                                                    __id151735
                                                    __klass151733
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152075 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152074)))
                                  (__tmp152072
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151571_ '()))))
                              (declare (not safe))
                              (cons __tmp152073 __tmp152072))))
                       (declare (not safe))
                       (cons __tmp152076 __tmp152071))))
                (declare (not safe))
                (cons '%#call __tmp152070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152069
                                                  _stx151532_))))))
                                   _hd151539151553_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151535151545_ _g151536151548_)))))
                          (let ()
                            (declare (not safe))
                            (_g151535151545_ _g151536151548_))))))
              (declare (not safe))
              (_g151534151574_ _args151533_))))))
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
      (lambda (_self151245_ _ctx151246_ _stx151247_ _args151248_)
        (let* ((_klass151250_
                (let ((__tmp152078
                       (##structure-ref _self151245_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx151247_ __tmp152078)))
               (_fields151252_
                (length (##structure-ref _klass151250_ '5 gxc#!class::t '#f)))
               (_args151258_
                (map (lambda (_g151253151255_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx151246_ _g151253151255_)))
                     _args151248_))
               (_inline-make-object151260_
                (let ((__tmp152079
                       (let ((__tmp152085
                              (let ((__tmp152086
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152086)))
                             (__tmp152080
                              (let ((__tmp152082
                                     (let ((__tmp152083
                                            (let ((__tmp152084
                                                   (##structure-ref
                                                    _self151245_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152084 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152083)))
                                    (__tmp152081
                                     (make-list _fields151252_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp152082 __tmp152081))))
                         (declare (not safe))
                         (cons __tmp152085 __tmp152080))))
                  (declare (not safe))
                  (cons '%#call __tmp152079))))
          (let ((_$e151263_
                 (##structure-ref _klass151250_ '6 gxc#!class::t '#f)))
            (if _$e151263_
                ((lambda (_ctor151266_)
                   (let ((_$obj151268_
                          (let ((__tmp152087 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp152087)))
                         (_ctor-impl151269_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass151250_
                             _ctor151266_))))
                     (let ((__tmp152088
                            (let ((__tmp152089
                                   (let ((__tmp152157
                                          (let ((__tmp152158
                                                 (let ((__tmp152160
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151268_
                                                                '())))
                                                       (__tmp152159
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object151260_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp152160
                                                         __tmp152159))))
                                            (declare (not safe))
                                            (cons __tmp152158 '())))
                                         (__tmp152090
                                          (let ((__tmp152091
                                                 (let ((__tmp152092
                                                        (let ((__tmp152096
                                                               (if _ctor-impl151269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152097
                                  (let ((__tmp152101
                                         (let ((__tmp152102
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl151269_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152102)))
                                        (__tmp152098
                                         (let ((__tmp152099
                                                (let ((__tmp152100
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj151268_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152100))))
                                           (declare (not safe))
                                           (cons __tmp152099 _args151258_))))
                                    (declare (not safe))
                                    (cons __tmp152101 __tmp152098))))
                             (declare (not safe))
                             (cons '%#call __tmp152097))
                           (let* ((_$ctor151271_
                                   (let ((__tmp152103 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp152103)))
                                  (__tmp152104
                                   (let ((__tmp152139
                                          (let ((__tmp152140
                                                 (let ((__tmp152156
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor151271_
                                                                '())))
                                                       (__tmp152141
                                                        (let ((__tmp152142
                                                               (let ((__tmp152143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152154
                                     (let ((__tmp152155
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152155)))
                                    (__tmp152144
                                     (let ((__tmp152151
                                            (let ((__tmp152152
                                                   (let ((__tmp152153
                                                          (##structure-ref
                                                           _self151245_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp152153 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152152)))
                                           (__tmp152145
                                            (let ((__tmp152149
                                                   (let ((__tmp152150
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152150)))
                                                  (__tmp152146
                                                   (let ((__tmp152147
                                                          (let ((__tmp152148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor151266_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152147 '()))))
                                              (declare (not safe))
                                              (cons __tmp152149 __tmp152146))))
                                       (declare (not safe))
                                       (cons __tmp152151 __tmp152145))))
                                (declare (not safe))
                                (cons __tmp152154 __tmp152144))))
                         (declare (not safe))
                         (cons '%#call __tmp152143))))
                  (declare (not safe))
                  (cons __tmp152142 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152156
                                                         __tmp152141))))
                                            (declare (not safe))
                                            (cons __tmp152140 '())))
                                         (__tmp152105
                                          (let ((__tmp152106
                                                 (let ((__tmp152107
                                                        (let ((__tmp152137
                                                               (let ((__tmp152138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor151271_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152138)))
                      (__tmp152108
                       (let ((__tmp152130
                              (let ((__tmp152131
                                     (let ((__tmp152135
                                            (let ((__tmp152136
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor151271_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152136)))
                                           (__tmp152132
                                            (let ((__tmp152133
                                                   (let ((__tmp152134
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152134))))
                                              (declare (not safe))
                                              (cons __tmp152133
                                                    _args151258_))))
                                       (declare (not safe))
                                       (cons __tmp152135 __tmp152132))))
                                (declare (not safe))
                                (cons '%#call __tmp152131)))
                             (__tmp152109
                              (let ((__tmp152110
                                     (let ((__tmp152111
                                            (let ((__tmp152128
                                                   (let ((__tmp152129
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152129)))
                                                  (__tmp152112
                                                   (let ((__tmp152126
                                                          (let ((__tmp152127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp152127)))
                 (__tmp152113
                  (let ((__tmp152124
                         (let ((__tmp152125
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152125)))
                        (__tmp152114
                         (let ((__tmp152121
                                (let ((__tmp152122
                                       (let ((__tmp152123
                                              (##structure-ref
                                               _self151245_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152123 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152122)))
                               (__tmp152115
                                (let ((__tmp152119
                                       (let ((__tmp152120
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152120)))
                                      (__tmp152116
                                       (let ((__tmp152117
                                              (let ((__tmp152118
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor151266_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp152118))))
                                         (declare (not safe))
                                         (cons __tmp152117 '()))))
                                  (declare (not safe))
                                  (cons __tmp152119 __tmp152116))))
                           (declare (not safe))
                           (cons __tmp152121 __tmp152115))))
                    (declare (not safe))
                    (cons __tmp152124 __tmp152114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152126
                                                           __tmp152113))))
                                              (declare (not safe))
                                              (cons __tmp152128 __tmp152112))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152111))))
                                (declare (not safe))
                                (cons __tmp152110 '()))))
                         (declare (not safe))
                         (cons __tmp152130 __tmp152109))))
                  (declare (not safe))
                  (cons __tmp152137 __tmp152108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp152107))))
                                            (declare (not safe))
                                            (cons __tmp152106 '()))))
                                     (declare (not safe))
                                     (cons __tmp152139 __tmp152105))))
                             (declare (not safe))
                             (cons '%#let-values __tmp152104))))
                      (__tmp152093
                       (let ((__tmp152094
                              (let ((__tmp152095
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151268_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152095))))
                         (declare (not safe))
                         (cons __tmp152094 '()))))
                  (declare (not safe))
                  (cons __tmp152096 __tmp152093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp152092))))
                                            (declare (not safe))
                                            (cons __tmp152091 '()))))
                                     (declare (not safe))
                                     (cons __tmp152157 __tmp152090))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152089))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152088 _stx151247_))))
                 _$e151263_)
                (let ((_$e151273_
                       (##structure-ref _klass151250_ '10 gxc#!class::t '#f)))
                  (if _$e151273_
                      ((lambda (_metaclass151276_)
                         (let* ((_$obj151278_
                                 (let ((__tmp152161 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152161)))
                                (_metakons151280_
                                 (let ((__tmp152162
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx151247_
                                           _metaclass151276_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152162
                                    'instance-init!))))
                           (let ((__tmp152163
                                  (let ((__tmp152164
                                         (let ((__tmp152195
                                                (let ((__tmp152196
                                                       (let ((__tmp152198
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151278_ '())))
                     (__tmp152197
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object151260_ '()))))
                 (declare (not safe))
                 (cons __tmp152198 __tmp152197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152196 '())))
                                               (__tmp152165
                                                (let ((__tmp152166
                                                       (let ((__tmp152167
                                                              (let ((__tmp152171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons151280_
                                 (let ((__tmp152172
                                        (let ((__tmp152180
                                               (let ((__tmp152181
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons151280_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152181)))
                                              (__tmp152173
                                               (let ((__tmp152177
                                                      (let ((__tmp152178
                                                             (let ((__tmp152179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151245_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152179 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152178)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152174
                                                      (let ((__tmp152175
                                                             (let ((__tmp152176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj151278_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152176))))
                (declare (not safe))
                (cons __tmp152175 _args151258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152177
                                                       __tmp152174))))
                                          (declare (not safe))
                                          (cons __tmp152180 __tmp152173))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152172))
                                 (let ((__tmp152182
                                        (let ((__tmp152193
                                               (let ((__tmp152194
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152194)))
                                              (__tmp152183
                                               (let ((__tmp152190
                                                      (let ((__tmp152191
                                                             (let ((__tmp152192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self151245_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp152192 '()))))
                (declare (not safe))
                (cons '%#ref __tmp152191)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp152184
                                                      (let ((__tmp152188
                                                             (let ((__tmp152189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp152189)))
                    (__tmp152185
                     (let ((__tmp152186
                            (let ((__tmp152187
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151278_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152187))))
                       (declare (not safe))
                       (cons __tmp152186 _args151258_))))
                (declare (not safe))
                (cons __tmp152188 __tmp152185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152190
                                                       __tmp152184))))
                                          (declare (not safe))
                                          (cons __tmp152193 __tmp152183))))
                                   (declare (not safe))
                                   (cons '%#call __tmp152182))))
                            (__tmp152168
                             (let ((__tmp152169
                                    (let ((__tmp152170
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj151278_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152170))))
                               (declare (not safe))
                               (cons __tmp152169 '()))))
                        (declare (not safe))
                        (cons __tmp152171 __tmp152168))))
                 (declare (not safe))
                 (cons '%#begin __tmp152167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152166 '()))))
                                           (declare (not safe))
                                           (cons __tmp152195 __tmp152165))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152164))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152163 _stx151247_))))
                       _$e151273_)
                      (if (##structure-ref _klass151250_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args151258_) _fields151252_)
                              (let ((__tmp152199
                                     (let ((__tmp152200
                                            (let ((__tmp152205
                                                   (let ((__tmp152206
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152206)))
                                                  (__tmp152201
                                                   (let ((__tmp152202
                                                          (let ((__tmp152203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152204
                                (##structure-ref
                                 _self151245_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152204 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152202
                                                           _args151258_))))
                                              (declare (not safe))
                                              (cons __tmp152205 __tmp152201))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152200))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152199
                                 _stx151247_))
                              (let ((__tmp152208
                                     (##structure-ref
                                      _self151245_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152207
                                     (length (##structure-ref
                                              _klass151250_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx151247_
                                 __tmp152208
                                 __tmp152207)))
                          (let ((_$obj151283_
                                 (let ((__tmp152209 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152209))))
                            (let _lp151285_ ((_rest151287_ _args151258_)
                                             (_initializers151288_ '()))
                              (let* ((___stx151814151815_ _rest151287_)
                                     (_g151292151313_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx151814151815_)))))
                                (let ((___kont151816151817_
                                       (lambda (_L151367_ _L151368_ _L151369_)
                                         (let* ((_slot151400_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L151369_))))
                                                (_off151402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151250_
                                                    _slot151400_))))
                                           (if _off151402_
                                               (let ((__tmp152210
                                                      (let ((__tmp152211
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off151402_ _L151368_))))
                (declare (not safe))
                (cons __tmp152211 _initializers151288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp151285_
                                                  _L151367_
                                                  __tmp152210))
                                               (let ((__tmp152212
                                                      (##structure-ref
                                                       _self151245_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx151247_
                                                  __tmp152212
                                                  _slot151400_))))))
                                      (___kont151818151819_
                                       (lambda ()
                                         (let ((__tmp152213
                                                (let ((__tmp152214
                                                       (let ((__tmp152237
                                                              (let ((__tmp152238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152240
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151283_ '())))
                                   (__tmp152239
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151260_ '()))))
                               (declare (not safe))
                               (cons __tmp152240 __tmp152239))))
                        (declare (not safe))
                        (cons __tmp152238 '())))
                     (__tmp152215
                      (let ((__tmp152216
                             (let ((__tmp152217
                                    (let ((__tmp152234
                                           (let ((__tmp152235
                                                  (let ((__tmp152236
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152236))))
                                             (declare (not safe))
                                             (cons __tmp152235 '())))
                                          (__tmp152218
                                           (let ((__tmp152219
                                                  (lambda (_i151327_ _r151328_)
                                                    (let ((__tmp152220
                                                           (let ((__tmp152221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152231
                                 (let ((__tmp152232
                                        (let ((__tmp152233
                                               (##structure-ref
                                                _self151245_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152233 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152232)))
                                (__tmp152222
                                 (let ((__tmp152228
                                        (let ((__tmp152229
                                               (let ((__tmp152230
                                                      (car _i151327_)))
                                                 (declare (not safe))
                                                 (cons __tmp152230 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152229)))
                                       (__tmp152223
                                        (let ((__tmp152226
                                               (let ((__tmp152227
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj151283_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152227)))
                                              (__tmp152224
                                               (let ((__tmp152225
                                                      (cdr _i151327_)))
                                                 (declare (not safe))
                                                 (cons __tmp152225 '()))))
                                          (declare (not safe))
                                          (cons __tmp152226 __tmp152224))))
                                   (declare (not safe))
                                   (cons __tmp152228 __tmp152223))))
                            (declare (not safe))
                            (cons __tmp152231 __tmp152222))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152221))))
              (declare (not safe))
              (cons __tmp152220 _r151328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152219
                                                     '()
                                                     _initializers151288_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152234 __tmp152218))))
                               (declare (not safe))
                               (cons '%#begin __tmp152217))))
                        (declare (not safe))
                        (cons __tmp152216 '()))))
                 (declare (not safe))
                 (cons __tmp152237 __tmp152215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152214))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152213
                                            _stx151247_))))
                                      (___kont151820151821_
                                       (lambda ()
                                         (let ((__tmp152241
                                                (let ((__tmp152242
                                                       (let ((__tmp152256
                                                              (let ((__tmp152257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152259
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj151283_ '())))
                                   (__tmp152258
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object151260_ '()))))
                               (declare (not safe))
                               (cons __tmp152259 __tmp152258))))
                        (declare (not safe))
                        (cons __tmp152257 '())))
                     (__tmp152243
                      (let ((__tmp152244
                             (let ((__tmp152245
                                    (let ((__tmp152249
                                           (let ((__tmp152250
                                                  (let ((__tmp152254
                                                         (let ((__tmp152255
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152255)))
                (__tmp152251
                 (let ((__tmp152252
                        (let ((__tmp152253
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj151283_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152253))))
                   (declare (not safe))
                   (cons __tmp152252 _args151258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152254
                                                          __tmp152251))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152250)))
                                          (__tmp152246
                                           (let ((__tmp152247
                                                  (let ((__tmp152248
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152248))))
                                             (declare (not safe))
                                             (cons __tmp152247 '()))))
                                      (declare (not safe))
                                      (cons __tmp152249 __tmp152246))))
                               (declare (not safe))
                               (cons '%#begin __tmp152245))))
                        (declare (not safe))
                        (cons __tmp152244 '()))))
                 (declare (not safe))
                 (cons __tmp152256 __tmp152243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152242))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152241
                                            _stx151247_)))))
                                  (let* ((_g151290151330_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx151814151815_))
                                                (___kont151818151819_)
                                                (___kont151820151821_))))
                                         (___match151851151852_
                                          (lambda (_e151297151335_
                                                   _hd151298151338_
                                                   _tl151299151340_
                                                   _e151300151343_
                                                   _hd151301151346_
                                                   _tl151302151348_
                                                   _e151303151351_
                                                   _hd151304151354_
                                                   _tl151305151356_
                                                   _e151306151359_
                                                   _hd151307151362_
                                                   _tl151308151364_)
                                            (let ((_L151367_ _tl151308151364_)
                                                  (_L151368_ _hd151307151362_)
                                                  (_L151369_ _hd151304151354_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L151369_))
                                                  (___kont151816151817_
                                                   _L151367_
                                                   _L151368_
                                                   _L151369_)
                                                  (___kont151820151821_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx151814151815_))
                                        (let ((_e151297151335_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx151814151815_))))
                                          (let ((_tl151299151340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151297151335_)))
                                                (_hd151298151338_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151297151335_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd151298151338_))
                                                (let ((_e151300151343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd151298151338_))))
                                                  (let ((_tl151302151348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e151300151343_)))
                                                        (_hd151301151346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e151300151343_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd151301151346_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd151301151346_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl151302151348_))
                        (let ((_e151303151351_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl151302151348_))))
                          (let ((_tl151305151356_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e151303151351_)))
                                (_hd151304151354_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e151303151351_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl151305151356_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl151299151340_))
                                    (let ((_e151306151359_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl151299151340_))))
                                      (let ((_tl151308151364_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e151306151359_)))
                                            (_hd151307151362_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e151306151359_))))
                                        (___match151851151852_
                                         _e151297151335_
                                         _hd151298151338_
                                         _tl151299151340_
                                         _e151300151343_
                                         _hd151301151346_
                                         _tl151302151348_
                                         _e151303151351_
                                         _hd151304151354_
                                         _tl151305151356_
                                         _e151306151359_
                                         _hd151307151362_
                                         _tl151308151364_)))
                                    (___kont151820151821_))
                                (___kont151820151821_))))
                        (___kont151820151821_))
                    (___kont151820151821_))
                (___kont151820151821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont151820151821_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g151290151330_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass151737 __method-table151738)
        (let ((__id151739
               (let ((__slot151740
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151737 'id))))
                 (if __slot151740
                     __slot151740
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151245_ _ctx151246_ _stx151247_ _args151248_)
            (let* ((_klass151250_
                    (let ((__tmp152260
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self151245_
                              __id151739
                              __klass151737
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx151247_ __tmp152260)))
                   (_fields151252_
                    (length (##structure-ref
                             _klass151250_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args151258_
                    (map (lambda (_g151253151255_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx151246_ _g151253151255_)))
                         _args151248_))
                   (_inline-make-object151260_
                    (let ((__tmp152261
                           (let ((__tmp152267
                                  (let ((__tmp152268
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152268)))
                                 (__tmp152262
                                  (let ((__tmp152264
                                         (let ((__tmp152265
                                                (let ((__tmp152266
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151245_
                                                          __id151739
                                                          __klass151737
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152266 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152265)))
                                        (__tmp152263
                                         (make-list
                                          _fields151252_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp152264 __tmp152263))))
                             (declare (not safe))
                             (cons __tmp152267 __tmp152262))))
                      (declare (not safe))
                      (cons '%#call __tmp152261))))
              (let ((_$e151263_
                     (##structure-ref _klass151250_ '6 gxc#!class::t '#f)))
                (if _$e151263_
                    ((lambda (_ctor151266_)
                       (let ((_$obj151268_
                              (let ((__tmp152269 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp152269)))
                             (_ctor-impl151269_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass151250_
                                 _ctor151266_))))
                         (let ((__tmp152270
                                (let ((__tmp152271
                                       (let ((__tmp152339
                                              (let ((__tmp152340
                                                     (let ((__tmp152342
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj151268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152341
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object151260_ '()))))
               (declare (not safe))
               (cons __tmp152342 __tmp152341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152340 '())))
                                             (__tmp152272
                                              (let ((__tmp152273
                                                     (let ((__tmp152274
                                                            (let ((__tmp152278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl151269_
                               (let ((__tmp152279
                                      (let ((__tmp152283
                                             (let ((__tmp152284
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl151269_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152284)))
                                            (__tmp152280
                                             (let ((__tmp152281
                                                    (let ((__tmp152282
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj151268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152281
                                                     _args151258_))))
                                        (declare (not safe))
                                        (cons __tmp152283 __tmp152280))))
                                 (declare (not safe))
                                 (cons '%#call __tmp152279))
                               (let* ((_$ctor151271_
                                       (let ((__tmp152285
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp152285)))
                                      (__tmp152286
                                       (let ((__tmp152321
                                              (let ((__tmp152322
                                                     (let ((__tmp152338
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor151271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp152323
                    (let ((__tmp152324
                           (let ((__tmp152325
                                  (let ((__tmp152336
                                         (let ((__tmp152337
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152337)))
                                        (__tmp152326
                                         (let ((__tmp152333
                                                (let ((__tmp152334
                                                       (let ((__tmp152335
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self151245_
                         __id151739
                         __klass151737
                         '#f))))
                 (declare (not safe))
                 (cons __tmp152335 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152334)))
                                               (__tmp152327
                                                (let ((__tmp152331
                                                       (let ((__tmp152332
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151268_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152332)))
              (__tmp152328
               (let ((__tmp152329
                      (let ((__tmp152330
                             (let ()
                               (declare (not safe))
                               (cons _ctor151266_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152330))))
                 (declare (not safe))
                 (cons __tmp152329 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152331
                                                        __tmp152328))))
                                           (declare (not safe))
                                           (cons __tmp152333 __tmp152327))))
                                    (declare (not safe))
                                    (cons __tmp152336 __tmp152326))))
                             (declare (not safe))
                             (cons '%#call __tmp152325))))
                      (declare (not safe))
                      (cons __tmp152324 '()))))
               (declare (not safe))
               (cons __tmp152338 __tmp152323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152322 '())))
                                             (__tmp152287
                                              (let ((__tmp152288
                                                     (let ((__tmp152289
                                                            (let ((__tmp152319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152320
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor151271_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152320)))
                          (__tmp152290
                           (let ((__tmp152312
                                  (let ((__tmp152313
                                         (let ((__tmp152317
                                                (let ((__tmp152318
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor151271_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152318)))
                                               (__tmp152314
                                                (let ((__tmp152315
                                                       (let ((__tmp152316
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151268_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152316))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152315
                                                        _args151258_))))
                                           (declare (not safe))
                                           (cons __tmp152317 __tmp152314))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152313)))
                                 (__tmp152291
                                  (let ((__tmp152292
                                         (let ((__tmp152293
                                                (let ((__tmp152310
                                                       (let ((__tmp152311
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152311)))
              (__tmp152294
               (let ((__tmp152308
                      (let ((__tmp152309
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp152309)))
                     (__tmp152295
                      (let ((__tmp152306
                             (let ((__tmp152307
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152307)))
                            (__tmp152296
                             (let ((__tmp152303
                                    (let ((__tmp152304
                                           (let ((__tmp152305
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151245_
                                                     __id151739
                                                     __klass151737
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152305 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152304)))
                                   (__tmp152297
                                    (let ((__tmp152301
                                           (let ((__tmp152302
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152302)))
                                          (__tmp152298
                                           (let ((__tmp152299
                                                  (let ((__tmp152300
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor151266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp152300))))
                                             (declare (not safe))
                                             (cons __tmp152299 '()))))
                                      (declare (not safe))
                                      (cons __tmp152301 __tmp152298))))
                               (declare (not safe))
                               (cons __tmp152303 __tmp152297))))
                        (declare (not safe))
                        (cons __tmp152306 __tmp152296))))
                 (declare (not safe))
                 (cons __tmp152308 __tmp152295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152310
                                                        __tmp152294))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152293))))
                                    (declare (not safe))
                                    (cons __tmp152292 '()))))
                             (declare (not safe))
                             (cons __tmp152312 __tmp152291))))
                      (declare (not safe))
                      (cons __tmp152319 __tmp152290))))
               (declare (not safe))
               (cons '%#if __tmp152289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152288 '()))))
                                         (declare (not safe))
                                         (cons __tmp152321 __tmp152287))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp152286))))
                          (__tmp152275
                           (let ((__tmp152276
                                  (let ((__tmp152277
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj151268_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152277))))
                             (declare (not safe))
                             (cons __tmp152276 '()))))
                      (declare (not safe))
                      (cons __tmp152278 __tmp152275))))
               (declare (not safe))
               (cons '%#begin __tmp152274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152273 '()))))
                                         (declare (not safe))
                                         (cons __tmp152339 __tmp152272))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152271))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152270 _stx151247_))))
                     _$e151263_)
                    (let ((_$e151273_
                           (##structure-ref
                            _klass151250_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e151273_
                          ((lambda (_metaclass151276_)
                             (let* ((_$obj151278_
                                     (let ((__tmp152343 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152343)))
                                    (_metakons151280_
                                     (let ((__tmp152344
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx151247_
                                               _metaclass151276_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp152344
                                        'instance-init!))))
                               (let ((__tmp152345
                                      (let ((__tmp152346
                                             (let ((__tmp152377
                                                    (let ((__tmp152378
                                                           (let ((__tmp152380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151278_ '())))
                         (__tmp152379
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object151260_ '()))))
                     (declare (not safe))
                     (cons __tmp152380 __tmp152379))))
              (declare (not safe))
              (cons __tmp152378 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152347
                                                    (let ((__tmp152348
                                                           (let ((__tmp152349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152353
                                 (if _metakons151280_
                                     (let ((__tmp152354
                                            (let ((__tmp152362
                                                   (let ((__tmp152363
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons151280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152363)))
                                                  (__tmp152355
                                                   (let ((__tmp152359
                                                          (let ((__tmp152360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152361
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151245_
                                   __id151739
                                   __klass151737
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152361 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152360)))
                 (__tmp152356
                  (let ((__tmp152357
                         (let ((__tmp152358
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj151278_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp152358))))
                    (declare (not safe))
                    (cons __tmp152357 _args151258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152359
                                                           __tmp152356))))
                                              (declare (not safe))
                                              (cons __tmp152362 __tmp152355))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152354))
                                     (let ((__tmp152364
                                            (let ((__tmp152375
                                                   (let ((__tmp152376
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152376)))
                                                  (__tmp152365
                                                   (let ((__tmp152372
                                                          (let ((__tmp152373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152374
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self151245_
                                   __id151739
                                   __klass151737
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp152374 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152373)))
                 (__tmp152366
                  (let ((__tmp152370
                         (let ((__tmp152371
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152371)))
                        (__tmp152367
                         (let ((__tmp152368
                                (let ((__tmp152369
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj151278_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152369))))
                           (declare (not safe))
                           (cons __tmp152368 _args151258_))))
                    (declare (not safe))
                    (cons __tmp152370 __tmp152367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152372
                                                           __tmp152366))))
                                              (declare (not safe))
                                              (cons __tmp152375 __tmp152365))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152364))))
                                (__tmp152350
                                 (let ((__tmp152351
                                        (let ((__tmp152352
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj151278_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp152352))))
                                   (declare (not safe))
                                   (cons __tmp152351 '()))))
                            (declare (not safe))
                            (cons __tmp152353 __tmp152350))))
                     (declare (not safe))
                     (cons '%#begin __tmp152349))))
              (declare (not safe))
              (cons __tmp152348 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152377
                                                     __tmp152347))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp152346))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152345
                                  _stx151247_))))
                           _$e151273_)
                          (if (##structure-ref
                               _klass151250_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args151258_) _fields151252_)
                                  (let ((__tmp152381
                                         (let ((__tmp152382
                                                (let ((__tmp152387
                                                       (let ((__tmp152388
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152388)))
              (__tmp152383
               (let ((__tmp152384
                      (let ((__tmp152385
                             (let ((__tmp152386
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self151245_
                                       __id151739
                                       __klass151737
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp152386 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152385))))
                 (declare (not safe))
                 (cons __tmp152384 _args151258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152387
                                                        __tmp152383))))
                                           (declare (not safe))
                                           (cons '%#call __tmp152382))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp152381
                                     _stx151247_))
                                  (let ((__tmp152390
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self151245_
                                            __id151739
                                            __klass151737
                                            '#f)))
                                        (__tmp152389
                                         (length (##structure-ref
                                                  _klass151250_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx151247_
                                     __tmp152390
                                     __tmp152389)))
                              (let ((_$obj151283_
                                     (let ((__tmp152391 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp152391))))
                                (let _lp151285_ ((_rest151287_ _args151258_)
                                                 (_initializers151288_ '()))
                                  (let* ((___stx151856151857_ _rest151287_)
                                         (_g151292151313_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx151856151857_)))))
                                    (let ((___kont151858151859_
                                           (lambda (_L151367_
                                                    _L151368_
                                                    _L151369_)
                                             (let* ((_slot151400_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L151369_))))
                                                    (_off151402_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151250_
                                                        _slot151400_))))
                                               (if _off151402_
                                                   (let ((__tmp152392
                                                          (let ((__tmp152393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off151402_ _L151368_))))
                    (declare (not safe))
                    (cons __tmp152393 _initializers151288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp151285_
                                                      _L151367_
                                                      __tmp152392))
                                                   (let ((__tmp152394
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self151245_
                                                             __id151739
                                                             __klass151737
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx151247_
                                                      __tmp152394
                                                      _slot151400_))))))
                                          (___kont151860151861_
                                           (lambda ()
                                             (let ((__tmp152395
                                                    (let ((__tmp152396
                                                           (let ((__tmp152419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152420
                                 (let ((__tmp152422
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151283_ '())))
                                       (__tmp152421
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151260_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152422 __tmp152421))))
                            (declare (not safe))
                            (cons __tmp152420 '())))
                         (__tmp152397
                          (let ((__tmp152398
                                 (let ((__tmp152399
                                        (let ((__tmp152416
                                               (let ((__tmp152417
                                                      (let ((__tmp152418
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151283_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152417 '())))
                                              (__tmp152400
                                               (let ((__tmp152401
                                                      (lambda (_i151327_
                                                               _r151328_)
                                                        (let ((__tmp152402
                                                               (let ((__tmp152403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152413
                                     (let ((__tmp152414
                                            (let ((__tmp152415
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151245_
                                                      __id151739
                                                      __klass151737
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152415 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152414)))
                                    (__tmp152404
                                     (let ((__tmp152410
                                            (let ((__tmp152411
                                                   (let ((__tmp152412
                                                          (car _i151327_)))
                                                     (declare (not safe))
                                                     (cons __tmp152412 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152411)))
                                           (__tmp152405
                                            (let ((__tmp152408
                                                   (let ((__tmp152409
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152409)))
                                                  (__tmp152406
                                                   (let ((__tmp152407
                                                          (cdr _i151327_)))
                                                     (declare (not safe))
                                                     (cons __tmp152407 '()))))
                                              (declare (not safe))
                                              (cons __tmp152408 __tmp152406))))
                                       (declare (not safe))
                                       (cons __tmp152410 __tmp152405))))
                                (declare (not safe))
                                (cons __tmp152413 __tmp152404))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp152403))))
                  (declare (not safe))
                  (cons __tmp152402 _r151328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp152401
                                                         '()
                                                         _initializers151288_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp152416
                                                  __tmp152400))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152399))))
                            (declare (not safe))
                            (cons __tmp152398 '()))))
                     (declare (not safe))
                     (cons __tmp152419 __tmp152397))))
              (declare (not safe))
              (cons '%#let-values __tmp152396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152395
                                                _stx151247_))))
                                          (___kont151862151863_
                                           (lambda ()
                                             (let ((__tmp152423
                                                    (let ((__tmp152424
                                                           (let ((__tmp152438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152439
                                 (let ((__tmp152441
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj151283_ '())))
                                       (__tmp152440
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object151260_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp152441 __tmp152440))))
                            (declare (not safe))
                            (cons __tmp152439 '())))
                         (__tmp152425
                          (let ((__tmp152426
                                 (let ((__tmp152427
                                        (let ((__tmp152431
                                               (let ((__tmp152432
                                                      (let ((__tmp152436
                                                             (let ((__tmp152437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp152437)))
                    (__tmp152433
                     (let ((__tmp152434
                            (let ((__tmp152435
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj151283_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152435))))
                       (declare (not safe))
                       (cons __tmp152434 _args151258_))))
                (declare (not safe))
                (cons __tmp152436 __tmp152433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp152432)))
                                              (__tmp152428
                                               (let ((__tmp152429
                                                      (let ((__tmp152430
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151283_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp152430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152429 '()))))
                                          (declare (not safe))
                                          (cons __tmp152431 __tmp152428))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp152427))))
                            (declare (not safe))
                            (cons __tmp152426 '()))))
                     (declare (not safe))
                     (cons __tmp152438 __tmp152425))))
              (declare (not safe))
              (cons '%#let-values __tmp152424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152423
                                                _stx151247_)))))
                                      (let* ((_g151290151330_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx151856151857_))
                                                    (___kont151860151861_)
                                                    (___kont151862151863_))))
                                             (___match151893151894_
                                              (lambda (_e151297151335_
                                                       _hd151298151338_
                                                       _tl151299151340_
                                                       _e151300151343_
                                                       _hd151301151346_
                                                       _tl151302151348_
                                                       _e151303151351_
                                                       _hd151304151354_
                                                       _tl151305151356_
                                                       _e151306151359_
                                                       _hd151307151362_
                                                       _tl151308151364_)
                                                (let ((_L151367_
                                                       _tl151308151364_)
                                                      (_L151368_
                                                       _hd151307151362_)
                                                      (_L151369_
                                                       _hd151304151354_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L151369_))
                                                      (___kont151858151859_
                                                       _L151367_
                                                       _L151368_
                                                       _L151369_)
                                                      (___kont151862151863_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx151856151857_))
                                            (let ((_e151297151335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx151856151857_))))
                                              (let ((_tl151299151340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151297151335_)))
                                                    (_hd151298151338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151297151335_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd151298151338_))
                                                    (let ((_e151300151343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151298151338_))))
                                                      (let ((_tl151302151348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e151300151343_)))
                    (_hd151301151346_
                     (let () (declare (not safe)) (##car _e151300151343_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd151301151346_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd151301151346_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl151302151348_))
                            (let ((_e151303151351_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl151302151348_))))
                              (let ((_tl151305151356_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151303151351_)))
                                    (_hd151304151354_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151303151351_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl151305151356_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl151299151340_))
                                        (let ((_e151306151359_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl151299151340_))))
                                          (let ((_tl151308151364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e151306151359_)))
                                                (_hd151307151362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e151306151359_))))
                                            (___match151893151894_
                                             _e151297151335_
                                             _hd151298151338_
                                             _tl151299151340_
                                             _e151300151343_
                                             _hd151301151346_
                                             _tl151302151348_
                                             _e151303151351_
                                             _hd151304151354_
                                             _tl151305151356_
                                             _e151306151359_
                                             _hd151307151362_
                                             _tl151308151364_)))
                                        (___kont151862151863_))
                                    (___kont151862151863_))))
                            (___kont151862151863_))
                        (___kont151862151863_))
                    (___kont151862151863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont151862151863_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g151290151330_))))))))))))))))))
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
      (lambda (_self151067_ _ctx151068_ _stx151069_ _args151070_)
        (let* ((_g151072151082_
                (lambda (_g151073151079_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151073151079_))))
               (_g151071151120_
                (lambda (_g151073151085_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151073151085_))
                      (let ((_e151075151087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151073151085_))))
                        (let ((_hd151076151090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151075151087_)))
                              (_tl151077151092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151075151087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151077151092_))
                              ((lambda (_L151095_)
                                 (let* ((_klass151106_
                                         (let ((__tmp152442
                                                (##structure-ref
                                                 _self151067_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151069_
                                            __tmp152442)))
                                        (_field151108_
                                         (let ((__tmp152443
                                                (##structure-ref
                                                 _self151067_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151106_
                                            __tmp152443)))
                                        (_object151110_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx151068_
                                            _L151095_))))
                                   (if (##structure-ref
                                        _klass151106_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152444
                                              (let ((__tmp152453
                                                     (if (##structure-ref
                                                          _self151067_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp152445
                                                     (let ((__tmp152450
                                                            (let ((__tmp152451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152452
                                  (##structure-ref
                                   _self151067_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152452 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152451)))
                   (__tmp152446
                    (let ((__tmp152448
                           (let ((__tmp152449
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151108_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp152449)))
                          (__tmp152447
                           (let ()
                             (declare (not safe))
                             (cons _object151110_ '()))))
                      (declare (not safe))
                      (cons __tmp152448 __tmp152447))))
               (declare (not safe))
               (cons __tmp152450 __tmp152446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp152453
                                                      __tmp152445))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152444
                                          _stx151069_))
                                       (if (##structure-ref
                                            _klass151106_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152454
                                                  (let ((__tmp152463
                                                         (if (##structure-ref
                                                              _self151067_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp152455
                                                         (let ((__tmp152460
                                                                (let ((__tmp152461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152462
                                      (##structure-ref
                                       _self151067_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152462 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152461)))
                       (__tmp152456
                        (let ((__tmp152458
                               (let ((__tmp152459
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151108_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152459)))
                              (__tmp152457
                               (let ()
                                 (declare (not safe))
                                 (cons _object151110_ '()))))
                          (declare (not safe))
                          (cons __tmp152458 __tmp152457))))
                   (declare (not safe))
                   (cons __tmp152460 __tmp152456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152463
                                                          __tmp152455))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152454
                                              _stx151069_))
                                           (let ((_$e151113_
                                                  (let ((__tmp152464
                                                         (##structure-ref
                                                          _self151067_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151106_
                                                     __tmp152464))))
                                             (if _$e151113_
                                                 ((lambda (_klass151116_)
                                                    (let ((__tmp152465
                                                           (let ((__tmp152474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151067_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp152466
                          (let ((__tmp152471
                                 (let ((__tmp152472
                                        (let ((__tmp152473
                                               (##structure-ref
                                                _self151067_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152473 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152472)))
                                (__tmp152467
                                 (let ((__tmp152469
                                        (let ((__tmp152470
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151108_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152470)))
                                       (__tmp152468
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151110_ '()))))
                                   (declare (not safe))
                                   (cons __tmp152469 __tmp152468))))
                            (declare (not safe))
                            (cons __tmp152471 __tmp152467))))
                     (declare (not safe))
                     (cons __tmp152474 __tmp152466))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp152465 _stx151069_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151113_)
                                                 (if (##structure-ref
                                                      _self151067_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp152475
                                                            (let* ((_$obj151118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152476 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp152476)))
                           (__tmp152477
                            (let ((__tmp152517
                                   (let ((__tmp152518
                                          (let ((__tmp152520
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151118_ '())))
                                                (__tmp152519
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151110_ '()))))
                                            (declare (not safe))
                                            (cons __tmp152520 __tmp152519))))
                                     (declare (not safe))
                                     (cons __tmp152518 '())))
                                  (__tmp152478
                                   (let ((__tmp152479
                                          (let ((__tmp152480
                                                 (let ((__tmp152509
                                                        (let ((__tmp152510
                                                               (let ((__tmp152514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152515
                                     (let ((__tmp152516
                                            (##structure-ref
                                             _klass151106_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp152516 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp152515)))
                             (__tmp152511
                              (let ((__tmp152512
                                     (let ((__tmp152513
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151118_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152513))))
                                (declare (not safe))
                                (cons __tmp152512 '()))))
                         (declare (not safe))
                         (cons __tmp152514 __tmp152511))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp152510)))
               (__tmp152481
                (let ((__tmp152498
                       (let ((__tmp152499
                              (let ((__tmp152506
                                     (let ((__tmp152507
                                            (let ((__tmp152508
                                                   (##structure-ref
                                                    _self151067_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152508 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152507)))
                                    (__tmp152500
                                     (let ((__tmp152504
                                            (let ((__tmp152505
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151108_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152505)))
                                           (__tmp152501
                                            (let ((__tmp152502
                                                   (let ((__tmp152503
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152503))))
                                              (declare (not safe))
                                              (cons __tmp152502 '()))))
                                       (declare (not safe))
                                       (cons __tmp152504 __tmp152501))))
                                (declare (not safe))
                                (cons __tmp152506 __tmp152500))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp152499)))
                      (__tmp152482
                       (let ((__tmp152483
                              (let ((__tmp152484
                                     (let ((__tmp152496
                                            (let ((__tmp152497
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp152497)))
                                           (__tmp152485
                                            (let ((__tmp152493
                                                   (let ((__tmp152494
                                                          (let ((__tmp152495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151067_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp152495 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152494)))
                                                  (__tmp152486
                                                   (let ((__tmp152491
                                                          (let ((__tmp152492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151118_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152492)))
                 (__tmp152487
                  (let ((__tmp152488
                         (let ((__tmp152489
                                (let ((__tmp152490
                                       (##structure-ref
                                        _self151067_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp152490 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp152489))))
                    (declare (not safe))
                    (cons __tmp152488 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152491
                                                           __tmp152487))))
                                              (declare (not safe))
                                              (cons __tmp152493 __tmp152486))))
                                       (declare (not safe))
                                       (cons __tmp152496 __tmp152485))))
                                (declare (not safe))
                                (cons '%#call __tmp152484))))
                         (declare (not safe))
                         (cons __tmp152483 '()))))
                  (declare (not safe))
                  (cons __tmp152498 __tmp152482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152509
                                                         __tmp152481))))
                                            (declare (not safe))
                                            (cons '%#if __tmp152480))))
                                     (declare (not safe))
                                     (cons __tmp152479 '()))))
                              (declare (not safe))
                              (cons __tmp152517 __tmp152478))))
                      (declare (not safe))
                      (cons '%#let-values __tmp152477))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152475 _stx151069_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp152521
                                                            (let ((__tmp152522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152528
                                  (let ((__tmp152529
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp152529)))
                                 (__tmp152523
                                  (let ((__tmp152524
                                         (let ((__tmp152525
                                                (let ((__tmp152526
                                                       (let ((__tmp152527
                                                              (##structure-ref
                                                               _self151067_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp152527
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp152526))))
                                           (declare (not safe))
                                           (cons __tmp152525 '()))))
                                    (declare (not safe))
                                    (cons _object151110_ __tmp152524))))
                             (declare (not safe))
                             (cons __tmp152528 __tmp152523))))
                      (declare (not safe))
                      (cons '%#call __tmp152522))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp152521 _stx151069_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151076151090_)
                              (let ()
                                (declare (not safe))
                                (_g151072151082_ _g151073151085_)))))
                      (let ()
                        (declare (not safe))
                        (_g151072151082_ _g151073151085_))))))
          (declare (not safe))
          (_g151071151120_ _args151070_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass151741 __method-table151742)
        (let ((__slot151743
               (let ((__slot151746
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151741 'slot))))
                 (if __slot151746
                     __slot151746
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id151744
               (let ((__slot151747
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151741 'id))))
                 (if __slot151747
                     __slot151747
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?151745
               (let ((__slot151748
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151741 'checked?))))
                 (if __slot151748
                     __slot151748
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151067_ _ctx151068_ _stx151069_ _args151070_)
            (let* ((_g151072151082_
                    (lambda (_g151073151079_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151073151079_))))
                   (_g151071151120_
                    (lambda (_g151073151085_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151073151085_))
                          (let ((_e151075151087_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151073151085_))))
                            (let ((_hd151076151090_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151075151087_)))
                                  (_tl151077151092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151075151087_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151077151092_))
                                  ((lambda (_L151095_)
                                     (let* ((_klass151106_
                                             (let ((__tmp152530
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151067_
                                                       __id151744
                                                       __klass151741
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151069_
                                                __tmp152530)))
                                            (_field151108_
                                             (let ((__tmp152531
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151067_
                                                       __slot151743
                                                       __klass151741
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151106_
                                                __tmp152531)))
                                            (_object151110_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx151068_
                                                _L151095_))))
                                       (if (##structure-ref
                                            _klass151106_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152532
                                                  (let ((__tmp152541
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151067_
                        __checked?151745
                        __klass151741
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp152533
                 (let ((__tmp152538
                        (let ((__tmp152539
                               (let ((__tmp152540
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151067_
                                         __id151744
                                         __klass151741
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp152540 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152539)))
                       (__tmp152534
                        (let ((__tmp152536
                               (let ((__tmp152537
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151108_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp152537)))
                              (__tmp152535
                               (let ()
                                 (declare (not safe))
                                 (cons _object151110_ '()))))
                          (declare (not safe))
                          (cons __tmp152536 __tmp152535))))
                   (declare (not safe))
                   (cons __tmp152538 __tmp152534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152541
                                                          __tmp152533))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152532
                                              _stx151069_))
                                           (if (##structure-ref
                                                _klass151106_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152542
                                                      (let ((__tmp152551
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151067_
                            __checked?151745
                            __klass151741
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp152543
                     (let ((__tmp152548
                            (let ((__tmp152549
                                   (let ((__tmp152550
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151067_
                                             __id151744
                                             __klass151741
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp152550 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152549)))
                           (__tmp152544
                            (let ((__tmp152546
                                   (let ((__tmp152547
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151108_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152547)))
                                  (__tmp152545
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151110_ '()))))
                              (declare (not safe))
                              (cons __tmp152546 __tmp152545))))
                       (declare (not safe))
                       (cons __tmp152548 __tmp152544))))
                (declare (not safe))
                (cons __tmp152551 __tmp152543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152542
                                                  _stx151069_))
                                               (let ((_$e151113_
                                                      (let ((__tmp152552
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151067_
                        __slot151743
                        __klass151741
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151106_ __tmp152552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151113_
                                                     ((lambda (_klass151116_)
                                                        (let ((__tmp152553
                                                               (let ((__tmp152562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151067_
                                     __checked?151745
                                     __klass151741
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp152554
                              (let ((__tmp152559
                                     (let ((__tmp152560
                                            (let ((__tmp152561
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151067_
                                                      __id151744
                                                      __klass151741
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152561 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152560)))
                                    (__tmp152555
                                     (let ((__tmp152557
                                            (let ((__tmp152558
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151108_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp152558)))
                                           (__tmp152556
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151110_ '()))))
                                       (declare (not safe))
                                       (cons __tmp152557 __tmp152556))))
                                (declare (not safe))
                                (cons __tmp152559 __tmp152555))))
                         (declare (not safe))
                         (cons __tmp152562 __tmp152554))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp152553 _stx151069_)))
              _$e151113_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151067_
                                                            __checked?151745
                                                            __klass151741
                                                            '#f))
                                                         (let ((__tmp152563
                                                                (let* ((_$obj151118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp152564 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp152564)))
                               (__tmp152565
                                (let ((__tmp152605
                                       (let ((__tmp152606
                                              (let ((__tmp152608
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151118_
                                                             '())))
                                                    (__tmp152607
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151110_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp152608
                                                      __tmp152607))))
                                         (declare (not safe))
                                         (cons __tmp152606 '())))
                                      (__tmp152566
                                       (let ((__tmp152567
                                              (let ((__tmp152568
                                                     (let ((__tmp152597
                                                            (let ((__tmp152598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152602
                                  (let ((__tmp152603
                                         (let ((__tmp152604
                                                (##structure-ref
                                                 _klass151106_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp152604 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp152603)))
                                 (__tmp152599
                                  (let ((__tmp152600
                                         (let ((__tmp152601
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151118_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152601))))
                                    (declare (not safe))
                                    (cons __tmp152600 '()))))
                             (declare (not safe))
                             (cons __tmp152602 __tmp152599))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp152598)))
                   (__tmp152569
                    (let ((__tmp152586
                           (let ((__tmp152587
                                  (let ((__tmp152594
                                         (let ((__tmp152595
                                                (let ((__tmp152596
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151067_
                                                          __id151744
                                                          __klass151741
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp152596 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152595)))
                                        (__tmp152588
                                         (let ((__tmp152592
                                                (let ((__tmp152593
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151108_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152593)))
                                               (__tmp152589
                                                (let ((__tmp152590
                                                       (let ((__tmp152591
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151118_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152590 '()))))
                                           (declare (not safe))
                                           (cons __tmp152592 __tmp152589))))
                                    (declare (not safe))
                                    (cons __tmp152594 __tmp152588))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp152587)))
                          (__tmp152570
                           (let ((__tmp152571
                                  (let ((__tmp152572
                                         (let ((__tmp152584
                                                (let ((__tmp152585
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp152585)))
                                               (__tmp152573
                                                (let ((__tmp152581
                                                       (let ((__tmp152582
                                                              (let ((__tmp152583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151067_
                                __id151744
                                __klass151741
                                '#f))))
                        (declare (not safe))
                        (cons __tmp152583 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp152582)))
              (__tmp152574
               (let ((__tmp152579
                      (let ((__tmp152580
                             (let ()
                               (declare (not safe))
                               (cons _$obj151118_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152580)))
                     (__tmp152575
                      (let ((__tmp152576
                             (let ((__tmp152577
                                    (let ((__tmp152578
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151067_
                                              __slot151743
                                              __klass151741
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp152578 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp152577))))
                        (declare (not safe))
                        (cons __tmp152576 '()))))
                 (declare (not safe))
                 (cons __tmp152579 __tmp152575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152581
                                                        __tmp152574))))
                                           (declare (not safe))
                                           (cons __tmp152584 __tmp152573))))
                                    (declare (not safe))
                                    (cons '%#call __tmp152572))))
                             (declare (not safe))
                             (cons __tmp152571 '()))))
                      (declare (not safe))
                      (cons __tmp152586 __tmp152570))))
               (declare (not safe))
               (cons __tmp152597 __tmp152569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp152568))))
                                         (declare (not safe))
                                         (cons __tmp152567 '()))))
                                  (declare (not safe))
                                  (cons __tmp152605 __tmp152566))))
                          (declare (not safe))
                          (cons '%#let-values __tmp152565))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152563 _stx151069_))
                 (let ((__tmp152609
                        (let ((__tmp152610
                               (let ((__tmp152616
                                      (let ((__tmp152617
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp152617)))
                                     (__tmp152611
                                      (let ((__tmp152612
                                             (let ((__tmp152613
                                                    (let ((__tmp152614
                                                           (let ((__tmp152615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151067_
                             __slot151743
                             __klass151741
                             '#f))))
                     (declare (not safe))
                     (cons __tmp152615 '()))))
              (declare (not safe))
              (cons '%#quote __tmp152614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152613 '()))))
                                        (declare (not safe))
                                        (cons _object151110_ __tmp152612))))
                                 (declare (not safe))
                                 (cons __tmp152616 __tmp152611))))
                          (declare (not safe))
                          (cons '%#call __tmp152610))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp152609 _stx151069_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151076151090_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151072151082_ _g151073151085_)))))
                          (let ()
                            (declare (not safe))
                            (_g151072151082_ _g151073151085_))))))
              (declare (not safe))
              (_g151071151120_ _args151070_))))))
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
      (lambda (_self150871_ _ctx150872_ _stx150873_ _args150874_)
        (let* ((_g150876150890_
                (lambda (_g150877150887_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g150877150887_))))
               (_g150875150942_
                (lambda (_g150877150893_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g150877150893_))
                      (let ((_e150880150895_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g150877150893_))))
                        (let ((_hd150881150898_
                               (let ()
                                 (declare (not safe))
                                 (##car _e150880150895_)))
                              (_tl150882150900_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e150880150895_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150882150900_))
                              (let ((_e150883150903_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150882150900_))))
                                (let ((_hd150884150906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150883150903_)))
                                      (_tl150885150908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150883150903_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl150885150908_))
                                      ((lambda (_L150911_ _L150912_)
                                         (let* ((_klass150926_
                                                 (let ((__tmp152618
                                                        (##structure-ref
                                                         _self150871_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx150873_
                                                    __tmp152618)))
                                                (_field150928_
                                                 (let ((__tmp152619
                                                        (##structure-ref
                                                         _self150871_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass150926_
                                                    __tmp152619)))
                                                (_object150930_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx150872_
                                                    _L150912_)))
                                                (_value150932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx150872_
                                                    _L150911_))))
                                           (if (##structure-ref
                                                _klass150926_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152620
                                                      (let ((__tmp152630
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self150871_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp152621
                     (let ((__tmp152627
                            (let ((__tmp152628
                                   (let ((__tmp152629
                                          (##structure-ref
                                           _self150871_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152629 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152628)))
                           (__tmp152622
                            (let ((__tmp152625
                                   (let ((__tmp152626
                                          (let ()
                                            (declare (not safe))
                                            (cons _field150928_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp152626)))
                                  (__tmp152623
                                   (let ((__tmp152624
                                          (let ()
                                            (declare (not safe))
                                            (cons _value150932_ '()))))
                                     (declare (not safe))
                                     (cons _object150930_ __tmp152624))))
                              (declare (not safe))
                              (cons __tmp152625 __tmp152623))))
                       (declare (not safe))
                       (cons __tmp152627 __tmp152622))))
                (declare (not safe))
                (cons __tmp152630 __tmp152621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152620
                                                  _stx150873_))
                                               (if (##structure-ref
                                                    _klass150926_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152631
                                                          (let ((__tmp152641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self150871_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152632
                         (let ((__tmp152638
                                (let ((__tmp152639
                                       (let ((__tmp152640
                                              (##structure-ref
                                               _self150871_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp152640 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152639)))
                               (__tmp152633
                                (let ((__tmp152636
                                       (let ((__tmp152637
                                              (let ()
                                                (declare (not safe))
                                                (cons _field150928_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152637)))
                                      (__tmp152634
                                       (let ((__tmp152635
                                              (let ()
                                                (declare (not safe))
                                                (cons _value150932_ '()))))
                                         (declare (not safe))
                                         (cons _object150930_ __tmp152635))))
                                  (declare (not safe))
                                  (cons __tmp152636 __tmp152634))))
                           (declare (not safe))
                           (cons __tmp152638 __tmp152633))))
                    (declare (not safe))
                    (cons __tmp152641 __tmp152632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152631
                                                      _stx150873_))
                                                   (let ((_$e150935_
                                                          (let ((__tmp152642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self150871_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass150926_ __tmp152642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e150935_
                                                         ((lambda (_klass150938_)
                                                            (let ((__tmp152643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152653
                                  (if (##structure-ref
                                       _self150871_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp152644
                                  (let ((__tmp152650
                                         (let ((__tmp152651
                                                (let ((__tmp152652
                                                       (##structure-ref
                                                        _self150871_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp152652 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp152651)))
                                        (__tmp152645
                                         (let ((__tmp152648
                                                (let ((__tmp152649
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field150928_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp152649)))
                                               (__tmp152646
                                                (let ((__tmp152647
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value150932_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object150930_
                                                        __tmp152647))))
                                           (declare (not safe))
                                           (cons __tmp152648 __tmp152646))))
                                    (declare (not safe))
                                    (cons __tmp152650 __tmp152645))))
                             (declare (not safe))
                             (cons __tmp152653 __tmp152644))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp152643 _stx150873_)))
                  _$e150935_)
                 (if (##structure-ref _self150871_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp152654
                            (let* ((_$obj150940_
                                    (let ((__tmp152655 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp152655)))
                                   (__tmp152656
                                    (let ((__tmp152698
                                           (let ((__tmp152699
                                                  (let ((__tmp152701
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj150940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp152700
                 (let () (declare (not safe)) (cons _object150930_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152701
                                                          __tmp152700))))
                                             (declare (not safe))
                                             (cons __tmp152699 '())))
                                          (__tmp152657
                                           (let ((__tmp152658
                                                  (let ((__tmp152659
                                                         (let ((__tmp152690
                                                                (let ((__tmp152691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152695
                                      (let ((__tmp152696
                                             (let ((__tmp152697
                                                    (##structure-ref
                                                     _klass150926_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp152697 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp152696)))
                                     (__tmp152692
                                      (let ((__tmp152693
                                             (let ((__tmp152694
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj150940_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152694))))
                                        (declare (not safe))
                                        (cons __tmp152693 '()))))
                                 (declare (not safe))
                                 (cons __tmp152695 __tmp152692))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp152691)))
                       (__tmp152660
                        (let ((__tmp152678
                               (let ((__tmp152679
                                      (let ((__tmp152687
                                             (let ((__tmp152688
                                                    (let ((__tmp152689
                                                           (##structure-ref
                                                            _self150871_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp152689 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152688)))
                                            (__tmp152680
                                             (let ((__tmp152685
                                                    (let ((__tmp152686
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field150928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152686)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152681
                                                    (let ((__tmp152683
                                                           (let ((__tmp152684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj150940_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152684)))
                  (__tmp152682
                   (let () (declare (not safe)) (cons _value150932_ '()))))
              (declare (not safe))
              (cons __tmp152683 __tmp152682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152685
                                                     __tmp152681))))
                                        (declare (not safe))
                                        (cons __tmp152687 __tmp152680))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp152679)))
                              (__tmp152661
                               (let ((__tmp152662
                                      (let ((__tmp152663
                                             (let ((__tmp152676
                                                    (let ((__tmp152677
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp152677)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152664
                                                    (let ((__tmp152673
                                                           (let ((__tmp152674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152675
                                 (##structure-ref
                                  _self150871_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp152675 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp152674)))
                  (__tmp152665
                   (let ((__tmp152671
                          (let ((__tmp152672
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj150940_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp152672)))
                         (__tmp152666
                          (let ((__tmp152668
                                 (let ((__tmp152669
                                        (let ((__tmp152670
                                               (##structure-ref
                                                _self150871_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152670 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp152669)))
                                (__tmp152667
                                 (let ()
                                   (declare (not safe))
                                   (cons _value150932_ '()))))
                            (declare (not safe))
                            (cons __tmp152668 __tmp152667))))
                     (declare (not safe))
                     (cons __tmp152671 __tmp152666))))
              (declare (not safe))
              (cons __tmp152673 __tmp152665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152676
                                                     __tmp152664))))
                                        (declare (not safe))
                                        (cons '%#call __tmp152663))))
                                 (declare (not safe))
                                 (cons __tmp152662 '()))))
                          (declare (not safe))
                          (cons __tmp152678 __tmp152661))))
                   (declare (not safe))
                   (cons __tmp152690 __tmp152660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp152659))))
                                             (declare (not safe))
                                             (cons __tmp152658 '()))))
                                      (declare (not safe))
                                      (cons __tmp152698 __tmp152657))))
                              (declare (not safe))
                              (cons '%#let-values __tmp152656))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152654 _stx150873_))
                     (let ((__tmp152702
                            (let ((__tmp152703
                                   (let ((__tmp152710
                                          (let ((__tmp152711
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp152711)))
                                         (__tmp152704
                                          (let ((__tmp152705
                                                 (let ((__tmp152707
                                                        (let ((__tmp152708
                                                               (let ((__tmp152709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self150871_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp152709 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152708)))
               (__tmp152706
                (let () (declare (not safe)) (cons _value150932_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152707
                                                         __tmp152706))))
                                            (declare (not safe))
                                            (cons _object150930_
                                                  __tmp152705))))
                                     (declare (not safe))
                                     (cons __tmp152710 __tmp152704))))
                              (declare (not safe))
                              (cons '%#call __tmp152703))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp152702 _stx150873_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd150884150906_
                                       _hd150881150898_)
                                      (let ()
                                        (declare (not safe))
                                        (_g150876150890_ _g150877150893_)))))
                              (let ()
                                (declare (not safe))
                                (_g150876150890_ _g150877150893_)))))
                      (let ()
                        (declare (not safe))
                        (_g150876150890_ _g150877150893_))))))
          (declare (not safe))
          (_g150875150942_ _args150874_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass151749 __method-table151750)
        (let ((__slot151751
               (let ((__slot151754
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151749 'slot))))
                 (if __slot151754
                     __slot151754
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id151752
               (let ((__slot151755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151749 'id))))
                 (if __slot151755
                     __slot151755
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?151753
               (let ((__slot151756
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass151749 'checked?))))
                 (if __slot151756
                     __slot151756
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self150871_ _ctx150872_ _stx150873_ _args150874_)
            (let* ((_g150876150890_
                    (lambda (_g150877150887_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g150877150887_))))
                   (_g150875150942_
                    (lambda (_g150877150893_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g150877150893_))
                          (let ((_e150880150895_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g150877150893_))))
                            (let ((_hd150881150898_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150880150895_)))
                                  (_tl150882150900_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150880150895_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl150882150900_))
                                  (let ((_e150883150903_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl150882150900_))))
                                    (let ((_hd150884150906_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e150883150903_)))
                                          (_tl150885150908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e150883150903_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl150885150908_))
                                          ((lambda (_L150911_ _L150912_)
                                             (let* ((_klass150926_
                                                     (let ((__tmp152712
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self150871_
                                                               __id151752
                                                               __klass151749
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx150873_
                                                        __tmp152712)))
                                                    (_field150928_
                                                     (let ((__tmp152713
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self150871_
                                                               __slot151751
                                                               __klass151749
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass150926_
                                                        __tmp152713)))
                                                    (_object150930_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx150872_
                                                        _L150912_)))
                                                    (_value150932_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx150872_
                                                        _L150911_))))
                                               (if (##structure-ref
                                                    _klass150926_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp152714
                                                          (let ((__tmp152724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self150871_
                                __checked?151753
                                __klass151749
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp152715
                         (let ((__tmp152721
                                (let ((__tmp152722
                                       (let ((__tmp152723
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self150871_
                                                 __id151752
                                                 __klass151749
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp152723 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp152722)))
                               (__tmp152716
                                (let ((__tmp152719
                                       (let ((__tmp152720
                                              (let ()
                                                (declare (not safe))
                                                (cons _field150928_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp152720)))
                                      (__tmp152717
                                       (let ((__tmp152718
                                              (let ()
                                                (declare (not safe))
                                                (cons _value150932_ '()))))
                                         (declare (not safe))
                                         (cons _object150930_ __tmp152718))))
                                  (declare (not safe))
                                  (cons __tmp152719 __tmp152717))))
                           (declare (not safe))
                           (cons __tmp152721 __tmp152716))))
                    (declare (not safe))
                    (cons __tmp152724 __tmp152715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152714
                                                      _stx150873_))
                                                   (if (##structure-ref
                                                        _klass150926_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp152725
                                                              (let ((__tmp152735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self150871_
                                    __checked?151753
                                    __klass151749
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp152726
                             (let ((__tmp152732
                                    (let ((__tmp152733
                                           (let ((__tmp152734
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self150871_
                                                     __id151752
                                                     __klass151749
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp152734 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152733)))
                                   (__tmp152727
                                    (let ((__tmp152730
                                           (let ((__tmp152731
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field150928_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152731)))
                                          (__tmp152728
                                           (let ((__tmp152729
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value150932_ '()))))
                                             (declare (not safe))
                                             (cons _object150930_
                                                   __tmp152729))))
                                      (declare (not safe))
                                      (cons __tmp152730 __tmp152728))))
                               (declare (not safe))
                               (cons __tmp152732 __tmp152727))))
                        (declare (not safe))
                        (cons __tmp152735 __tmp152726))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp152725 _stx150873_))
               (let ((_$e150935_
                      (let ((__tmp152736
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self150871_
                                __slot151751
                                __klass151749
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass150926_
                         __tmp152736))))
                 (if _$e150935_
                     ((lambda (_klass150938_)
                        (let ((__tmp152737
                               (let ((__tmp152747
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self150871_
                                             __checked?151753
                                             __klass151749
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp152738
                                      (let ((__tmp152744
                                             (let ((__tmp152745
                                                    (let ((__tmp152746
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self150871_
                                                              __id151752
                                                              __klass151749
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp152746 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp152745)))
                                            (__tmp152739
                                             (let ((__tmp152742
                                                    (let ((__tmp152743
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field150928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp152743)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp152740
                                                    (let ((__tmp152741
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value150932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object150930_ __tmp152741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp152742
                                                     __tmp152740))))
                                        (declare (not safe))
                                        (cons __tmp152744 __tmp152739))))
                                 (declare (not safe))
                                 (cons __tmp152747 __tmp152738))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp152737 _stx150873_)))
                      _$e150935_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self150871_
                            __checked?151753
                            __klass151749
                            '#f))
                         (let ((__tmp152748
                                (let* ((_$obj150940_
                                        (let ((__tmp152749 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp152749)))
                                       (__tmp152750
                                        (let ((__tmp152792
                                               (let ((__tmp152793
                                                      (let ((__tmp152795
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj150940_ '())))
                    (__tmp152794
                     (let () (declare (not safe)) (cons _object150930_ '()))))
                (declare (not safe))
                (cons __tmp152795 __tmp152794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152793 '())))
                                              (__tmp152751
                                               (let ((__tmp152752
                                                      (let ((__tmp152753
                                                             (let ((__tmp152784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152785
                                   (let ((__tmp152789
                                          (let ((__tmp152790
                                                 (let ((__tmp152791
                                                        (##structure-ref
                                                         _klass150926_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp152791 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp152790)))
                                         (__tmp152786
                                          (let ((__tmp152787
                                                 (let ((__tmp152788
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj150940_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152788))))
                                            (declare (not safe))
                                            (cons __tmp152787 '()))))
                                     (declare (not safe))
                                     (cons __tmp152789 __tmp152786))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp152785)))
                           (__tmp152754
                            (let ((__tmp152772
                                   (let ((__tmp152773
                                          (let ((__tmp152781
                                                 (let ((__tmp152782
                                                        (let ((__tmp152783
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self150871_
                          __id151752
                          __klass151749
                          '#f))))
                  (declare (not safe))
                  (cons __tmp152783 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp152782)))
                                                (__tmp152774
                                                 (let ((__tmp152779
                                                        (let ((__tmp152780
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field150928_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp152780)))
               (__tmp152775
                (let ((__tmp152777
                       (let ((__tmp152778
                              (let ()
                                (declare (not safe))
                                (cons _$obj150940_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152778)))
                      (__tmp152776
                       (let () (declare (not safe)) (cons _value150932_ '()))))
                  (declare (not safe))
                  (cons __tmp152777 __tmp152776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152779
                                                         __tmp152775))))
                                            (declare (not safe))
                                            (cons __tmp152781 __tmp152774))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp152773)))
                                  (__tmp152755
                                   (let ((__tmp152756
                                          (let ((__tmp152757
                                                 (let ((__tmp152770
                                                        (let ((__tmp152771
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp152771)))
               (__tmp152758
                (let ((__tmp152767
                       (let ((__tmp152768
                              (let ((__tmp152769
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self150871_
                                        __id151752
                                        __klass151749
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp152769 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp152768)))
                      (__tmp152759
                       (let ((__tmp152765
                              (let ((__tmp152766
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj150940_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152766)))
                             (__tmp152760
                              (let ((__tmp152762
                                     (let ((__tmp152763
                                            (let ((__tmp152764
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self150871_
                                                      __slot151751
                                                      __klass151749
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp152764 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp152763)))
                                    (__tmp152761
                                     (let ()
                                       (declare (not safe))
                                       (cons _value150932_ '()))))
                                (declare (not safe))
                                (cons __tmp152762 __tmp152761))))
                         (declare (not safe))
                         (cons __tmp152765 __tmp152760))))
                  (declare (not safe))
                  (cons __tmp152767 __tmp152759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152770
                                                         __tmp152758))))
                                            (declare (not safe))
                                            (cons '%#call __tmp152757))))
                                     (declare (not safe))
                                     (cons __tmp152756 '()))))
                              (declare (not safe))
                              (cons __tmp152772 __tmp152755))))
                       (declare (not safe))
                       (cons __tmp152784 __tmp152754))))
                (declare (not safe))
                (cons '%#if __tmp152753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp152752 '()))))
                                          (declare (not safe))
                                          (cons __tmp152792 __tmp152751))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp152750))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp152748 _stx150873_))
                         (let ((__tmp152796
                                (let ((__tmp152797
                                       (let ((__tmp152804
                                              (let ((__tmp152805
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp152805)))
                                             (__tmp152798
                                              (let ((__tmp152799
                                                     (let ((__tmp152801
                                                            (let ((__tmp152802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152803
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self150871_
                                     __slot151751
                                     __klass151749
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp152803 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152802)))
                   (__tmp152800
                    (let () (declare (not safe)) (cons _value150932_ '()))))
               (declare (not safe))
               (cons __tmp152801 __tmp152800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object150930_
                                                      __tmp152799))))
                                         (declare (not safe))
                                         (cons __tmp152804 __tmp152798))))
                                  (declare (not safe))
                                  (cons '%#call __tmp152797))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp152796
                            _stx150873_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd150884150906_
                                           _hd150881150898_)
                                          (let ()
                                            (declare (not safe))
                                            (_g150876150890_
                                             _g150877150893_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g150876150890_ _g150877150893_)))))
                          (let ()
                            (declare (not safe))
                            (_g150876150890_ _g150877150893_))))))
              (declare (not safe))
              (_g150875150942_ _args150874_))))))
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
      (lambda (_self150704_ _ctx150705_ _stx150706_ _args150707_)
        (let* ((_self150708150717_ _self150704_)
               (_E150710150721_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150708150717_))))
               (_K150711150728_
                (lambda (_inline150724_ _dispatch150725_ _arity150726_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self150704_ _args150707_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx150706_
                         _arity150726_)))
                  (if _inline150724_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp152806
                               (let ((__tmp152807
                                      (_inline150724_ _stx150706_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp152807
                                  _stx150706_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx150705_ __tmp152806)))
                      (if _dispatch150725_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch150725_))
                            (let ((__tmp152808
                                   (let ((__tmp152809
                                          (let ((__tmp152810
                                                 (let ((__tmp152811
                                                        (let ((__tmp152812
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch150725_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp152812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp152811
                                                         _args150707_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp152810))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp152809
                                      _stx150706_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx150705_ __tmp152808)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx150705_ _stx150706_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150708150717_ 'gxc#!lambda::t))
              (let* ((_e150712150731_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150708150717_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150713150734_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150708150717_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150737_ _e150713150734_)
                     (_e150714150739_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150708150717_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch150742_ _e150714150739_)
                     (_e150715150744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150708150717_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline150747_ _e150715150744_))
                (declare (not safe))
                (_K150711150728_
                 _inline150747_
                 _dispatch150742_
                 _arity150737_))
              (let () (declare (not safe)) (_E150710150721_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self150542_ _ctx150543_ _stx150544_ _args150545_)
        (let* ((_self150546150553_ _self150542_)
               (_E150548150557_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150546150553_))))
               (_K150549150571_
                (lambda (_clauses150560_)
                  (let ((_$e150566_
                         (let ((__tmp152813
                                (lambda (_g150561150563_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g150561150563_
                                     _args150545_)))))
                           (declare (not safe))
                           (find __tmp152813 _clauses150560_))))
                    (if _$e150566_
                        ((lambda (_clause150569_)
                           (let ((__method152027
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause150569_
                                     'optimize-call))))
                             (if __method152027
                                 (__method152027
                                  _clause150569_
                                  _ctx150543_
                                  _stx150544_
                                  _args150545_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause150569_
                                          'optimize-call)))))
                         _$e150566_)
                        (let ((__tmp152814
                               (map gxc#!lambda-arity _clauses150560_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx150544_
                           __tmp152814)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150546150553_
                 'gxc#!case-lambda::t))
              (let* ((_e150550150574_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150546150553_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150551150577_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150546150553_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses150580_ _e150551150577_))
                (declare (not safe))
                (_K150549150571_ _clauses150580_))
              (let () (declare (not safe)) (_E150548150557_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self150356_ _args150357_)
        (let* ((_self150358150365_ _self150356_)
               (_E150360150369_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150358150365_))))
               (_K150361150409_
                (lambda (_arity150372_)
                  (let* ((_arity150373150382_ _arity150372_)
                         (_E150376150386_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity150373150382_)))))
                    (let ((_K150380150406_
                           (lambda ()
                             (fx= (length _args150357_) _arity150372_)))
                          (_K150377150392_
                           (lambda (_arity150390_)
                             (fx>= (length _args150357_) _arity150390_))))
                      (let ((_try-match150375150402_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity150373150382_))
                                   (let ((_tl150379150397_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity150373150382_)))
                                         (_hd150378150395_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity150373150382_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl150379150397_))
                                         (let ((_arity150400_
                                                _hd150378150395_))
                                           (declare (not safe))
                                           (_K150377150392_ _arity150400_))
                                         (let ()
                                           (declare (not safe))
                                           (_E150376150386_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E150376150386_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity150373150382_))
                            (let () (declare (not safe)) (_K150380150406_))
                            (let ()
                              (declare (not safe))
                              (_try-match150375150402_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self150358150365_ 'gxc#!lambda::t))
              (let* ((_e150362150412_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150358150365_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150363150415_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150358150365_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity150418_ _e150363150415_))
                (declare (not safe))
                (_K150361150409_ _arity150418_))
              (let () (declare (not safe)) (_E150360150369_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self150240_ _ctx150241_ _stx150242_ _args150243_)
        (let* ((_self150244150252_ _self150240_)
               (_E150246150256_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self150244150252_))))
               (_K150247150340_
                (lambda (_dispatch150259_ _table150260_)
                  (let* ((_g150261150270_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch150259_)))
                         (_else150263150278_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch150259_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx150241_ _stx150242_))))
                         (_K150265150324_
                          (lambda (_main150281_ _keys150282_)
                            (let ((_g152815_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx150242_
                                      _args150243_))))
                              (begin
                                (let ((_g152816_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g152815_)
                                             (##vector-length _g152815_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g152816_ 2)))
                                      (error "Context expects 2 values"
                                             _g152816_)))
                                (let ((_pargs150284_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g152815_ 0)))
                                      (_kwargs150285_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g152815_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main150281_))
                                    (if _table150260_
                                        (let ((_xargs150292_
                                               (map (lambda (_key150287_)
                                                      (let ((_$e150289_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key150287_ _kwargs150285_))))
                (if _$e150289_ (values _$e150289_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys150282_)))
                                          (for-each
                                           (lambda (_kw150294_)
                                             (if (memq (car _kw150294_)
                                                       _keys150282_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx150242_
                                                    _keys150282_
                                                    _kw150294_))))
                                           _kwargs150285_)
                                          (let ((__tmp152817
                                                 (let ((__tmp152818
                                                        (let ((__tmp152819
                                                               (let ((__tmp152824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152825
                                     (let ()
                                       (declare (not safe))
                                       (cons _main150281_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152825)))
                             (__tmp152820
                              (let ((__tmp152822
                                     (let ((__tmp152823
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp152823)))
                                    (__tmp152821
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs150284_
                                               _xargs150292_))))
                                (declare (not safe))
                                (cons __tmp152822 __tmp152821))))
                         (declare (not safe))
                         (cons __tmp152824 __tmp152820))))
                  (declare (not safe))
                  (cons '%#call __tmp152819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp152818
                                                    _stx150242_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx150241_
                                             __tmp152817)))
                                        (let* ((_kwt150296_
                                                (let ((__tmp152826
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp152826)))
                                               (_kwvars150299_
                                                (map (lambda (_g152827_)
                                                       (let ((__tmp152828
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp152828)))
                                                     _kwargs150285_))
                                               (_kwbind150304_
                                                (map (lambda (_kw150301_
                                                              _kwvar150302_)
                                                       (let ((__tmp152831
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar150302_ '())))
                     (__tmp152829
                      (let ((__tmp152830 (cdr _kw150301_)))
                        (declare (not safe))
                        (cons __tmp152830 '()))))
                 (declare (not safe))
                 (cons __tmp152831 __tmp152829)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150285_
                                                     _kwvars150299_))
                                               (_kwset150309_
                                                (map (lambda (_kw150306_
                                                              _kwvar150307_)
                                                       (let ((__tmp152832
                                                              (let ((__tmp152833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152841
                                    (let ((__tmp152842
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt150296_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152842)))
                                   (__tmp152834
                                    (let ((__tmp152838
                                           (let ((__tmp152839
                                                  (let ((__tmp152840
                                                         (car _kw150306_)))
                                                    (declare (not safe))
                                                    (cons __tmp152840 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp152839)))
                                          (__tmp152835
                                           (let ((__tmp152836
                                                  (let ((__tmp152837
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar150307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152837))))
                                             (declare (not safe))
                                             (cons __tmp152836 '()))))
                                      (declare (not safe))
                                      (cons __tmp152838 __tmp152835))))
                               (declare (not safe))
                               (cons __tmp152841 __tmp152834))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp152833))))
                 (declare (not safe))
                 (cons '%#call __tmp152832)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150285_
                                                     _kwvars150299_))
                                               (_xkwargs150314_
                                                (map (lambda (_kw150311_
                                                              _kwvar150312_)
                                                       (let ((__tmp152845
                                                              (car _kw150311_))
                                                             (__tmp152843
                                                              (let ((__tmp152844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar150312_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp152844))))
                 (declare (not safe))
                 (cons __tmp152845 __tmp152843)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs150285_
                                                     _kwvars150299_))
                                               (_xargs150321_
                                                (map (lambda (_key150316_)
                                                       (let ((_$e150318_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key150316_ _xkwargs150314_))))
                 (if _$e150318_ (values _$e150318_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys150282_)))
                                          (let ((__tmp152846
                                                 (let ((__tmp152847
                                                        (let ((__tmp152848
                                                               (let ((__tmp152849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp152850
                                     (let ((__tmp152851
                                            (let ((__tmp152865
                                                   (let ((__tmp152866
                                                          (let ((__tmp152876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt150296_ '())))
                        (__tmp152867
                         (let ((__tmp152868
                                (let ((__tmp152869
                                       (let ((__tmp152870
                                              (let ((__tmp152871
                                                     (let ((__tmp152873
                                                            (let ((__tmp152874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152875 (length _kwargs150285_)))
                             (declare (not safe))
                             (cons __tmp152875 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152874)))
                   (__tmp152872
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp152873 __tmp152872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp152871))))
                                         (declare (not safe))
                                         (cons '%#call __tmp152870))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp152869
                                   _stx150242_))))
                           (declare (not safe))
                           (cons __tmp152868 '()))))
                    (declare (not safe))
                    (cons __tmp152876 __tmp152867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152866 '())))
                                                  (__tmp152852
                                                   (let ((__tmp152853
                                                          (let ((__tmp152854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152855
                                (let ((__tmp152856
                                       (let ((__tmp152857
                                              (let ((__tmp152858
                                                     (let ((__tmp152863
                                                            (let ((__tmp152864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main150281_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp152864)))
                   (__tmp152859
                    (let ((__tmp152861
                           (let ((__tmp152862
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt150296_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp152862)))
                          (__tmp152860
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs150284_ _xargs150321_))))
                      (declare (not safe))
                      (cons __tmp152861 __tmp152860))))
               (declare (not safe))
               (cons __tmp152863 __tmp152859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp152858))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152857
                                          _stx150242_))))
                                  (declare (not safe))
                                  (cons __tmp152856 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp152855 _kwset150309_))))
                    (declare (not safe))
                    (cons '%#begin __tmp152854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152853 '()))))
                                              (declare (not safe))
                                              (cons __tmp152865 __tmp152852))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp152851))))
                                (declare (not safe))
                                (cons __tmp152850 '()))))
                         (declare (not safe))
                         (cons _kwbind150304_ __tmp152849))))
                  (declare (not safe))
                  (cons '%#let-values __tmp152848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp152847
                                                    _stx150242_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx150241_
                                             __tmp152846)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g150261150270_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e150266150327_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150261150270_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e150267150330_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150261150270_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys150333_ _e150267150330_)
                               (_e150268150335_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g150261150270_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main150338_ _e150268150335_))
                          (declare (not safe))
                          (_K150265150324_ _main150338_ _keys150333_))
                        (let () (declare (not safe)) (_else150263150278_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self150244150252_
                 'gxc#!kw-lambda::t))
              (let* ((_e150248150343_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150244150252_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e150249150346_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150244150252_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table150349_ _e150249150346_)
                     (_e150250150351_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self150244150252_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch150354_ _e150250150351_))
                (declare (not safe))
                (_K150247150340_ _dispatch150354_ _table150349_))
              (let () (declare (not safe)) (_E150246150256_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx149853_ _args149854_)
        (let _lp149856_ ((_rest149858_ _args149854_)
                         (_pargs149859_ '())
                         (_kwargs149860_ '()))
          (let* ((___stx151907151908_ _rest149858_)
                 (_g149866149918_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx151907151908_)))))
            (let ((___kont151909151910_
                   (lambda (_L150097_ _L150098_)
                     (let ((__tmp152877
                            (let ()
                              (declare (not safe))
                              (cons _L150098_ _pargs149859_))))
                       (declare (not safe))
                       (_lp149856_ _L150097_ __tmp152877 _kwargs149860_))))
                  (___kont151911151912_
                   (lambda (_L150043_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150043_ _pargs149859_))
                             (reverse _kwargs149860_))))
                  (___kont151913151914_
                   (lambda (_L149990_ _L149991_ _L149992_)
                     (let ((_kw150009_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L149992_))))
                       (if (assq _kw150009_ _kwargs149860_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx149853_
                              _kw150009_))
                           (let ((__tmp152878
                                  (let ((__tmp152879
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150009_ _L149991_))))
                                    (declare (not safe))
                                    (cons __tmp152879 _kwargs149860_))))
                             (declare (not safe))
                             (_lp149856_
                              _L149990_
                              _pargs149859_
                              __tmp152878))))))
                  (___kont151915151916_
                   (lambda (_L149938_ _L149939_)
                     (let ((__tmp152880
                            (let ()
                              (declare (not safe))
                              (cons _L149939_ _pargs149859_))))
                       (declare (not safe))
                       (_lp149856_ _L149938_ __tmp152880 _kwargs149860_))))
                  (___kont151917151918_
                   (lambda ()
                     (values (reverse _pargs149859_)
                             (reverse _kwargs149860_)))))
              (let* ((_g149865149925_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx151907151908_))
                            (___kont151917151918_)
                            (let () (declare (not safe)) (_g149866149918_)))))
                     (___match152014152015_
                      (lambda (_e149897149958_
                               _hd149898149961_
                               _tl149899149963_
                               _e149900149966_
                               _hd149901149969_
                               _tl149902149971_
                               _e149903149974_
                               _hd149904149977_
                               _tl149905149979_
                               _e149906149982_
                               _hd149907149985_
                               _tl149908149987_)
                        (let ((_L149990_ _tl149908149987_)
                              (_L149991_ _hd149907149985_)
                              (_L149992_ _hd149904149977_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L149992_))
                              (___kont151913151914_
                               _L149990_
                               _L149991_
                               _L149992_)
                              (___kont151915151916_
                               _tl149899149963_
                               _hd149898149961_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx151907151908_))
                    (let ((_e149870150062_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx151907151908_))))
                      (let ((_tl149872150067_
                             (let ()
                               (declare (not safe))
                               (##cdr _e149870150062_)))
                            (_hd149871150065_
                             (let ()
                               (declare (not safe))
                               (##car _e149870150062_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd149871150065_))
                            (let ((_e149873150070_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd149871150065_))))
                              (let ((_tl149875150075_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e149873150070_)))
                                    (_hd149874150073_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e149873150070_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd149874150073_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd149874150073_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl149875150075_))
                                            (let ((_e149876150078_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl149875150075_))))
                                              (let ((_tl149878150083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e149876150078_)))
                                                    (_hd149877150081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e149876150078_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd149877150081_))
                                                    (let ((_e149879150086_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd149877150081_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e149879150086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl149878150083_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl149872150067_))
                          (let ((_e149880150089_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl149872150067_))))
                            (let ((_tl149882150094_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e149880150089_)))
                                  (_hd149881150092_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e149880150089_))))
                              (___kont151909151910_
                               _tl149882150094_
                               _hd149881150092_)))
                          (___kont151915151916_
                           _tl149872150067_
                           _hd149871150065_))
                      (___kont151915151916_ _tl149872150067_ _hd149871150065_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e149879150086_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl149878150083_))
                          (___kont151911151912_ _tl149872150067_)
                          (___kont151915151916_
                           _tl149872150067_
                           _hd149871150065_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl149878150083_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl149872150067_))
                              (let ((_e149906149982_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl149872150067_))))
                                (let ((_tl149908149987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e149906149982_)))
                                      (_hd149907149985_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e149906149982_))))
                                  (___match152014152015_
                                   _e149870150062_
                                   _hd149871150065_
                                   _tl149872150067_
                                   _e149873150070_
                                   _hd149874150073_
                                   _tl149875150075_
                                   _e149876150078_
                                   _hd149877150081_
                                   _tl149878150083_
                                   _e149906149982_
                                   _hd149907149985_
                                   _tl149908149987_)))
                              (___kont151915151916_
                               _tl149872150067_
                               _hd149871150065_))
                          (___kont151915151916_
                           _tl149872150067_
                           _hd149871150065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl149878150083_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl149872150067_))
                                                            (let ((_e149906149982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl149872150067_))))
                      (let ((_tl149908149987_
                             (let ()
                               (declare (not safe))
                               (##cdr _e149906149982_)))
                            (_hd149907149985_
                             (let ()
                               (declare (not safe))
                               (##car _e149906149982_))))
                        (___match152014152015_
                         _e149870150062_
                         _hd149871150065_
                         _tl149872150067_
                         _e149873150070_
                         _hd149874150073_
                         _tl149875150075_
                         _e149876150078_
                         _hd149877150081_
                         _tl149878150083_
                         _e149906149982_
                         _hd149907149985_
                         _tl149908149987_)))
                    (___kont151915151916_ _tl149872150067_ _hd149871150065_))
                (___kont151915151916_ _tl149872150067_ _hd149871150065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont151915151916_
                                             _tl149872150067_
                                             _hd149871150065_))
                                        (___kont151915151916_
                                         _tl149872150067_
                                         _hd149871150065_))
                                    (___kont151915151916_
                                     _tl149872150067_
                                     _hd149871150065_))))
                            (___kont151915151916_
                             _tl149872150067_
                             _hd149871150065_))))
                    (let () (declare (not safe)) (_g149865149925_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self149848_ _ctx149849_ _stx149850_ _args149851_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx149849_ _stx149850_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
