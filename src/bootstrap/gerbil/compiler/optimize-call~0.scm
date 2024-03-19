(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710833429)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp155067 (list gxc#::basic-xform::t))
            (__tmp155065
             (let ((__tmp155066
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155066 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp155067
         '()
         __tmp155065
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154768_
        (apply make-instance gxc#::optimize-call::t _$args154768_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx154760_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154763_
                (let ((__obj155062
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj155062))
               (__tmp155068
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154763_ _stx154760_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155068
           gxc#current-compile-method
           _self154763_))))
    (define gxc#optimize-call%
      (lambda (_self154614_ _stx154615_)
        (let* ((___stx154813154814_ _stx154615_)
               (_g154618154638_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154813154814_)))))
          (let ((___kont154815154816_
                 (lambda (_L154682_ _L154683_)
                   (let* ((_rator-id154701_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154683_)))
                          (_rator-type154703_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154701_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154703_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp155069
                                  (##structure-ref
                                   _rator-type154703_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154701_
                              '" => "
                              _rator-type154703_
                              '" "
                              __tmp155069))
                           (let ((_optimized154706_
                                  (let ((__method155063
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154703_
                                            'optimize-call))))
                                    (if __method155063
                                        (__method155063
                                         _rator-type154703_
                                         _self154614_
                                         _stx154615_
                                         _L154682_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154703_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154703_))
                                 _optimized154706_
                                 (let* ((___stx154795154796_ _optimized154706_)
                                        (_g154709154719_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154795154796_)))))
                                   (let ((___kont154797154798_
                                          (lambda (_L154739_)
                                            (let ((__tmp155070
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154739_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp155070
                                               _stx154615_))))
                                         (___kont154799154800_
                                          (lambda () _optimized154706_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154795154796_))
                                         (let ((_e154714154731_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154795154796_))))
                                           (let ((_tl154712154736_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154714154731_)))
                                                 (_hd154713154734_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154714154731_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154713154734_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154713154734_))
                                                     (___kont154797154798_
                                                      _tl154712154736_)
                                                     (___kont154799154800_))
                                                 (___kont154799154800_))))
                                         (___kont154799154800_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154703_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154614_ _stx154615_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154615_
                                _rator-type154703_)))))))
                (___kont154817154818_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154614_ _stx154615_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154813154814_))
                (let ((_e154624154650_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154813154814_))))
                  (let ((_tl154622154655_
                         (let () (declare (not safe)) (##cdr _e154624154650_)))
                        (_hd154623154653_
                         (let ()
                           (declare (not safe))
                           (##car _e154624154650_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154622154655_))
                        (let ((_e154627154658_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154622154655_))))
                          (let ((_tl154625154663_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154627154658_)))
                                (_hd154626154661_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154627154658_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154626154661_))
                                (let ((_e154630154666_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154626154661_))))
                                  (let ((_tl154628154671_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154630154666_)))
                                        (_hd154629154669_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154630154666_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154629154669_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154629154669_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154628154671_))
                                                (let ((_e154633154674_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154628154671_))))
                                                  (let ((_tl154631154679_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154633154674_)))
                                                        (_hd154632154677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154633154674_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154631154679_))
                                                        (___kont154815154816_
                                                         _tl154625154663_
                                                         _hd154632154677_)
                                                        (___kont154817154818_))))
                                                (___kont154817154818_))
                                            (___kont154817154818_))
                                        (___kont154817154818_))))
                                (___kont154817154818_))))
                        (___kont154817154818_))))
                (___kont154817154818_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154567_ _ctx154568_ _stx154569_ _args154570_)
        (let* ((_g154572154582_
                (lambda (_g154573154579_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154573154579_))))
               (_g154571154611_
                (lambda (_g154573154585_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154573154585_))
                      (let ((_e154577154587_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154573154585_))))
                        (let ((_hd154576154590_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154577154587_)))
                              (_tl154575154592_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154577154587_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154575154592_))
                              ((lambda (_L154595_)
                                 (let* ((_klass154606_
                                         (let ((__tmp155071
                                                (##structure-ref
                                                 _self154567_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154569_
                                            __tmp155071)))
                                        (_object154608_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154568_
                                            _L154595_))))
                                   (if (##structure-ref
                                        _klass154606_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155087
                                              (let ((__tmp155088
                                                     (let ((__tmp155090
                                                            (let ((__tmp155091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155092
                                  (##structure-ref
                                   _klass154606_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155092 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155091)))
                   (__tmp155089
                    (let () (declare (not safe)) (cons _object154608_ '()))))
               (declare (not safe))
               (cons __tmp155090 __tmp155089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp155088))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155087
                                          _stx154569_))
                                       (if (##structure-ref
                                            _klass154606_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155081
                                                  (let ((__tmp155082
                                                         (let ((__tmp155084
                                                                (let ((__tmp155085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155086
                                      (##structure-ref
                                       _klass154606_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155086 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155085)))
                       (__tmp155083
                        (let ()
                          (declare (not safe))
                          (cons _object154608_ '()))))
                   (declare (not safe))
                   (cons __tmp155084 __tmp155083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp155082))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155081
                                              _stx154569_))
                                           (let ((__tmp155072
                                                  (let ((__tmp155073
                                                         (let ((__tmp155079
                                                                (let ((__tmp155080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155080)))
                       (__tmp155074
                        (let ((__tmp155076
                               (let ((__tmp155077
                                      (let ((__tmp155078
                                             (##structure-ref
                                              _self154567_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp155078 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp155077)))
                              (__tmp155075
                               (let ()
                                 (declare (not safe))
                                 (cons _object154608_ '()))))
                          (declare (not safe))
                          (cons __tmp155076 __tmp155075))))
                   (declare (not safe))
                   (cons __tmp155079 __tmp155074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp155073))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155072
                                              _stx154569_))))))
                               _hd154576154590_)
                              (let ()
                                (declare (not safe))
                                (_g154572154582_ _g154573154585_)))))
                      (let ()
                        (declare (not safe))
                        (_g154572154582_ _g154573154585_))))))
          (declare (not safe))
          (_g154571154611_ _args154570_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154770 __method-table154771)
        (let ((__id154772
               (let ((__slot154773
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154770 'id))))
                 (if __slot154773
                     __slot154773
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154567_ _ctx154568_ _stx154569_ _args154570_)
            (let* ((_g154572154582_
                    (lambda (_g154573154579_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154573154579_))))
                   (_g154571154611_
                    (lambda (_g154573154585_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154573154585_))
                          (let ((_e154577154587_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154573154585_))))
                            (let ((_hd154576154590_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154577154587_)))
                                  (_tl154575154592_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154577154587_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154575154592_))
                                  ((lambda (_L154595_)
                                     (let* ((_klass154606_
                                             (let ((__tmp155093
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154567_
                                                       __id154772
                                                       __klass154770
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154569_
                                                __tmp155093)))
                                            (_object154608_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154568_
                                                _L154595_))))
                                       (if (##structure-ref
                                            _klass154606_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155109
                                                  (let ((__tmp155110
                                                         (let ((__tmp155112
                                                                (let ((__tmp155113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155114
                                      (##structure-ref
                                       _klass154606_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155114 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155113)))
                       (__tmp155111
                        (let ()
                          (declare (not safe))
                          (cons _object154608_ '()))))
                   (declare (not safe))
                   (cons __tmp155112 __tmp155111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp155110))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155109
                                              _stx154569_))
                                           (if (##structure-ref
                                                _klass154606_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155103
                                                      (let ((__tmp155104
                                                             (let ((__tmp155106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155107
                                   (let ((__tmp155108
                                          (##structure-ref
                                           _klass154606_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155108 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp155107)))
                           (__tmp155105
                            (let ()
                              (declare (not safe))
                              (cons _object154608_ '()))))
                       (declare (not safe))
                       (cons __tmp155106 __tmp155105))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp155104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155103
                                                  _stx154569_))
                                               (let ((__tmp155094
                                                      (let ((__tmp155095
                                                             (let ((__tmp155101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155102
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155102)))
                           (__tmp155096
                            (let ((__tmp155098
                                   (let ((__tmp155099
                                          (let ((__tmp155100
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154567_
                                                    __id154772
                                                    __klass154770
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp155100 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp155099)))
                                  (__tmp155097
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154608_ '()))))
                              (declare (not safe))
                              (cons __tmp155098 __tmp155097))))
                       (declare (not safe))
                       (cons __tmp155101 __tmp155096))))
                (declare (not safe))
                (cons '%#call __tmp155095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155094
                                                  _stx154569_))))))
                                   _hd154576154590_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154572154582_ _g154573154585_)))))
                          (let ()
                            (declare (not safe))
                            (_g154572154582_ _g154573154585_))))))
              (declare (not safe))
              (_g154571154611_ _args154570_))))))
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
      (lambda (_self154282_ _ctx154283_ _stx154284_ _args154285_)
        (let* ((_klass154287_
                (let ((__tmp155115
                       (##structure-ref _self154282_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx154284_ __tmp155115)))
               (_fields154289_
                (length (##structure-ref _klass154287_ '5 gxc#!class::t '#f)))
               (_args154295_
                (map (lambda (_g154290154292_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx154283_ _g154290154292_)))
                     _args154285_))
               (_inline-make-object154297_
                (let ((__tmp155116
                       (let ((__tmp155122
                              (let ((__tmp155123
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155123)))
                             (__tmp155117
                              (let ((__tmp155119
                                     (let ((__tmp155120
                                            (let ((__tmp155121
                                                   (##structure-ref
                                                    _self154282_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155121 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155120)))
                                    (__tmp155118
                                     (make-list _fields154289_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp155119 __tmp155118))))
                         (declare (not safe))
                         (cons __tmp155122 __tmp155117))))
                  (declare (not safe))
                  (cons '%#call __tmp155116))))
          (let ((_$e154300_
                 (##structure-ref _klass154287_ '6 gxc#!class::t '#f)))
            (if _$e154300_
                ((lambda (_ctor154303_)
                   (let ((_$obj154305_
                          (let ((__tmp155223 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp155223)))
                         (_ctor-impl154306_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass154287_
                             _ctor154303_))))
                     (let ((__tmp155224
                            (let ((__tmp155225
                                   (let ((__tmp155293
                                          (let ((__tmp155294
                                                 (let ((__tmp155296
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj154305_
                                                                '())))
                                                       (__tmp155295
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object154297_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155296
                                                         __tmp155295))))
                                            (declare (not safe))
                                            (cons __tmp155294 '())))
                                         (__tmp155226
                                          (let ((__tmp155227
                                                 (let ((__tmp155228
                                                        (let ((__tmp155232
                                                               (if _ctor-impl154306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155287
                                  (let ((__tmp155291
                                         (let ((__tmp155292
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl154306_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155292)))
                                        (__tmp155288
                                         (let ((__tmp155289
                                                (let ((__tmp155290
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj154305_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155290))))
                                           (declare (not safe))
                                           (cons __tmp155289 _args154295_))))
                                    (declare (not safe))
                                    (cons __tmp155291 __tmp155288))))
                             (declare (not safe))
                             (cons '%#call __tmp155287))
                           (let* ((_$ctor154308_
                                   (let ((__tmp155233 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp155233)))
                                  (__tmp155234
                                   (let ((__tmp155269
                                          (let ((__tmp155270
                                                 (let ((__tmp155286
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor154308_
                                                                '())))
                                                       (__tmp155271
                                                        (let ((__tmp155272
                                                               (let ((__tmp155273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155284
                                     (let ((__tmp155285
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155285)))
                                    (__tmp155274
                                     (let ((__tmp155281
                                            (let ((__tmp155282
                                                   (let ((__tmp155283
                                                          (##structure-ref
                                                           _self154282_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp155283 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155282)))
                                           (__tmp155275
                                            (let ((__tmp155279
                                                   (let ((__tmp155280
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155280)))
                                                  (__tmp155276
                                                   (let ((__tmp155277
                                                          (let ((__tmp155278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor154303_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155277 '()))))
                                              (declare (not safe))
                                              (cons __tmp155279 __tmp155276))))
                                       (declare (not safe))
                                       (cons __tmp155281 __tmp155275))))
                                (declare (not safe))
                                (cons __tmp155284 __tmp155274))))
                         (declare (not safe))
                         (cons '%#call __tmp155273))))
                  (declare (not safe))
                  (cons __tmp155272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155286
                                                         __tmp155271))))
                                            (declare (not safe))
                                            (cons __tmp155270 '())))
                                         (__tmp155235
                                          (let ((__tmp155236
                                                 (let ((__tmp155237
                                                        (let ((__tmp155267
                                                               (let ((__tmp155268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor154308_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155268)))
                      (__tmp155238
                       (let ((__tmp155260
                              (let ((__tmp155261
                                     (let ((__tmp155265
                                            (let ((__tmp155266
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor154308_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155266)))
                                           (__tmp155262
                                            (let ((__tmp155263
                                                   (let ((__tmp155264
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155264))))
                                              (declare (not safe))
                                              (cons __tmp155263
                                                    _args154295_))))
                                       (declare (not safe))
                                       (cons __tmp155265 __tmp155262))))
                                (declare (not safe))
                                (cons '%#call __tmp155261)))
                             (__tmp155239
                              (let ((__tmp155240
                                     (let ((__tmp155241
                                            (let ((__tmp155258
                                                   (let ((__tmp155259
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155259)))
                                                  (__tmp155242
                                                   (let ((__tmp155256
                                                          (let ((__tmp155257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155257)))
                 (__tmp155243
                  (let ((__tmp155254
                         (let ((__tmp155255
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155255)))
                        (__tmp155244
                         (let ((__tmp155251
                                (let ((__tmp155252
                                       (let ((__tmp155253
                                              (##structure-ref
                                               _self154282_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155253 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155252)))
                               (__tmp155245
                                (let ((__tmp155249
                                       (let ((__tmp155250
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155250)))
                                      (__tmp155246
                                       (let ((__tmp155247
                                              (let ((__tmp155248
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor154303_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp155248))))
                                         (declare (not safe))
                                         (cons __tmp155247 '()))))
                                  (declare (not safe))
                                  (cons __tmp155249 __tmp155246))))
                           (declare (not safe))
                           (cons __tmp155251 __tmp155245))))
                    (declare (not safe))
                    (cons __tmp155254 __tmp155244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155256
                                                           __tmp155243))))
                                              (declare (not safe))
                                              (cons __tmp155258 __tmp155242))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155241))))
                                (declare (not safe))
                                (cons __tmp155240 '()))))
                         (declare (not safe))
                         (cons __tmp155260 __tmp155239))))
                  (declare (not safe))
                  (cons __tmp155267 __tmp155238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp155237))))
                                            (declare (not safe))
                                            (cons __tmp155236 '()))))
                                     (declare (not safe))
                                     (cons __tmp155269 __tmp155235))))
                             (declare (not safe))
                             (cons '%#let-values __tmp155234))))
                      (__tmp155229
                       (let ((__tmp155230
                              (let ((__tmp155231
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj154305_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155231))))
                         (declare (not safe))
                         (cons __tmp155230 '()))))
                  (declare (not safe))
                  (cons __tmp155232 __tmp155229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp155228))))
                                            (declare (not safe))
                                            (cons __tmp155227 '()))))
                                     (declare (not safe))
                                     (cons __tmp155293 __tmp155226))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155225))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155224 _stx154284_))))
                 _$e154300_)
                (let ((_$e154310_
                       (##structure-ref _klass154287_ '10 gxc#!class::t '#f)))
                  (if _$e154310_
                      ((lambda (_metaclass154313_)
                         (let* ((_$obj154315_
                                 (let ((__tmp155185 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155185)))
                                (_metakons154317_
                                 (let ((__tmp155186
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx154284_
                                           _metaclass154313_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp155186
                                    'instance-init!))))
                           (let ((__tmp155187
                                  (let ((__tmp155188
                                         (let ((__tmp155219
                                                (let ((__tmp155220
                                                       (let ((__tmp155222
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154315_ '())))
                     (__tmp155221
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object154297_ '()))))
                 (declare (not safe))
                 (cons __tmp155222 __tmp155221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155220 '())))
                                               (__tmp155189
                                                (let ((__tmp155190
                                                       (let ((__tmp155191
                                                              (let ((__tmp155195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons154317_
                                 (let ((__tmp155209
                                        (let ((__tmp155217
                                               (let ((__tmp155218
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons154317_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155218)))
                                              (__tmp155210
                                               (let ((__tmp155214
                                                      (let ((__tmp155215
                                                             (let ((__tmp155216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154282_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155216 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155215)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155211
                                                      (let ((__tmp155212
                                                             (let ((__tmp155213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj154315_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155213))))
                (declare (not safe))
                (cons __tmp155212 _args154295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155214
                                                       __tmp155211))))
                                          (declare (not safe))
                                          (cons __tmp155217 __tmp155210))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155209))
                                 (let ((__tmp155196
                                        (let ((__tmp155207
                                               (let ((__tmp155208
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155208)))
                                              (__tmp155197
                                               (let ((__tmp155204
                                                      (let ((__tmp155205
                                                             (let ((__tmp155206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154282_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155206 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155205)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155198
                                                      (let ((__tmp155202
                                                             (let ((__tmp155203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp155203)))
                    (__tmp155199
                     (let ((__tmp155200
                            (let ((__tmp155201
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154315_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155201))))
                       (declare (not safe))
                       (cons __tmp155200 _args154295_))))
                (declare (not safe))
                (cons __tmp155202 __tmp155199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155204
                                                       __tmp155198))))
                                          (declare (not safe))
                                          (cons __tmp155207 __tmp155197))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155196))))
                            (__tmp155192
                             (let ((__tmp155193
                                    (let ((__tmp155194
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj154315_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155194))))
                               (declare (not safe))
                               (cons __tmp155193 '()))))
                        (declare (not safe))
                        (cons __tmp155195 __tmp155192))))
                 (declare (not safe))
                 (cons '%#begin __tmp155191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155190 '()))))
                                           (declare (not safe))
                                           (cons __tmp155219 __tmp155189))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp155188))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp155187 _stx154284_))))
                       _$e154310_)
                      (if (##structure-ref _klass154287_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args154295_) _fields154289_)
                              (let ((__tmp155177
                                     (let ((__tmp155178
                                            (let ((__tmp155183
                                                   (let ((__tmp155184
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155184)))
                                                  (__tmp155179
                                                   (let ((__tmp155180
                                                          (let ((__tmp155181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155182
                                (##structure-ref
                                 _self154282_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp155182 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155180
                                                           _args154295_))))
                                              (declare (not safe))
                                              (cons __tmp155183 __tmp155179))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155178))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp155177
                                 _stx154284_))
                              (let ((__tmp155176
                                     (##structure-ref
                                      _self154282_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp155175
                                     (length (##structure-ref
                                              _klass154287_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx154284_
                                 __tmp155176
                                 __tmp155175)))
                          (let ((_$obj154320_
                                 (let ((__tmp155124 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155124))))
                            (let _lp154322_ ((_rest154324_ _args154295_)
                                             (_initializers154325_ '()))
                              (let* ((___stx154851154852_ _rest154324_)
                                     (_g154329154350_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154851154852_)))))
                                (let ((___kont154853154854_
                                       (lambda (_L154404_ _L154405_ _L154406_)
                                         (let* ((_slot154437_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L154406_))))
                                                (_off154439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass154287_
                                                    _slot154437_))))
                                           (if _off154439_
                                               (let ((__tmp155126
                                                      (let ((__tmp155127
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154439_ _L154405_))))
                (declare (not safe))
                (cons __tmp155127 _initializers154325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp154322_
                                                  _L154404_
                                                  __tmp155126))
                                               (let ((__tmp155125
                                                      (##structure-ref
                                                       _self154282_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx154284_
                                                  __tmp155125
                                                  _slot154437_))))))
                                      (___kont154855154856_
                                       (lambda ()
                                         (let ((__tmp155128
                                                (let ((__tmp155129
                                                       (let ((__tmp155152
                                                              (let ((__tmp155153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155155
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154320_ '())))
                                   (__tmp155154
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154297_ '()))))
                               (declare (not safe))
                               (cons __tmp155155 __tmp155154))))
                        (declare (not safe))
                        (cons __tmp155153 '())))
                     (__tmp155130
                      (let ((__tmp155131
                             (let ((__tmp155132
                                    (let ((__tmp155149
                                           (let ((__tmp155150
                                                  (let ((__tmp155151
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155151))))
                                             (declare (not safe))
                                             (cons __tmp155150 '())))
                                          (__tmp155133
                                           (let ((__tmp155134
                                                  (lambda (_i154364_ _r154365_)
                                                    (let ((__tmp155135
                                                           (let ((__tmp155136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155146
                                 (let ((__tmp155147
                                        (let ((__tmp155148
                                               (##structure-ref
                                                _self154282_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155148 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155147)))
                                (__tmp155137
                                 (let ((__tmp155143
                                        (let ((__tmp155144
                                               (let ((__tmp155145
                                                      (car _i154364_)))
                                                 (declare (not safe))
                                                 (cons __tmp155145 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155144)))
                                       (__tmp155138
                                        (let ((__tmp155141
                                               (let ((__tmp155142
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj154320_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155142)))
                                              (__tmp155139
                                               (let ((__tmp155140
                                                      (cdr _i154364_)))
                                                 (declare (not safe))
                                                 (cons __tmp155140 '()))))
                                          (declare (not safe))
                                          (cons __tmp155141 __tmp155139))))
                                   (declare (not safe))
                                   (cons __tmp155143 __tmp155138))))
                            (declare (not safe))
                            (cons __tmp155146 __tmp155137))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp155136))))
              (declare (not safe))
              (cons __tmp155135 _r154365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp155134
                                                     '()
                                                     _initializers154325_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp155149 __tmp155133))))
                               (declare (not safe))
                               (cons '%#begin __tmp155132))))
                        (declare (not safe))
                        (cons __tmp155131 '()))))
                 (declare (not safe))
                 (cons __tmp155152 __tmp155130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155129))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155128
                                            _stx154284_))))
                                      (___kont154857154858_
                                       (lambda ()
                                         (let ((__tmp155156
                                                (let ((__tmp155157
                                                       (let ((__tmp155171
                                                              (let ((__tmp155172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155174
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154320_ '())))
                                   (__tmp155173
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154297_ '()))))
                               (declare (not safe))
                               (cons __tmp155174 __tmp155173))))
                        (declare (not safe))
                        (cons __tmp155172 '())))
                     (__tmp155158
                      (let ((__tmp155159
                             (let ((__tmp155160
                                    (let ((__tmp155164
                                           (let ((__tmp155165
                                                  (let ((__tmp155169
                                                         (let ((__tmp155170
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp155170)))
                (__tmp155166
                 (let ((__tmp155167
                        (let ((__tmp155168
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj154320_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155168))))
                   (declare (not safe))
                   (cons __tmp155167 _args154295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155169
                                                          __tmp155166))))
                                             (declare (not safe))
                                             (cons '%#call __tmp155165)))
                                          (__tmp155161
                                           (let ((__tmp155162
                                                  (let ((__tmp155163
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155163))))
                                             (declare (not safe))
                                             (cons __tmp155162 '()))))
                                      (declare (not safe))
                                      (cons __tmp155164 __tmp155161))))
                               (declare (not safe))
                               (cons '%#begin __tmp155160))))
                        (declare (not safe))
                        (cons __tmp155159 '()))))
                 (declare (not safe))
                 (cons __tmp155171 __tmp155158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155157))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155156
                                            _stx154284_)))))
                                  (let* ((_g154327154367_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154851154852_))
                                                (___kont154855154856_)
                                                (___kont154857154858_))))
                                         (___match154888154889_
                                          (lambda (_e154336154372_
                                                   _hd154335154375_
                                                   _tl154334154377_
                                                   _e154339154380_
                                                   _hd154338154383_
                                                   _tl154337154385_
                                                   _e154342154388_
                                                   _hd154341154391_
                                                   _tl154340154393_
                                                   _e154345154396_
                                                   _hd154344154399_
                                                   _tl154343154401_)
                                            (let ((_L154404_ _tl154343154401_)
                                                  (_L154405_ _hd154344154399_)
                                                  (_L154406_ _hd154341154391_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154406_))
                                                  (___kont154853154854_
                                                   _L154404_
                                                   _L154405_
                                                   _L154406_)
                                                  (___kont154857154858_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154851154852_))
                                        (let ((_e154336154372_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154851154852_))))
                                          (let ((_tl154334154377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154336154372_)))
                                                (_hd154335154375_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154336154372_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154335154375_))
                                                (let ((_e154339154380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154335154375_))))
                                                  (let ((_tl154337154385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154339154380_)))
                                                        (_hd154338154383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154339154380_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154338154383_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154338154383_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154337154385_))
                        (let ((_e154342154388_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154337154385_))))
                          (let ((_tl154340154393_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154342154388_)))
                                (_hd154341154391_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154342154388_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154340154393_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154334154377_))
                                    (let ((_e154345154396_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154334154377_))))
                                      (let ((_tl154343154401_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154345154396_)))
                                            (_hd154344154399_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154345154396_))))
                                        (___match154888154889_
                                         _e154336154372_
                                         _hd154335154375_
                                         _tl154334154377_
                                         _e154339154380_
                                         _hd154338154383_
                                         _tl154337154385_
                                         _e154342154388_
                                         _hd154341154391_
                                         _tl154340154393_
                                         _e154345154396_
                                         _hd154344154399_
                                         _tl154343154401_)))
                                    (___kont154857154858_))
                                (___kont154857154858_))))
                        (___kont154857154858_))
                    (___kont154857154858_))
                (___kont154857154858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154857154858_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154327154367_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154774 __method-table154775)
        (let ((__id154776
               (let ((__slot154777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154774 'id))))
                 (if __slot154777
                     __slot154777
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154282_ _ctx154283_ _stx154284_ _args154285_)
            (let* ((_klass154287_
                    (let ((__tmp155297
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self154282_
                              __id154776
                              __klass154774
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx154284_ __tmp155297)))
                   (_fields154289_
                    (length (##structure-ref
                             _klass154287_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args154295_
                    (map (lambda (_g154290154292_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx154283_ _g154290154292_)))
                         _args154285_))
                   (_inline-make-object154297_
                    (let ((__tmp155298
                           (let ((__tmp155304
                                  (let ((__tmp155305
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155305)))
                                 (__tmp155299
                                  (let ((__tmp155301
                                         (let ((__tmp155302
                                                (let ((__tmp155303
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154282_
                                                          __id154776
                                                          __klass154774
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155303 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155302)))
                                        (__tmp155300
                                         (make-list
                                          _fields154289_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp155301 __tmp155300))))
                             (declare (not safe))
                             (cons __tmp155304 __tmp155299))))
                      (declare (not safe))
                      (cons '%#call __tmp155298))))
              (let ((_$e154300_
                     (##structure-ref _klass154287_ '6 gxc#!class::t '#f)))
                (if _$e154300_
                    ((lambda (_ctor154303_)
                       (let ((_$obj154305_
                              (let ((__tmp155405 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155405)))
                             (_ctor-impl154306_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass154287_
                                 _ctor154303_))))
                         (let ((__tmp155406
                                (let ((__tmp155407
                                       (let ((__tmp155475
                                              (let ((__tmp155476
                                                     (let ((__tmp155478
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj154305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155477
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object154297_ '()))))
               (declare (not safe))
               (cons __tmp155478 __tmp155477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155476 '())))
                                             (__tmp155408
                                              (let ((__tmp155409
                                                     (let ((__tmp155410
                                                            (let ((__tmp155414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl154306_
                               (let ((__tmp155469
                                      (let ((__tmp155473
                                             (let ((__tmp155474
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl154306_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155474)))
                                            (__tmp155470
                                             (let ((__tmp155471
                                                    (let ((__tmp155472
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj154305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155471
                                                     _args154295_))))
                                        (declare (not safe))
                                        (cons __tmp155473 __tmp155470))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155469))
                               (let* ((_$ctor154308_
                                       (let ((__tmp155415
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155415)))
                                      (__tmp155416
                                       (let ((__tmp155451
                                              (let ((__tmp155452
                                                     (let ((__tmp155468
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor154308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155453
                    (let ((__tmp155454
                           (let ((__tmp155455
                                  (let ((__tmp155466
                                         (let ((__tmp155467
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155467)))
                                        (__tmp155456
                                         (let ((__tmp155463
                                                (let ((__tmp155464
                                                       (let ((__tmp155465
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self154282_
                         __id154776
                         __klass154774
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155465 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155464)))
                                               (__tmp155457
                                                (let ((__tmp155461
                                                       (let ((__tmp155462
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154305_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155462)))
              (__tmp155458
               (let ((__tmp155459
                      (let ((__tmp155460
                             (let ()
                               (declare (not safe))
                               (cons _ctor154303_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155460))))
                 (declare (not safe))
                 (cons __tmp155459 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155461
                                                        __tmp155458))))
                                           (declare (not safe))
                                           (cons __tmp155463 __tmp155457))))
                                    (declare (not safe))
                                    (cons __tmp155466 __tmp155456))))
                             (declare (not safe))
                             (cons '%#call __tmp155455))))
                      (declare (not safe))
                      (cons __tmp155454 '()))))
               (declare (not safe))
               (cons __tmp155468 __tmp155453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155452 '())))
                                             (__tmp155417
                                              (let ((__tmp155418
                                                     (let ((__tmp155419
                                                            (let ((__tmp155449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155450
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor154308_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155450)))
                          (__tmp155420
                           (let ((__tmp155442
                                  (let ((__tmp155443
                                         (let ((__tmp155447
                                                (let ((__tmp155448
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor154308_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155448)))
                                               (__tmp155444
                                                (let ((__tmp155445
                                                       (let ((__tmp155446
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154305_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155445
                                                        _args154295_))))
                                           (declare (not safe))
                                           (cons __tmp155447 __tmp155444))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155443)))
                                 (__tmp155421
                                  (let ((__tmp155422
                                         (let ((__tmp155423
                                                (let ((__tmp155440
                                                       (let ((__tmp155441
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155441)))
              (__tmp155424
               (let ((__tmp155438
                      (let ((__tmp155439
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155439)))
                     (__tmp155425
                      (let ((__tmp155436
                             (let ((__tmp155437
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155437)))
                            (__tmp155426
                             (let ((__tmp155433
                                    (let ((__tmp155434
                                           (let ((__tmp155435
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self154282_
                                                     __id154776
                                                     __klass154774
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155435 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155434)))
                                   (__tmp155427
                                    (let ((__tmp155431
                                           (let ((__tmp155432
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155432)))
                                          (__tmp155428
                                           (let ((__tmp155429
                                                  (let ((__tmp155430
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor154303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155430))))
                                             (declare (not safe))
                                             (cons __tmp155429 '()))))
                                      (declare (not safe))
                                      (cons __tmp155431 __tmp155428))))
                               (declare (not safe))
                               (cons __tmp155433 __tmp155427))))
                        (declare (not safe))
                        (cons __tmp155436 __tmp155426))))
                 (declare (not safe))
                 (cons __tmp155438 __tmp155425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155440
                                                        __tmp155424))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155423))))
                                    (declare (not safe))
                                    (cons __tmp155422 '()))))
                             (declare (not safe))
                             (cons __tmp155442 __tmp155421))))
                      (declare (not safe))
                      (cons __tmp155449 __tmp155420))))
               (declare (not safe))
               (cons '%#if __tmp155419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155418 '()))))
                                         (declare (not safe))
                                         (cons __tmp155451 __tmp155417))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155416))))
                          (__tmp155411
                           (let ((__tmp155412
                                  (let ((__tmp155413
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj154305_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155413))))
                             (declare (not safe))
                             (cons __tmp155412 '()))))
                      (declare (not safe))
                      (cons __tmp155414 __tmp155411))))
               (declare (not safe))
               (cons '%#begin __tmp155410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155409 '()))))
                                         (declare (not safe))
                                         (cons __tmp155475 __tmp155408))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155407))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155406 _stx154284_))))
                     _$e154300_)
                    (let ((_$e154310_
                           (##structure-ref
                            _klass154287_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e154310_
                          ((lambda (_metaclass154313_)
                             (let* ((_$obj154315_
                                     (let ((__tmp155367 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155367)))
                                    (_metakons154317_
                                     (let ((__tmp155368
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx154284_
                                               _metaclass154313_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155368
                                        'instance-init!))))
                               (let ((__tmp155369
                                      (let ((__tmp155370
                                             (let ((__tmp155401
                                                    (let ((__tmp155402
                                                           (let ((__tmp155404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj154315_ '())))
                         (__tmp155403
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object154297_ '()))))
                     (declare (not safe))
                     (cons __tmp155404 __tmp155403))))
              (declare (not safe))
              (cons __tmp155402 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155371
                                                    (let ((__tmp155372
                                                           (let ((__tmp155373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155377
                                 (if _metakons154317_
                                     (let ((__tmp155391
                                            (let ((__tmp155399
                                                   (let ((__tmp155400
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons154317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155400)))
                                                  (__tmp155392
                                                   (let ((__tmp155396
                                                          (let ((__tmp155397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155398
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154282_
                                   __id154776
                                   __klass154774
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155398 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155397)))
                 (__tmp155393
                  (let ((__tmp155394
                         (let ((__tmp155395
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj154315_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155395))))
                    (declare (not safe))
                    (cons __tmp155394 _args154295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155396
                                                           __tmp155393))))
                                              (declare (not safe))
                                              (cons __tmp155399 __tmp155392))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155391))
                                     (let ((__tmp155378
                                            (let ((__tmp155389
                                                   (let ((__tmp155390
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155390)))
                                                  (__tmp155379
                                                   (let ((__tmp155386
                                                          (let ((__tmp155387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155388
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154282_
                                   __id154776
                                   __klass154774
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155388 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155387)))
                 (__tmp155380
                  (let ((__tmp155384
                         (let ((__tmp155385
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155385)))
                        (__tmp155381
                         (let ((__tmp155382
                                (let ((__tmp155383
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj154315_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155383))))
                           (declare (not safe))
                           (cons __tmp155382 _args154295_))))
                    (declare (not safe))
                    (cons __tmp155384 __tmp155381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155386
                                                           __tmp155380))))
                                              (declare (not safe))
                                              (cons __tmp155389 __tmp155379))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155378))))
                                (__tmp155374
                                 (let ((__tmp155375
                                        (let ((__tmp155376
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj154315_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155376))))
                                   (declare (not safe))
                                   (cons __tmp155375 '()))))
                            (declare (not safe))
                            (cons __tmp155377 __tmp155374))))
                     (declare (not safe))
                     (cons '%#begin __tmp155373))))
              (declare (not safe))
              (cons __tmp155372 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155401
                                                     __tmp155371))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155370))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155369
                                  _stx154284_))))
                           _$e154310_)
                          (if (##structure-ref
                               _klass154287_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args154295_) _fields154289_)
                                  (let ((__tmp155359
                                         (let ((__tmp155360
                                                (let ((__tmp155365
                                                       (let ((__tmp155366
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155366)))
              (__tmp155361
               (let ((__tmp155362
                      (let ((__tmp155363
                             (let ((__tmp155364
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self154282_
                                       __id154776
                                       __klass154774
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155364 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155363))))
                 (declare (not safe))
                 (cons __tmp155362 _args154295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155365
                                                        __tmp155361))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155360))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155359
                                     _stx154284_))
                                  (let ((__tmp155358
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self154282_
                                            __id154776
                                            __klass154774
                                            '#f)))
                                        (__tmp155357
                                         (length (##structure-ref
                                                  _klass154287_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx154284_
                                     __tmp155358
                                     __tmp155357)))
                              (let ((_$obj154320_
                                     (let ((__tmp155306 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155306))))
                                (let _lp154322_ ((_rest154324_ _args154295_)
                                                 (_initializers154325_ '()))
                                  (let* ((___stx154893154894_ _rest154324_)
                                         (_g154329154350_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154893154894_)))))
                                    (let ((___kont154895154896_
                                           (lambda (_L154404_
                                                    _L154405_
                                                    _L154406_)
                                             (let* ((_slot154437_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154406_))))
                                                    (_off154439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass154287_
                                                        _slot154437_))))
                                               (if _off154439_
                                                   (let ((__tmp155308
                                                          (let ((__tmp155309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154439_ _L154405_))))
                    (declare (not safe))
                    (cons __tmp155309 _initializers154325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp154322_
                                                      _L154404_
                                                      __tmp155308))
                                                   (let ((__tmp155307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self154282_
                                                             __id154776
                                                             __klass154774
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx154284_
                                                      __tmp155307
                                                      _slot154437_))))))
                                          (___kont154897154898_
                                           (lambda ()
                                             (let ((__tmp155310
                                                    (let ((__tmp155311
                                                           (let ((__tmp155334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155335
                                 (let ((__tmp155337
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154320_ '())))
                                       (__tmp155336
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154297_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155337 __tmp155336))))
                            (declare (not safe))
                            (cons __tmp155335 '())))
                         (__tmp155312
                          (let ((__tmp155313
                                 (let ((__tmp155314
                                        (let ((__tmp155331
                                               (let ((__tmp155332
                                                      (let ((__tmp155333
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154320_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155332 '())))
                                              (__tmp155315
                                               (let ((__tmp155316
                                                      (lambda (_i154364_
                                                               _r154365_)
                                                        (let ((__tmp155317
                                                               (let ((__tmp155318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155328
                                     (let ((__tmp155329
                                            (let ((__tmp155330
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154282_
                                                      __id154776
                                                      __klass154774
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155330 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155329)))
                                    (__tmp155319
                                     (let ((__tmp155325
                                            (let ((__tmp155326
                                                   (let ((__tmp155327
                                                          (car _i154364_)))
                                                     (declare (not safe))
                                                     (cons __tmp155327 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155326)))
                                           (__tmp155320
                                            (let ((__tmp155323
                                                   (let ((__tmp155324
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155324)))
                                                  (__tmp155321
                                                   (let ((__tmp155322
                                                          (cdr _i154364_)))
                                                     (declare (not safe))
                                                     (cons __tmp155322 '()))))
                                              (declare (not safe))
                                              (cons __tmp155323 __tmp155321))))
                                       (declare (not safe))
                                       (cons __tmp155325 __tmp155320))))
                                (declare (not safe))
                                (cons __tmp155328 __tmp155319))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp155318))))
                  (declare (not safe))
                  (cons __tmp155317 _r154365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp155316
                                                         '()
                                                         _initializers154325_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155331
                                                  __tmp155315))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155314))))
                            (declare (not safe))
                            (cons __tmp155313 '()))))
                     (declare (not safe))
                     (cons __tmp155334 __tmp155312))))
              (declare (not safe))
              (cons '%#let-values __tmp155311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155310
                                                _stx154284_))))
                                          (___kont154899154900_
                                           (lambda ()
                                             (let ((__tmp155338
                                                    (let ((__tmp155339
                                                           (let ((__tmp155353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155354
                                 (let ((__tmp155356
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154320_ '())))
                                       (__tmp155355
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154297_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155356 __tmp155355))))
                            (declare (not safe))
                            (cons __tmp155354 '())))
                         (__tmp155340
                          (let ((__tmp155341
                                 (let ((__tmp155342
                                        (let ((__tmp155346
                                               (let ((__tmp155347
                                                      (let ((__tmp155351
                                                             (let ((__tmp155352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155352)))
                    (__tmp155348
                     (let ((__tmp155349
                            (let ((__tmp155350
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154320_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155350))))
                       (declare (not safe))
                       (cons __tmp155349 _args154295_))))
                (declare (not safe))
                (cons __tmp155351 __tmp155348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155347)))
                                              (__tmp155343
                                               (let ((__tmp155344
                                                      (let ((__tmp155345
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154320_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155344 '()))))
                                          (declare (not safe))
                                          (cons __tmp155346 __tmp155343))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155342))))
                            (declare (not safe))
                            (cons __tmp155341 '()))))
                     (declare (not safe))
                     (cons __tmp155353 __tmp155340))))
              (declare (not safe))
              (cons '%#let-values __tmp155339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155338
                                                _stx154284_)))))
                                      (let* ((_g154327154367_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154893154894_))
                                                    (___kont154897154898_)
                                                    (___kont154899154900_))))
                                             (___match154930154931_
                                              (lambda (_e154336154372_
                                                       _hd154335154375_
                                                       _tl154334154377_
                                                       _e154339154380_
                                                       _hd154338154383_
                                                       _tl154337154385_
                                                       _e154342154388_
                                                       _hd154341154391_
                                                       _tl154340154393_
                                                       _e154345154396_
                                                       _hd154344154399_
                                                       _tl154343154401_)
                                                (let ((_L154404_
                                                       _tl154343154401_)
                                                      (_L154405_
                                                       _hd154344154399_)
                                                      (_L154406_
                                                       _hd154341154391_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154406_))
                                                      (___kont154895154896_
                                                       _L154404_
                                                       _L154405_
                                                       _L154406_)
                                                      (___kont154899154900_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154893154894_))
                                            (let ((_e154336154372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154893154894_))))
                                              (let ((_tl154334154377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154336154372_)))
                                                    (_hd154335154375_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154336154372_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154335154375_))
                                                    (let ((_e154339154380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154335154375_))))
                                                      (let ((_tl154337154385_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154339154380_)))
                    (_hd154338154383_
                     (let () (declare (not safe)) (##car _e154339154380_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154338154383_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154338154383_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154337154385_))
                            (let ((_e154342154388_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154337154385_))))
                              (let ((_tl154340154393_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154342154388_)))
                                    (_hd154341154391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154342154388_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154340154393_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154334154377_))
                                        (let ((_e154345154396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154334154377_))))
                                          (let ((_tl154343154401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154345154396_)))
                                                (_hd154344154399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154345154396_))))
                                            (___match154930154931_
                                             _e154336154372_
                                             _hd154335154375_
                                             _tl154334154377_
                                             _e154339154380_
                                             _hd154338154383_
                                             _tl154337154385_
                                             _e154342154388_
                                             _hd154341154391_
                                             _tl154340154393_
                                             _e154345154396_
                                             _hd154344154399_
                                             _tl154343154401_)))
                                        (___kont154899154900_))
                                    (___kont154899154900_))))
                            (___kont154899154900_))
                        (___kont154899154900_))
                    (___kont154899154900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154899154900_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154327154367_))))))))))))))))))
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
      (lambda (_self154104_ _ctx154105_ _stx154106_ _args154107_)
        (let* ((_g154109154119_
                (lambda (_g154110154116_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154110154116_))))
               (_g154108154157_
                (lambda (_g154110154122_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154110154122_))
                      (let ((_e154114154124_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154110154122_))))
                        (let ((_hd154113154127_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154114154124_)))
                              (_tl154112154129_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154114154124_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154112154129_))
                              ((lambda (_L154132_)
                                 (let* ((_klass154143_
                                         (let ((__tmp155479
                                                (##structure-ref
                                                 _self154104_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154106_
                                            __tmp155479)))
                                        (_field154145_
                                         (let ((__tmp155480
                                                (##structure-ref
                                                 _self154104_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass154143_
                                            __tmp155480)))
                                        (_object154147_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154105_
                                            _L154132_))))
                                   (if (##structure-ref
                                        _klass154143_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155557
                                              (let ((__tmp155566
                                                     (if (##structure-ref
                                                          _self154104_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155558
                                                     (let ((__tmp155563
                                                            (let ((__tmp155564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155565
                                  (##structure-ref
                                   _self154104_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155565 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155564)))
                   (__tmp155559
                    (let ((__tmp155561
                           (let ((__tmp155562
                                  (let ()
                                    (declare (not safe))
                                    (cons _field154145_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155562)))
                          (__tmp155560
                           (let ()
                             (declare (not safe))
                             (cons _object154147_ '()))))
                      (declare (not safe))
                      (cons __tmp155561 __tmp155560))))
               (declare (not safe))
               (cons __tmp155563 __tmp155559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155566
                                                      __tmp155558))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155557
                                          _stx154106_))
                                       (if (##structure-ref
                                            _klass154143_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155547
                                                  (let ((__tmp155556
                                                         (if (##structure-ref
                                                              _self154104_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155548
                                                         (let ((__tmp155553
                                                                (let ((__tmp155554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155555
                                      (##structure-ref
                                       _self154104_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155555 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155554)))
                       (__tmp155549
                        (let ((__tmp155551
                               (let ((__tmp155552
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154145_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155552)))
                              (__tmp155550
                               (let ()
                                 (declare (not safe))
                                 (cons _object154147_ '()))))
                          (declare (not safe))
                          (cons __tmp155551 __tmp155550))))
                   (declare (not safe))
                   (cons __tmp155553 __tmp155549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155556
                                                          __tmp155548))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155547
                                              _stx154106_))
                                           (let ((_$e154150_
                                                  (let ((__tmp155481
                                                         (##structure-ref
                                                          _self154104_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass154143_
                                                     __tmp155481))))
                                             (if _$e154150_
                                                 ((lambda (_klass154153_)
                                                    (let ((__tmp155537
                                                           (let ((__tmp155546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self154104_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155538
                          (let ((__tmp155543
                                 (let ((__tmp155544
                                        (let ((__tmp155545
                                               (##structure-ref
                                                _self154104_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155545 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155544)))
                                (__tmp155539
                                 (let ((__tmp155541
                                        (let ((__tmp155542
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field154145_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155542)))
                                       (__tmp155540
                                        (let ()
                                          (declare (not safe))
                                          (cons _object154147_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155541 __tmp155540))))
                            (declare (not safe))
                            (cons __tmp155543 __tmp155539))))
                     (declare (not safe))
                     (cons __tmp155546 __tmp155538))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155537 _stx154106_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e154150_)
                                                 (if (##structure-ref
                                                      _self154104_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155491
                                                            (let* ((_$obj154155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155492 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155492)))
                           (__tmp155493
                            (let ((__tmp155533
                                   (let ((__tmp155534
                                          (let ((__tmp155536
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj154155_ '())))
                                                (__tmp155535
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object154147_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155536 __tmp155535))))
                                     (declare (not safe))
                                     (cons __tmp155534 '())))
                                  (__tmp155494
                                   (let ((__tmp155495
                                          (let ((__tmp155496
                                                 (let ((__tmp155525
                                                        (let ((__tmp155526
                                                               (let ((__tmp155530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155531
                                     (let ((__tmp155532
                                            (##structure-ref
                                             _klass154143_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155532 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155531)))
                             (__tmp155527
                              (let ((__tmp155528
                                     (let ((__tmp155529
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj154155_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155529))))
                                (declare (not safe))
                                (cons __tmp155528 '()))))
                         (declare (not safe))
                         (cons __tmp155530 __tmp155527))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155526)))
               (__tmp155497
                (let ((__tmp155514
                       (let ((__tmp155515
                              (let ((__tmp155522
                                     (let ((__tmp155523
                                            (let ((__tmp155524
                                                   (##structure-ref
                                                    _self154104_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155524 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155523)))
                                    (__tmp155516
                                     (let ((__tmp155520
                                            (let ((__tmp155521
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154145_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155521)))
                                           (__tmp155517
                                            (let ((__tmp155518
                                                   (let ((__tmp155519
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155519))))
                                              (declare (not safe))
                                              (cons __tmp155518 '()))))
                                       (declare (not safe))
                                       (cons __tmp155520 __tmp155517))))
                                (declare (not safe))
                                (cons __tmp155522 __tmp155516))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155515)))
                      (__tmp155498
                       (let ((__tmp155499
                              (let ((__tmp155500
                                     (let ((__tmp155512
                                            (let ((__tmp155513
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155513)))
                                           (__tmp155501
                                            (let ((__tmp155509
                                                   (let ((__tmp155510
                                                          (let ((__tmp155511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self154104_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155511 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155510)))
                                                  (__tmp155502
                                                   (let ((__tmp155507
                                                          (let ((__tmp155508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj154155_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155508)))
                 (__tmp155503
                  (let ((__tmp155504
                         (let ((__tmp155505
                                (let ((__tmp155506
                                       (##structure-ref
                                        _self154104_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155506 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155505))))
                    (declare (not safe))
                    (cons __tmp155504 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155507
                                                           __tmp155503))))
                                              (declare (not safe))
                                              (cons __tmp155509 __tmp155502))))
                                       (declare (not safe))
                                       (cons __tmp155512 __tmp155501))))
                                (declare (not safe))
                                (cons '%#call __tmp155500))))
                         (declare (not safe))
                         (cons __tmp155499 '()))))
                  (declare (not safe))
                  (cons __tmp155514 __tmp155498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155525
                                                         __tmp155497))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155496))))
                                     (declare (not safe))
                                     (cons __tmp155495 '()))))
                              (declare (not safe))
                              (cons __tmp155533 __tmp155494))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155493))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155491 _stx154106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155482
                                                            (let ((__tmp155483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155489
                                  (let ((__tmp155490
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155490)))
                                 (__tmp155484
                                  (let ((__tmp155485
                                         (let ((__tmp155486
                                                (let ((__tmp155487
                                                       (let ((__tmp155488
                                                              (##structure-ref
                                                               _self154104_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155488
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155487))))
                                           (declare (not safe))
                                           (cons __tmp155486 '()))))
                                    (declare (not safe))
                                    (cons _object154147_ __tmp155485))))
                             (declare (not safe))
                             (cons __tmp155489 __tmp155484))))
                      (declare (not safe))
                      (cons '%#call __tmp155483))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155482 _stx154106_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd154113154127_)
                              (let ()
                                (declare (not safe))
                                (_g154109154119_ _g154110154122_)))))
                      (let ()
                        (declare (not safe))
                        (_g154109154119_ _g154110154122_))))))
          (declare (not safe))
          (_g154108154157_ _args154107_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154778 __method-table154779)
        (let ((__slot154780
               (let ((__slot154783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154778 'slot))))
                 (if __slot154783
                     __slot154783
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id154781
               (let ((__slot154784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154778 'id))))
                 (if __slot154784
                     __slot154784
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154782
               (let ((__slot154785
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154778 'checked?))))
                 (if __slot154785
                     __slot154785
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self154104_ _ctx154105_ _stx154106_ _args154107_)
            (let* ((_g154109154119_
                    (lambda (_g154110154116_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154110154116_))))
                   (_g154108154157_
                    (lambda (_g154110154122_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154110154122_))
                          (let ((_e154114154124_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154110154122_))))
                            (let ((_hd154113154127_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154114154124_)))
                                  (_tl154112154129_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154114154124_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154112154129_))
                                  ((lambda (_L154132_)
                                     (let* ((_klass154143_
                                             (let ((__tmp155567
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154104_
                                                       __id154781
                                                       __klass154778
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154106_
                                                __tmp155567)))
                                            (_field154145_
                                             (let ((__tmp155568
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154104_
                                                       __slot154780
                                                       __klass154778
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass154143_
                                                __tmp155568)))
                                            (_object154147_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154105_
                                                _L154132_))))
                                       (if (##structure-ref
                                            _klass154143_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155645
                                                  (let ((__tmp155654
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154104_
                        __checked?154782
                        __klass154778
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155646
                 (let ((__tmp155651
                        (let ((__tmp155652
                               (let ((__tmp155653
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self154104_
                                         __id154781
                                         __klass154778
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155653 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155652)))
                       (__tmp155647
                        (let ((__tmp155649
                               (let ((__tmp155650
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154145_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155650)))
                              (__tmp155648
                               (let ()
                                 (declare (not safe))
                                 (cons _object154147_ '()))))
                          (declare (not safe))
                          (cons __tmp155649 __tmp155648))))
                   (declare (not safe))
                   (cons __tmp155651 __tmp155647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155654
                                                          __tmp155646))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155645
                                              _stx154106_))
                                           (if (##structure-ref
                                                _klass154143_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155635
                                                      (let ((__tmp155644
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self154104_
                            __checked?154782
                            __klass154778
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155636
                     (let ((__tmp155641
                            (let ((__tmp155642
                                   (let ((__tmp155643
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self154104_
                                             __id154781
                                             __klass154778
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp155643 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155642)))
                           (__tmp155637
                            (let ((__tmp155639
                                   (let ((__tmp155640
                                          (let ()
                                            (declare (not safe))
                                            (cons _field154145_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155640)))
                                  (__tmp155638
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154147_ '()))))
                              (declare (not safe))
                              (cons __tmp155639 __tmp155638))))
                       (declare (not safe))
                       (cons __tmp155641 __tmp155637))))
                (declare (not safe))
                (cons __tmp155644 __tmp155636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155635
                                                  _stx154106_))
                                               (let ((_$e154150_
                                                      (let ((__tmp155569
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154104_
                        __slot154780
                        __klass154778
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass154143_ __tmp155569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e154150_
                                                     ((lambda (_klass154153_)
                                                        (let ((__tmp155625
                                                               (let ((__tmp155634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self154104_
                                     __checked?154782
                                     __klass154778
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155626
                              (let ((__tmp155631
                                     (let ((__tmp155632
                                            (let ((__tmp155633
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154104_
                                                      __id154781
                                                      __klass154778
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155633 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155632)))
                                    (__tmp155627
                                     (let ((__tmp155629
                                            (let ((__tmp155630
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154145_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155630)))
                                           (__tmp155628
                                            (let ()
                                              (declare (not safe))
                                              (cons _object154147_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155629 __tmp155628))))
                                (declare (not safe))
                                (cons __tmp155631 __tmp155627))))
                         (declare (not safe))
                         (cons __tmp155634 __tmp155626))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155625 _stx154106_)))
              _$e154150_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self154104_
                                                            __checked?154782
                                                            __klass154778
                                                            '#f))
                                                         (let ((__tmp155579
                                                                (let* ((_$obj154155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155580 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155580)))
                               (__tmp155581
                                (let ((__tmp155621
                                       (let ((__tmp155622
                                              (let ((__tmp155624
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj154155_
                                                             '())))
                                                    (__tmp155623
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object154147_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155624
                                                      __tmp155623))))
                                         (declare (not safe))
                                         (cons __tmp155622 '())))
                                      (__tmp155582
                                       (let ((__tmp155583
                                              (let ((__tmp155584
                                                     (let ((__tmp155613
                                                            (let ((__tmp155614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155618
                                  (let ((__tmp155619
                                         (let ((__tmp155620
                                                (##structure-ref
                                                 _klass154143_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155620 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155619)))
                                 (__tmp155615
                                  (let ((__tmp155616
                                         (let ((__tmp155617
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj154155_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155617))))
                                    (declare (not safe))
                                    (cons __tmp155616 '()))))
                             (declare (not safe))
                             (cons __tmp155618 __tmp155615))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155614)))
                   (__tmp155585
                    (let ((__tmp155602
                           (let ((__tmp155603
                                  (let ((__tmp155610
                                         (let ((__tmp155611
                                                (let ((__tmp155612
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154104_
                                                          __id154781
                                                          __klass154778
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155612 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155611)))
                                        (__tmp155604
                                         (let ((__tmp155608
                                                (let ((__tmp155609
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field154145_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155609)))
                                               (__tmp155605
                                                (let ((__tmp155606
                                                       (let ((__tmp155607
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154155_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155606 '()))))
                                           (declare (not safe))
                                           (cons __tmp155608 __tmp155605))))
                                    (declare (not safe))
                                    (cons __tmp155610 __tmp155604))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155603)))
                          (__tmp155586
                           (let ((__tmp155587
                                  (let ((__tmp155588
                                         (let ((__tmp155600
                                                (let ((__tmp155601
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155601)))
                                               (__tmp155589
                                                (let ((__tmp155597
                                                       (let ((__tmp155598
                                                              (let ((__tmp155599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self154104_
                                __id154781
                                __klass154778
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155599 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155598)))
              (__tmp155590
               (let ((__tmp155595
                      (let ((__tmp155596
                             (let ()
                               (declare (not safe))
                               (cons _$obj154155_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155596)))
                     (__tmp155591
                      (let ((__tmp155592
                             (let ((__tmp155593
                                    (let ((__tmp155594
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self154104_
                                              __slot154780
                                              __klass154778
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155594 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155593))))
                        (declare (not safe))
                        (cons __tmp155592 '()))))
                 (declare (not safe))
                 (cons __tmp155595 __tmp155591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155597
                                                        __tmp155590))))
                                           (declare (not safe))
                                           (cons __tmp155600 __tmp155589))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155588))))
                             (declare (not safe))
                             (cons __tmp155587 '()))))
                      (declare (not safe))
                      (cons __tmp155602 __tmp155586))))
               (declare (not safe))
               (cons __tmp155613 __tmp155585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155584))))
                                         (declare (not safe))
                                         (cons __tmp155583 '()))))
                                  (declare (not safe))
                                  (cons __tmp155621 __tmp155582))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155581))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155579 _stx154106_))
                 (let ((__tmp155570
                        (let ((__tmp155571
                               (let ((__tmp155577
                                      (let ((__tmp155578
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155578)))
                                     (__tmp155572
                                      (let ((__tmp155573
                                             (let ((__tmp155574
                                                    (let ((__tmp155575
                                                           (let ((__tmp155576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self154104_
                             __slot154780
                             __klass154778
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155576 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155574 '()))))
                                        (declare (not safe))
                                        (cons _object154147_ __tmp155573))))
                                 (declare (not safe))
                                 (cons __tmp155577 __tmp155572))))
                          (declare (not safe))
                          (cons '%#call __tmp155571))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155570 _stx154106_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd154113154127_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154109154119_ _g154110154122_)))))
                          (let ()
                            (declare (not safe))
                            (_g154109154119_ _g154110154122_))))))
              (declare (not safe))
              (_g154108154157_ _args154107_))))))
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
      (lambda (_self153908_ _ctx153909_ _stx153910_ _args153911_)
        (let* ((_g153913153927_
                (lambda (_g153914153924_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153914153924_))))
               (_g153912153979_
                (lambda (_g153914153930_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153914153930_))
                      (let ((_e153919153932_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153914153930_))))
                        (let ((_hd153918153935_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153919153932_)))
                              (_tl153917153937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153919153932_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153917153937_))
                              (let ((_e153922153940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153917153937_))))
                                (let ((_hd153921153943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153922153940_)))
                                      (_tl153920153945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153922153940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153920153945_))
                                      ((lambda (_L153948_ _L153949_)
                                         (let* ((_klass153963_
                                                 (let ((__tmp155655
                                                        (##structure-ref
                                                         _self153908_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153910_
                                                    __tmp155655)))
                                                (_field153965_
                                                 (let ((__tmp155656
                                                        (##structure-ref
                                                         _self153908_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153963_
                                                    __tmp155656)))
                                                (_object153967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153909_
                                                    _L153949_)))
                                                (_value153969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153909_
                                                    _L153948_))))
                                           (if (##structure-ref
                                                _klass153963_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155738
                                                      (let ((__tmp155748
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153908_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155739
                     (let ((__tmp155745
                            (let ((__tmp155746
                                   (let ((__tmp155747
                                          (##structure-ref
                                           _self153908_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155747 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155746)))
                           (__tmp155740
                            (let ((__tmp155743
                                   (let ((__tmp155744
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153965_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155744)))
                                  (__tmp155741
                                   (let ((__tmp155742
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153969_ '()))))
                                     (declare (not safe))
                                     (cons _object153967_ __tmp155742))))
                              (declare (not safe))
                              (cons __tmp155743 __tmp155741))))
                       (declare (not safe))
                       (cons __tmp155745 __tmp155740))))
                (declare (not safe))
                (cons __tmp155748 __tmp155739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155738
                                                  _stx153910_))
                                               (if (##structure-ref
                                                    _klass153963_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155727
                                                          (let ((__tmp155737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153908_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155728
                         (let ((__tmp155734
                                (let ((__tmp155735
                                       (let ((__tmp155736
                                              (##structure-ref
                                               _self153908_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155736 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155735)))
                               (__tmp155729
                                (let ((__tmp155732
                                       (let ((__tmp155733
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153965_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155733)))
                                      (__tmp155730
                                       (let ((__tmp155731
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153969_ '()))))
                                         (declare (not safe))
                                         (cons _object153967_ __tmp155731))))
                                  (declare (not safe))
                                  (cons __tmp155732 __tmp155730))))
                           (declare (not safe))
                           (cons __tmp155734 __tmp155729))))
                    (declare (not safe))
                    (cons __tmp155737 __tmp155728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155727
                                                      _stx153910_))
                                                   (let ((_$e153972_
                                                          (let ((__tmp155657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153908_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153963_ __tmp155657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153972_
                                                         ((lambda (_klass153975_)
                                                            (let ((__tmp155716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155726
                                  (if (##structure-ref
                                       _self153908_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155717
                                  (let ((__tmp155723
                                         (let ((__tmp155724
                                                (let ((__tmp155725
                                                       (##structure-ref
                                                        _self153908_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155725 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155724)))
                                        (__tmp155718
                                         (let ((__tmp155721
                                                (let ((__tmp155722
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153965_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155722)))
                                               (__tmp155719
                                                (let ((__tmp155720
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153969_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153967_
                                                        __tmp155720))))
                                           (declare (not safe))
                                           (cons __tmp155721 __tmp155719))))
                                    (declare (not safe))
                                    (cons __tmp155723 __tmp155718))))
                             (declare (not safe))
                             (cons __tmp155726 __tmp155717))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155716 _stx153910_)))
                  _$e153972_)
                 (if (##structure-ref _self153908_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155668
                            (let* ((_$obj153977_
                                    (let ((__tmp155669 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155669)))
                                   (__tmp155670
                                    (let ((__tmp155712
                                           (let ((__tmp155713
                                                  (let ((__tmp155715
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155714
                 (let () (declare (not safe)) (cons _object153967_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155715
                                                          __tmp155714))))
                                             (declare (not safe))
                                             (cons __tmp155713 '())))
                                          (__tmp155671
                                           (let ((__tmp155672
                                                  (let ((__tmp155673
                                                         (let ((__tmp155704
                                                                (let ((__tmp155705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155709
                                      (let ((__tmp155710
                                             (let ((__tmp155711
                                                    (##structure-ref
                                                     _klass153963_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155711 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155710)))
                                     (__tmp155706
                                      (let ((__tmp155707
                                             (let ((__tmp155708
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153977_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155708))))
                                        (declare (not safe))
                                        (cons __tmp155707 '()))))
                                 (declare (not safe))
                                 (cons __tmp155709 __tmp155706))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155705)))
                       (__tmp155674
                        (let ((__tmp155692
                               (let ((__tmp155693
                                      (let ((__tmp155701
                                             (let ((__tmp155702
                                                    (let ((__tmp155703
                                                           (##structure-ref
                                                            _self153908_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155703 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155702)))
                                            (__tmp155694
                                             (let ((__tmp155699
                                                    (let ((__tmp155700
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155700)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155695
                                                    (let ((__tmp155697
                                                           (let ((__tmp155698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153977_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155698)))
                  (__tmp155696
                   (let () (declare (not safe)) (cons _value153969_ '()))))
              (declare (not safe))
              (cons __tmp155697 __tmp155696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155699
                                                     __tmp155695))))
                                        (declare (not safe))
                                        (cons __tmp155701 __tmp155694))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155693)))
                              (__tmp155675
                               (let ((__tmp155676
                                      (let ((__tmp155677
                                             (let ((__tmp155690
                                                    (let ((__tmp155691
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155691)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155678
                                                    (let ((__tmp155687
                                                           (let ((__tmp155688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155689
                                 (##structure-ref
                                  _self153908_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155689 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155688)))
                  (__tmp155679
                   (let ((__tmp155685
                          (let ((__tmp155686
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153977_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155686)))
                         (__tmp155680
                          (let ((__tmp155682
                                 (let ((__tmp155683
                                        (let ((__tmp155684
                                               (##structure-ref
                                                _self153908_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155684 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155683)))
                                (__tmp155681
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153969_ '()))))
                            (declare (not safe))
                            (cons __tmp155682 __tmp155681))))
                     (declare (not safe))
                     (cons __tmp155685 __tmp155680))))
              (declare (not safe))
              (cons __tmp155687 __tmp155679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155690
                                                     __tmp155678))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155677))))
                                 (declare (not safe))
                                 (cons __tmp155676 '()))))
                          (declare (not safe))
                          (cons __tmp155692 __tmp155675))))
                   (declare (not safe))
                   (cons __tmp155704 __tmp155674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155673))))
                                             (declare (not safe))
                                             (cons __tmp155672 '()))))
                                      (declare (not safe))
                                      (cons __tmp155712 __tmp155671))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155670))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155668 _stx153910_))
                     (let ((__tmp155658
                            (let ((__tmp155659
                                   (let ((__tmp155666
                                          (let ((__tmp155667
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155667)))
                                         (__tmp155660
                                          (let ((__tmp155661
                                                 (let ((__tmp155663
                                                        (let ((__tmp155664
                                                               (let ((__tmp155665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153908_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155665 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155664)))
               (__tmp155662
                (let () (declare (not safe)) (cons _value153969_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155663
                                                         __tmp155662))))
                                            (declare (not safe))
                                            (cons _object153967_
                                                  __tmp155661))))
                                     (declare (not safe))
                                     (cons __tmp155666 __tmp155660))))
                              (declare (not safe))
                              (cons '%#call __tmp155659))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155658 _stx153910_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153921153943_
                                       _hd153918153935_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153913153927_ _g153914153930_)))))
                              (let ()
                                (declare (not safe))
                                (_g153913153927_ _g153914153930_)))))
                      (let ()
                        (declare (not safe))
                        (_g153913153927_ _g153914153930_))))))
          (declare (not safe))
          (_g153912153979_ _args153911_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154786 __method-table154787)
        (let ((__slot154788
               (let ((__slot154791
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154786 'slot))))
                 (if __slot154791
                     __slot154791
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id154789
               (let ((__slot154792
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154786 'id))))
                 (if __slot154792
                     __slot154792
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154790
               (let ((__slot154793
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154786 'checked?))))
                 (if __slot154793
                     __slot154793
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self153908_ _ctx153909_ _stx153910_ _args153911_)
            (let* ((_g153913153927_
                    (lambda (_g153914153924_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153914153924_))))
                   (_g153912153979_
                    (lambda (_g153914153930_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153914153930_))
                          (let ((_e153919153932_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153914153930_))))
                            (let ((_hd153918153935_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153919153932_)))
                                  (_tl153917153937_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153919153932_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153917153937_))
                                  (let ((_e153922153940_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153917153937_))))
                                    (let ((_hd153921153943_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153922153940_)))
                                          (_tl153920153945_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153922153940_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153920153945_))
                                          ((lambda (_L153948_ _L153949_)
                                             (let* ((_klass153963_
                                                     (let ((__tmp155749
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153908_
                                                               __id154789
                                                               __klass154786
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153910_
                                                        __tmp155749)))
                                                    (_field153965_
                                                     (let ((__tmp155750
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153908_
                                                               __slot154788
                                                               __klass154786
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153963_
                                                        __tmp155750)))
                                                    (_object153967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153909_
                                                        _L153949_)))
                                                    (_value153969_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153909_
                                                        _L153948_))))
                                               (if (##structure-ref
                                                    _klass153963_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155832
                                                          (let ((__tmp155842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153908_
                                __checked?154790
                                __klass154786
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155833
                         (let ((__tmp155839
                                (let ((__tmp155840
                                       (let ((__tmp155841
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153908_
                                                 __id154789
                                                 __klass154786
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155841 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155840)))
                               (__tmp155834
                                (let ((__tmp155837
                                       (let ((__tmp155838
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153965_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155838)))
                                      (__tmp155835
                                       (let ((__tmp155836
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153969_ '()))))
                                         (declare (not safe))
                                         (cons _object153967_ __tmp155836))))
                                  (declare (not safe))
                                  (cons __tmp155837 __tmp155835))))
                           (declare (not safe))
                           (cons __tmp155839 __tmp155834))))
                    (declare (not safe))
                    (cons __tmp155842 __tmp155833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155832
                                                      _stx153910_))
                                                   (if (##structure-ref
                                                        _klass153963_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155821
                                                              (let ((__tmp155831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153908_
                                    __checked?154790
                                    __klass154786
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155822
                             (let ((__tmp155828
                                    (let ((__tmp155829
                                           (let ((__tmp155830
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153908_
                                                     __id154789
                                                     __klass154786
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155830 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155829)))
                                   (__tmp155823
                                    (let ((__tmp155826
                                           (let ((__tmp155827
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153965_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155827)))
                                          (__tmp155824
                                           (let ((__tmp155825
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153969_ '()))))
                                             (declare (not safe))
                                             (cons _object153967_
                                                   __tmp155825))))
                                      (declare (not safe))
                                      (cons __tmp155826 __tmp155824))))
                               (declare (not safe))
                               (cons __tmp155828 __tmp155823))))
                        (declare (not safe))
                        (cons __tmp155831 __tmp155822))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155821 _stx153910_))
               (let ((_$e153972_
                      (let ((__tmp155751
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153908_
                                __slot154788
                                __klass154786
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153963_
                         __tmp155751))))
                 (if _$e153972_
                     ((lambda (_klass153975_)
                        (let ((__tmp155810
                               (let ((__tmp155820
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153908_
                                             __checked?154790
                                             __klass154786
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155811
                                      (let ((__tmp155817
                                             (let ((__tmp155818
                                                    (let ((__tmp155819
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153908_
                                                              __id154789
                                                              __klass154786
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155819 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155818)))
                                            (__tmp155812
                                             (let ((__tmp155815
                                                    (let ((__tmp155816
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155816)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155813
                                                    (let ((__tmp155814
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153967_ __tmp155814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155815
                                                     __tmp155813))))
                                        (declare (not safe))
                                        (cons __tmp155817 __tmp155812))))
                                 (declare (not safe))
                                 (cons __tmp155820 __tmp155811))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155810 _stx153910_)))
                      _$e153972_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153908_
                            __checked?154790
                            __klass154786
                            '#f))
                         (let ((__tmp155762
                                (let* ((_$obj153977_
                                        (let ((__tmp155763 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155763)))
                                       (__tmp155764
                                        (let ((__tmp155806
                                               (let ((__tmp155807
                                                      (let ((__tmp155809
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153977_ '())))
                    (__tmp155808
                     (let () (declare (not safe)) (cons _object153967_ '()))))
                (declare (not safe))
                (cons __tmp155809 __tmp155808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155807 '())))
                                              (__tmp155765
                                               (let ((__tmp155766
                                                      (let ((__tmp155767
                                                             (let ((__tmp155798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155799
                                   (let ((__tmp155803
                                          (let ((__tmp155804
                                                 (let ((__tmp155805
                                                        (##structure-ref
                                                         _klass153963_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155805 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155804)))
                                         (__tmp155800
                                          (let ((__tmp155801
                                                 (let ((__tmp155802
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153977_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155802))))
                                            (declare (not safe))
                                            (cons __tmp155801 '()))))
                                     (declare (not safe))
                                     (cons __tmp155803 __tmp155800))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155799)))
                           (__tmp155768
                            (let ((__tmp155786
                                   (let ((__tmp155787
                                          (let ((__tmp155795
                                                 (let ((__tmp155796
                                                        (let ((__tmp155797
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153908_
                          __id154789
                          __klass154786
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155797 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155796)))
                                                (__tmp155788
                                                 (let ((__tmp155793
                                                        (let ((__tmp155794
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153965_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155794)))
               (__tmp155789
                (let ((__tmp155791
                       (let ((__tmp155792
                              (let ()
                                (declare (not safe))
                                (cons _$obj153977_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155792)))
                      (__tmp155790
                       (let () (declare (not safe)) (cons _value153969_ '()))))
                  (declare (not safe))
                  (cons __tmp155791 __tmp155790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155793
                                                         __tmp155789))))
                                            (declare (not safe))
                                            (cons __tmp155795 __tmp155788))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155787)))
                                  (__tmp155769
                                   (let ((__tmp155770
                                          (let ((__tmp155771
                                                 (let ((__tmp155784
                                                        (let ((__tmp155785
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155785)))
               (__tmp155772
                (let ((__tmp155781
                       (let ((__tmp155782
                              (let ((__tmp155783
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153908_
                                        __id154789
                                        __klass154786
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155783 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155782)))
                      (__tmp155773
                       (let ((__tmp155779
                              (let ((__tmp155780
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153977_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155780)))
                             (__tmp155774
                              (let ((__tmp155776
                                     (let ((__tmp155777
                                            (let ((__tmp155778
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153908_
                                                      __slot154788
                                                      __klass154786
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155778 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155777)))
                                    (__tmp155775
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153969_ '()))))
                                (declare (not safe))
                                (cons __tmp155776 __tmp155775))))
                         (declare (not safe))
                         (cons __tmp155779 __tmp155774))))
                  (declare (not safe))
                  (cons __tmp155781 __tmp155773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155784
                                                         __tmp155772))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155771))))
                                     (declare (not safe))
                                     (cons __tmp155770 '()))))
                              (declare (not safe))
                              (cons __tmp155786 __tmp155769))))
                       (declare (not safe))
                       (cons __tmp155798 __tmp155768))))
                (declare (not safe))
                (cons '%#if __tmp155767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155766 '()))))
                                          (declare (not safe))
                                          (cons __tmp155806 __tmp155765))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155764))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155762 _stx153910_))
                         (let ((__tmp155752
                                (let ((__tmp155753
                                       (let ((__tmp155760
                                              (let ((__tmp155761
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155761)))
                                             (__tmp155754
                                              (let ((__tmp155755
                                                     (let ((__tmp155757
                                                            (let ((__tmp155758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155759
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153908_
                                     __slot154788
                                     __klass154786
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155759 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155758)))
                   (__tmp155756
                    (let () (declare (not safe)) (cons _value153969_ '()))))
               (declare (not safe))
               (cons __tmp155757 __tmp155756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153967_
                                                      __tmp155755))))
                                         (declare (not safe))
                                         (cons __tmp155760 __tmp155754))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155753))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155752
                            _stx153910_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153921153943_
                                           _hd153918153935_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153913153927_
                                             _g153914153930_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153913153927_ _g153914153930_)))))
                          (let ()
                            (declare (not safe))
                            (_g153913153927_ _g153914153930_))))))
              (declare (not safe))
              (_g153912153979_ _args153911_))))))
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
      (lambda (_self153741_ _ctx153742_ _stx153743_ _args153744_)
        (let* ((_self153745153754_ _self153741_)
               (_E153747153758_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153745153754_))))
               (_K153748153765_
                (lambda (_inline153761_ _dispatch153762_ _arity153763_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153741_ _args153744_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153743_
                         _arity153763_)))
                  (if _inline153761_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155848
                               (let ((__tmp155849
                                      (_inline153761_ _stx153743_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155849
                                  _stx153743_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153742_ __tmp155848)))
                      (if _dispatch153762_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153762_))
                            (let ((__tmp155843
                                   (let ((__tmp155844
                                          (let ((__tmp155845
                                                 (let ((__tmp155846
                                                        (let ((__tmp155847
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153762_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155846
                                                         _args153744_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155845))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155844
                                      _stx153743_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153742_ __tmp155843)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153742_ _stx153743_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153745153754_ 'gxc#!lambda::t))
              (let* ((_e153749153768_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153745153754_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153750153771_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153745153754_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153774_ _e153750153771_)
                     (_e153751153776_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153745153754_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153779_ _e153751153776_)
                     (_e153752153781_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153745153754_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153784_ _e153752153781_))
                (declare (not safe))
                (_K153748153765_
                 _inline153784_
                 _dispatch153779_
                 _arity153774_))
              (let () (declare (not safe)) (_E153747153758_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153579_ _ctx153580_ _stx153581_ _args153582_)
        (let* ((_self153583153590_ _self153579_)
               (_E153585153594_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153583153590_))))
               (_K153586153608_
                (lambda (_clauses153597_)
                  (let ((_$e153603_
                         (let ((__tmp155850
                                (lambda (_g153598153600_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153598153600_
                                     _args153582_)))))
                           (declare (not safe))
                           (find __tmp155850 _clauses153597_))))
                    (if _$e153603_
                        ((lambda (_clause153606_)
                           (let ((__method155064
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153606_
                                     'optimize-call))))
                             (if __method155064
                                 (__method155064
                                  _clause153606_
                                  _ctx153580_
                                  _stx153581_
                                  _args153582_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153606_
                                          'optimize-call)))))
                         _$e153603_)
                        (let ((__tmp155851
                               (map gxc#!lambda-arity _clauses153597_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153581_
                           __tmp155851)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153583153590_
                 'gxc#!case-lambda::t))
              (let* ((_e153587153611_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153583153590_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153588153614_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153583153590_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153617_ _e153588153614_))
                (declare (not safe))
                (_K153586153608_ _clauses153617_))
              (let () (declare (not safe)) (_E153585153594_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153393_ _args153394_)
        (let* ((_self153395153402_ _self153393_)
               (_E153397153406_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153395153402_))))
               (_K153398153446_
                (lambda (_arity153409_)
                  (let* ((_arity153410153419_ _arity153409_)
                         (_E153413153423_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153410153419_)))))
                    (let ((_K153417153443_
                           (lambda ()
                             (fx= (length _args153394_) _arity153409_)))
                          (_K153414153429_
                           (lambda (_arity153427_)
                             (fx>= (length _args153394_) _arity153427_))))
                      (let ((_try-match153412153439_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153410153419_))
                                   (let ((_tl153416153434_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153410153419_)))
                                         (_hd153415153432_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153410153419_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153416153434_))
                                         (let ((_arity153437_
                                                _hd153415153432_))
                                           (declare (not safe))
                                           (_K153414153429_ _arity153437_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153413153423_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153413153423_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153410153419_))
                            (let () (declare (not safe)) (_K153417153443_))
                            (let ()
                              (declare (not safe))
                              (_try-match153412153439_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153395153402_ 'gxc#!lambda::t))
              (let* ((_e153399153449_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153395153402_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153400153452_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153395153402_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153455_ _e153400153452_))
                (declare (not safe))
                (_K153398153446_ _arity153455_))
              (let () (declare (not safe)) (_E153397153406_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self153277_ _ctx153278_ _stx153279_ _args153280_)
        (let* ((_self153281153289_ _self153277_)
               (_E153283153293_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153281153289_))))
               (_K153284153377_
                (lambda (_dispatch153296_ _table153297_)
                  (let* ((_g153298153307_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch153296_)))
                         (_else153300153315_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch153296_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx153278_ _stx153279_))))
                         (_K153302153361_
                          (lambda (_main153318_ _keys153319_)
                            (let ((_g155852_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx153279_
                                      _args153280_))))
                              (begin
                                (let ((_g155853_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155852_)
                                             (##vector-length _g155852_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155853_ 2)))
                                      (error "Context expects 2 values"
                                             _g155853_)))
                                (let ((_pargs153321_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155852_ 0)))
                                      (_kwargs153322_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155852_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main153318_))
                                    (if _table153297_
                                        (let ((_xargs153329_
                                               (map (lambda (_key153324_)
                                                      (let ((_$e153326_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key153324_ _kwargs153322_))))
                (if _$e153326_ (values _$e153326_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys153319_)))
                                          (for-each
                                           (lambda (_kw153331_)
                                             (if (memq (car _kw153331_)
                                                       _keys153319_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx153279_
                                                    _keys153319_
                                                    _kw153331_))))
                                           _kwargs153322_)
                                          (let ((__tmp155905
                                                 (let ((__tmp155906
                                                        (let ((__tmp155907
                                                               (let ((__tmp155912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155913
                                     (let ()
                                       (declare (not safe))
                                       (cons _main153318_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155913)))
                             (__tmp155908
                              (let ((__tmp155910
                                     (let ((__tmp155911
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155911)))
                                    (__tmp155909
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs153321_
                                               _xargs153329_))))
                                (declare (not safe))
                                (cons __tmp155910 __tmp155909))))
                         (declare (not safe))
                         (cons __tmp155912 __tmp155908))))
                  (declare (not safe))
                  (cons '%#call __tmp155907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155906
                                                    _stx153279_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153278_
                                             __tmp155905)))
                                        (let* ((_kwt153333_
                                                (let ((__tmp155854
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155854)))
                                               (_kwvars153336_
                                                (map (lambda (_g155855_)
                                                       (let ((__tmp155856
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155856)))
                                                     _kwargs153322_))
                                               (_kwbind153341_
                                                (map (lambda (_kw153338_
                                                              _kwvar153339_)
                                                       (let ((__tmp155859
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153339_ '())))
                     (__tmp155857
                      (let ((__tmp155858 (cdr _kw153338_)))
                        (declare (not safe))
                        (cons __tmp155858 '()))))
                 (declare (not safe))
                 (cons __tmp155859 __tmp155857)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153322_
                                                     _kwvars153336_))
                                               (_kwset153346_
                                                (map (lambda (_kw153343_
                                                              _kwvar153344_)
                                                       (let ((__tmp155860
                                                              (let ((__tmp155861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155869
                                    (let ((__tmp155870
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153333_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155870)))
                                   (__tmp155862
                                    (let ((__tmp155866
                                           (let ((__tmp155867
                                                  (let ((__tmp155868
                                                         (car _kw153343_)))
                                                    (declare (not safe))
                                                    (cons __tmp155868 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155867)))
                                          (__tmp155863
                                           (let ((__tmp155864
                                                  (let ((__tmp155865
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155865))))
                                             (declare (not safe))
                                             (cons __tmp155864 '()))))
                                      (declare (not safe))
                                      (cons __tmp155866 __tmp155863))))
                               (declare (not safe))
                               (cons __tmp155869 __tmp155862))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155861))))
                 (declare (not safe))
                 (cons '%#call __tmp155860)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153322_
                                                     _kwvars153336_))
                                               (_xkwargs153351_
                                                (map (lambda (_kw153348_
                                                              _kwvar153349_)
                                                       (let ((__tmp155873
                                                              (car _kw153348_))
                                                             (__tmp155871
                                                              (let ((__tmp155872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153349_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155872))))
                 (declare (not safe))
                 (cons __tmp155873 __tmp155871)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153322_
                                                     _kwvars153336_))
                                               (_xargs153358_
                                                (map (lambda (_key153353_)
                                                       (let ((_$e153355_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153353_ _xkwargs153351_))))
                 (if _$e153355_ (values _$e153355_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys153319_)))
                                          (let ((__tmp155874
                                                 (let ((__tmp155875
                                                        (let ((__tmp155876
                                                               (let ((__tmp155877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155878
                                     (let ((__tmp155879
                                            (let ((__tmp155893
                                                   (let ((__tmp155894
                                                          (let ((__tmp155904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153333_ '())))
                        (__tmp155895
                         (let ((__tmp155896
                                (let ((__tmp155897
                                       (let ((__tmp155898
                                              (let ((__tmp155899
                                                     (let ((__tmp155901
                                                            (let ((__tmp155902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155903 (length _kwargs153322_)))
                             (declare (not safe))
                             (cons __tmp155903 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155902)))
                   (__tmp155900
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155901 __tmp155900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155899))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155898))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155897
                                   _stx153279_))))
                           (declare (not safe))
                           (cons __tmp155896 '()))))
                    (declare (not safe))
                    (cons __tmp155904 __tmp155895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155894 '())))
                                                  (__tmp155880
                                                   (let ((__tmp155881
                                                          (let ((__tmp155882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155883
                                (let ((__tmp155884
                                       (let ((__tmp155885
                                              (let ((__tmp155886
                                                     (let ((__tmp155891
                                                            (let ((__tmp155892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main153318_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155892)))
                   (__tmp155887
                    (let ((__tmp155889
                           (let ((__tmp155890
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153333_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155890)))
                          (__tmp155888
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs153321_ _xargs153358_))))
                      (declare (not safe))
                      (cons __tmp155889 __tmp155888))))
               (declare (not safe))
               (cons __tmp155891 __tmp155887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155886))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155885
                                          _stx153279_))))
                                  (declare (not safe))
                                  (cons __tmp155884 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155883 _kwset153346_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155881 '()))))
                                              (declare (not safe))
                                              (cons __tmp155893 __tmp155880))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155879))))
                                (declare (not safe))
                                (cons __tmp155878 '()))))
                         (declare (not safe))
                         (cons _kwbind153341_ __tmp155877))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155876))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155875
                                                    _stx153279_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153278_
                                             __tmp155874)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g153298153307_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e153303153364_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153298153307_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e153304153367_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153298153307_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153370_ _e153304153367_)
                               (_e153305153372_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153298153307_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153375_ _e153305153372_))
                          (declare (not safe))
                          (_K153302153361_ _main153375_ _keys153370_))
                        (let () (declare (not safe)) (_else153300153315_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153281153289_
                 'gxc#!kw-lambda::t))
              (let* ((_e153285153380_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153281153289_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153286153383_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153281153289_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153386_ _e153286153383_)
                     (_e153287153388_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153281153289_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153391_ _e153287153388_))
                (declare (not safe))
                (_K153284153377_ _dispatch153391_ _table153386_))
              (let () (declare (not safe)) (_E153283153293_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152890_ _args152891_)
        (let _lp152893_ ((_rest152895_ _args152891_)
                         (_pargs152896_ '())
                         (_kwargs152897_ '()))
          (let* ((___stx154944154945_ _rest152895_)
                 (_g152903152955_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154944154945_)))))
            (let ((___kont154946154947_
                   (lambda (_L153134_ _L153135_)
                     (let ((__tmp155914
                            (let ()
                              (declare (not safe))
                              (cons _L153135_ _pargs152896_))))
                       (declare (not safe))
                       (_lp152893_ _L153134_ __tmp155914 _kwargs152897_))))
                  (___kont154948154949_
                   (lambda (_L153080_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L153080_ _pargs152896_))
                             (reverse _kwargs152897_))))
                  (___kont154950154951_
                   (lambda (_L153027_ _L153028_ _L153029_)
                     (let ((_kw153046_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L153029_))))
                       (if (assq _kw153046_ _kwargs152897_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152890_
                              _kw153046_))
                           (let ((__tmp155915
                                  (let ((__tmp155916
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw153046_ _L153028_))))
                                    (declare (not safe))
                                    (cons __tmp155916 _kwargs152897_))))
                             (declare (not safe))
                             (_lp152893_
                              _L153027_
                              _pargs152896_
                              __tmp155915))))))
                  (___kont154952154953_
                   (lambda (_L152975_ _L152976_)
                     (let ((__tmp155917
                            (let ()
                              (declare (not safe))
                              (cons _L152976_ _pargs152896_))))
                       (declare (not safe))
                       (_lp152893_ _L152975_ __tmp155917 _kwargs152897_))))
                  (___kont154954154955_
                   (lambda ()
                     (values (reverse _pargs152896_)
                             (reverse _kwargs152897_)))))
              (let* ((_g152902152962_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154944154945_))
                            (___kont154954154955_)
                            (let () (declare (not safe)) (_g152903152955_)))))
                     (___match155051155052_
                      (lambda (_e152936152995_
                               _hd152935152998_
                               _tl152934153000_
                               _e152939153003_
                               _hd152938153006_
                               _tl152937153008_
                               _e152942153011_
                               _hd152941153014_
                               _tl152940153016_
                               _e152945153019_
                               _hd152944153022_
                               _tl152943153024_)
                        (let ((_L153027_ _tl152943153024_)
                              (_L153028_ _hd152944153022_)
                              (_L153029_ _hd152941153014_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L153029_))
                              (___kont154950154951_
                               _L153027_
                               _L153028_
                               _L153029_)
                              (___kont154952154953_
                               _tl152934153000_
                               _hd152935152998_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154944154945_))
                    (let ((_e152909153099_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154944154945_))))
                      (let ((_tl152907153104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152909153099_)))
                            (_hd152908153102_
                             (let ()
                               (declare (not safe))
                               (##car _e152909153099_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152908153102_))
                            (let ((_e152912153107_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152908153102_))))
                              (let ((_tl152910153112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152912153107_)))
                                    (_hd152911153110_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152912153107_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152911153110_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152911153110_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152910153112_))
                                            (let ((_e152915153115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152910153112_))))
                                              (let ((_tl152913153120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152915153115_)))
                                                    (_hd152914153118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152915153115_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152914153118_))
                                                    (let ((_e152916153123_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152914153118_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152916153123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152913153120_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152907153104_))
                          (let ((_e152919153126_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152907153104_))))
                            (let ((_tl152917153131_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152919153126_)))
                                  (_hd152918153129_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152919153126_))))
                              (___kont154946154947_
                               _tl152917153131_
                               _hd152918153129_)))
                          (___kont154952154953_
                           _tl152907153104_
                           _hd152908153102_))
                      (___kont154952154953_ _tl152907153104_ _hd152908153102_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152916153123_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152913153120_))
                          (___kont154948154949_ _tl152907153104_)
                          (___kont154952154953_
                           _tl152907153104_
                           _hd152908153102_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152913153120_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152907153104_))
                              (let ((_e152945153019_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152907153104_))))
                                (let ((_tl152943153024_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152945153019_)))
                                      (_hd152944153022_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152945153019_))))
                                  (___match155051155052_
                                   _e152909153099_
                                   _hd152908153102_
                                   _tl152907153104_
                                   _e152912153107_
                                   _hd152911153110_
                                   _tl152910153112_
                                   _e152915153115_
                                   _hd152914153118_
                                   _tl152913153120_
                                   _e152945153019_
                                   _hd152944153022_
                                   _tl152943153024_)))
                              (___kont154952154953_
                               _tl152907153104_
                               _hd152908153102_))
                          (___kont154952154953_
                           _tl152907153104_
                           _hd152908153102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152913153120_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152907153104_))
                                                            (let ((_e152945153019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152907153104_))))
                      (let ((_tl152943153024_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152945153019_)))
                            (_hd152944153022_
                             (let ()
                               (declare (not safe))
                               (##car _e152945153019_))))
                        (___match155051155052_
                         _e152909153099_
                         _hd152908153102_
                         _tl152907153104_
                         _e152912153107_
                         _hd152911153110_
                         _tl152910153112_
                         _e152915153115_
                         _hd152914153118_
                         _tl152913153120_
                         _e152945153019_
                         _hd152944153022_
                         _tl152943153024_)))
                    (___kont154952154953_ _tl152907153104_ _hd152908153102_))
                (___kont154952154953_ _tl152907153104_ _hd152908153102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154952154953_
                                             _tl152907153104_
                                             _hd152908153102_))
                                        (___kont154952154953_
                                         _tl152907153104_
                                         _hd152908153102_))
                                    (___kont154952154953_
                                     _tl152907153104_
                                     _hd152908153102_))))
                            (___kont154952154953_
                             _tl152907153104_
                             _hd152908153102_))))
                    (let () (declare (not safe)) (_g152902152962_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152885_ _ctx152886_ _stx152887_ _args152888_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152886_ _stx152887_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
