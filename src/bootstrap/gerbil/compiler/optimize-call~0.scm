(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710781154)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp155063 (list gxc#::basic-xform::t))
            (__tmp155061
             (let ((__tmp155062
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155062 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp155063
         '()
         __tmp155061
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154764_
        (apply make-instance gxc#::optimize-call::t _$args154764_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx154756_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154759_
                (let ((__obj155058
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj155058))
               (__tmp155064
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154759_ _stx154756_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155064
           gxc#current-compile-method
           _self154759_))))
    (define gxc#optimize-call%
      (lambda (_self154610_ _stx154611_)
        (let* ((___stx154809154810_ _stx154611_)
               (_g154614154634_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154809154810_)))))
          (let ((___kont154811154812_
                 (lambda (_L154678_ _L154679_)
                   (let* ((_rator-id154697_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154679_)))
                          (_rator-type154699_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154697_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154699_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp155065
                                  (##structure-ref
                                   _rator-type154699_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154697_
                              '" => "
                              _rator-type154699_
                              '" "
                              __tmp155065))
                           (let ((_optimized154702_
                                  (let ((__method155059
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154699_
                                            'optimize-call))))
                                    (if __method155059
                                        (__method155059
                                         _rator-type154699_
                                         _self154610_
                                         _stx154611_
                                         _L154678_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154699_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154699_))
                                 _optimized154702_
                                 (let* ((___stx154791154792_ _optimized154702_)
                                        (_g154705154715_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154791154792_)))))
                                   (let ((___kont154793154794_
                                          (lambda (_L154735_)
                                            (let ((__tmp155066
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154735_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp155066
                                               _stx154611_))))
                                         (___kont154795154796_
                                          (lambda () _optimized154702_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154791154792_))
                                         (let ((_e154710154727_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154791154792_))))
                                           (let ((_tl154708154732_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154710154727_)))
                                                 (_hd154709154730_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154710154727_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154709154730_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154709154730_))
                                                     (___kont154793154794_
                                                      _tl154708154732_)
                                                     (___kont154795154796_))
                                                 (___kont154795154796_))))
                                         (___kont154795154796_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154699_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154610_ _stx154611_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154611_
                                _rator-type154699_)))))))
                (___kont154813154814_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154610_ _stx154611_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154809154810_))
                (let ((_e154620154646_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154809154810_))))
                  (let ((_tl154618154651_
                         (let () (declare (not safe)) (##cdr _e154620154646_)))
                        (_hd154619154649_
                         (let ()
                           (declare (not safe))
                           (##car _e154620154646_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154618154651_))
                        (let ((_e154623154654_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154618154651_))))
                          (let ((_tl154621154659_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154623154654_)))
                                (_hd154622154657_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154623154654_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154622154657_))
                                (let ((_e154626154662_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154622154657_))))
                                  (let ((_tl154624154667_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154626154662_)))
                                        (_hd154625154665_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154626154662_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154625154665_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154625154665_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154624154667_))
                                                (let ((_e154629154670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154624154667_))))
                                                  (let ((_tl154627154675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154629154670_)))
                                                        (_hd154628154673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154629154670_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154627154675_))
                                                        (___kont154811154812_
                                                         _tl154621154659_
                                                         _hd154628154673_)
                                                        (___kont154813154814_))))
                                                (___kont154813154814_))
                                            (___kont154813154814_))
                                        (___kont154813154814_))))
                                (___kont154813154814_))))
                        (___kont154813154814_))))
                (___kont154813154814_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154563_ _ctx154564_ _stx154565_ _args154566_)
        (let* ((_g154568154578_
                (lambda (_g154569154575_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154569154575_))))
               (_g154567154607_
                (lambda (_g154569154581_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154569154581_))
                      (let ((_e154573154583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154569154581_))))
                        (let ((_hd154572154586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154573154583_)))
                              (_tl154571154588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154573154583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154571154588_))
                              ((lambda (_L154591_)
                                 (let* ((_klass154602_
                                         (let ((__tmp155067
                                                (##structure-ref
                                                 _self154563_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154565_
                                            __tmp155067)))
                                        (_object154604_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154564_
                                            _L154591_))))
                                   (if (##structure-ref
                                        _klass154602_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155083
                                              (let ((__tmp155084
                                                     (let ((__tmp155086
                                                            (let ((__tmp155087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155088
                                  (##structure-ref
                                   _klass154602_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155088 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155087)))
                   (__tmp155085
                    (let () (declare (not safe)) (cons _object154604_ '()))))
               (declare (not safe))
               (cons __tmp155086 __tmp155085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp155084))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155083
                                          _stx154565_))
                                       (if (##structure-ref
                                            _klass154602_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155077
                                                  (let ((__tmp155078
                                                         (let ((__tmp155080
                                                                (let ((__tmp155081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155082
                                      (##structure-ref
                                       _klass154602_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155082 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155081)))
                       (__tmp155079
                        (let ()
                          (declare (not safe))
                          (cons _object154604_ '()))))
                   (declare (not safe))
                   (cons __tmp155080 __tmp155079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp155078))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155077
                                              _stx154565_))
                                           (let ((__tmp155068
                                                  (let ((__tmp155069
                                                         (let ((__tmp155075
                                                                (let ((__tmp155076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155076)))
                       (__tmp155070
                        (let ((__tmp155072
                               (let ((__tmp155073
                                      (let ((__tmp155074
                                             (##structure-ref
                                              _self154563_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp155074 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp155073)))
                              (__tmp155071
                               (let ()
                                 (declare (not safe))
                                 (cons _object154604_ '()))))
                          (declare (not safe))
                          (cons __tmp155072 __tmp155071))))
                   (declare (not safe))
                   (cons __tmp155075 __tmp155070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp155069))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155068
                                              _stx154565_))))))
                               _hd154572154586_)
                              (let ()
                                (declare (not safe))
                                (_g154568154578_ _g154569154581_)))))
                      (let ()
                        (declare (not safe))
                        (_g154568154578_ _g154569154581_))))))
          (declare (not safe))
          (_g154567154607_ _args154566_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154766 __method-table154767)
        (let ((__id154768
               (let ((__slot154769
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154766 'id))))
                 (if __slot154769
                     __slot154769
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154563_ _ctx154564_ _stx154565_ _args154566_)
            (let* ((_g154568154578_
                    (lambda (_g154569154575_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154569154575_))))
                   (_g154567154607_
                    (lambda (_g154569154581_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154569154581_))
                          (let ((_e154573154583_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154569154581_))))
                            (let ((_hd154572154586_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154573154583_)))
                                  (_tl154571154588_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154573154583_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154571154588_))
                                  ((lambda (_L154591_)
                                     (let* ((_klass154602_
                                             (let ((__tmp155089
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154563_
                                                       __id154768
                                                       __klass154766
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154565_
                                                __tmp155089)))
                                            (_object154604_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154564_
                                                _L154591_))))
                                       (if (##structure-ref
                                            _klass154602_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155105
                                                  (let ((__tmp155106
                                                         (let ((__tmp155108
                                                                (let ((__tmp155109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155110
                                      (##structure-ref
                                       _klass154602_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155110 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155109)))
                       (__tmp155107
                        (let ()
                          (declare (not safe))
                          (cons _object154604_ '()))))
                   (declare (not safe))
                   (cons __tmp155108 __tmp155107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp155106))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155105
                                              _stx154565_))
                                           (if (##structure-ref
                                                _klass154602_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155099
                                                      (let ((__tmp155100
                                                             (let ((__tmp155102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155103
                                   (let ((__tmp155104
                                          (##structure-ref
                                           _klass154602_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155104 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp155103)))
                           (__tmp155101
                            (let ()
                              (declare (not safe))
                              (cons _object154604_ '()))))
                       (declare (not safe))
                       (cons __tmp155102 __tmp155101))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp155100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155099
                                                  _stx154565_))
                                               (let ((__tmp155090
                                                      (let ((__tmp155091
                                                             (let ((__tmp155097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155098
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155098)))
                           (__tmp155092
                            (let ((__tmp155094
                                   (let ((__tmp155095
                                          (let ((__tmp155096
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154563_
                                                    __id154768
                                                    __klass154766
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp155096 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp155095)))
                                  (__tmp155093
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154604_ '()))))
                              (declare (not safe))
                              (cons __tmp155094 __tmp155093))))
                       (declare (not safe))
                       (cons __tmp155097 __tmp155092))))
                (declare (not safe))
                (cons '%#call __tmp155091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155090
                                                  _stx154565_))))))
                                   _hd154572154586_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154568154578_ _g154569154581_)))))
                          (let ()
                            (declare (not safe))
                            (_g154568154578_ _g154569154581_))))))
              (declare (not safe))
              (_g154567154607_ _args154566_))))))
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
      (lambda (_self154278_ _ctx154279_ _stx154280_ _args154281_)
        (let* ((_klass154283_
                (let ((__tmp155111
                       (##structure-ref _self154278_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx154280_ __tmp155111)))
               (_fields154285_
                (length (##structure-ref _klass154283_ '5 gxc#!class::t '#f)))
               (_args154291_
                (map (lambda (_g154286154288_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx154279_ _g154286154288_)))
                     _args154281_))
               (_inline-make-object154293_
                (let ((__tmp155112
                       (let ((__tmp155118
                              (let ((__tmp155119
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155119)))
                             (__tmp155113
                              (let ((__tmp155115
                                     (let ((__tmp155116
                                            (let ((__tmp155117
                                                   (##structure-ref
                                                    _self154278_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155117 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155116)))
                                    (__tmp155114
                                     (make-list _fields154285_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp155115 __tmp155114))))
                         (declare (not safe))
                         (cons __tmp155118 __tmp155113))))
                  (declare (not safe))
                  (cons '%#call __tmp155112))))
          (let ((_$e154296_
                 (##structure-ref _klass154283_ '6 gxc#!class::t '#f)))
            (if _$e154296_
                ((lambda (_ctor154299_)
                   (let ((_$obj154301_
                          (let ((__tmp155219 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp155219)))
                         (_ctor-impl154302_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass154283_
                             _ctor154299_))))
                     (let ((__tmp155220
                            (let ((__tmp155221
                                   (let ((__tmp155289
                                          (let ((__tmp155290
                                                 (let ((__tmp155292
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj154301_
                                                                '())))
                                                       (__tmp155291
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object154293_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155292
                                                         __tmp155291))))
                                            (declare (not safe))
                                            (cons __tmp155290 '())))
                                         (__tmp155222
                                          (let ((__tmp155223
                                                 (let ((__tmp155224
                                                        (let ((__tmp155228
                                                               (if _ctor-impl154302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155283
                                  (let ((__tmp155287
                                         (let ((__tmp155288
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl154302_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155288)))
                                        (__tmp155284
                                         (let ((__tmp155285
                                                (let ((__tmp155286
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj154301_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155286))))
                                           (declare (not safe))
                                           (cons __tmp155285 _args154291_))))
                                    (declare (not safe))
                                    (cons __tmp155287 __tmp155284))))
                             (declare (not safe))
                             (cons '%#call __tmp155283))
                           (let* ((_$ctor154304_
                                   (let ((__tmp155229 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp155229)))
                                  (__tmp155230
                                   (let ((__tmp155265
                                          (let ((__tmp155266
                                                 (let ((__tmp155282
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor154304_
                                                                '())))
                                                       (__tmp155267
                                                        (let ((__tmp155268
                                                               (let ((__tmp155269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155280
                                     (let ((__tmp155281
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155281)))
                                    (__tmp155270
                                     (let ((__tmp155277
                                            (let ((__tmp155278
                                                   (let ((__tmp155279
                                                          (##structure-ref
                                                           _self154278_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp155279 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155278)))
                                           (__tmp155271
                                            (let ((__tmp155275
                                                   (let ((__tmp155276
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155276)))
                                                  (__tmp155272
                                                   (let ((__tmp155273
                                                          (let ((__tmp155274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor154299_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155273 '()))))
                                              (declare (not safe))
                                              (cons __tmp155275 __tmp155272))))
                                       (declare (not safe))
                                       (cons __tmp155277 __tmp155271))))
                                (declare (not safe))
                                (cons __tmp155280 __tmp155270))))
                         (declare (not safe))
                         (cons '%#call __tmp155269))))
                  (declare (not safe))
                  (cons __tmp155268 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155282
                                                         __tmp155267))))
                                            (declare (not safe))
                                            (cons __tmp155266 '())))
                                         (__tmp155231
                                          (let ((__tmp155232
                                                 (let ((__tmp155233
                                                        (let ((__tmp155263
                                                               (let ((__tmp155264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor154304_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155264)))
                      (__tmp155234
                       (let ((__tmp155256
                              (let ((__tmp155257
                                     (let ((__tmp155261
                                            (let ((__tmp155262
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor154304_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155262)))
                                           (__tmp155258
                                            (let ((__tmp155259
                                                   (let ((__tmp155260
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155260))))
                                              (declare (not safe))
                                              (cons __tmp155259
                                                    _args154291_))))
                                       (declare (not safe))
                                       (cons __tmp155261 __tmp155258))))
                                (declare (not safe))
                                (cons '%#call __tmp155257)))
                             (__tmp155235
                              (let ((__tmp155236
                                     (let ((__tmp155237
                                            (let ((__tmp155254
                                                   (let ((__tmp155255
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155255)))
                                                  (__tmp155238
                                                   (let ((__tmp155252
                                                          (let ((__tmp155253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155253)))
                 (__tmp155239
                  (let ((__tmp155250
                         (let ((__tmp155251
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155251)))
                        (__tmp155240
                         (let ((__tmp155247
                                (let ((__tmp155248
                                       (let ((__tmp155249
                                              (##structure-ref
                                               _self154278_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155249 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155248)))
                               (__tmp155241
                                (let ((__tmp155245
                                       (let ((__tmp155246
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155246)))
                                      (__tmp155242
                                       (let ((__tmp155243
                                              (let ((__tmp155244
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor154299_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp155244))))
                                         (declare (not safe))
                                         (cons __tmp155243 '()))))
                                  (declare (not safe))
                                  (cons __tmp155245 __tmp155242))))
                           (declare (not safe))
                           (cons __tmp155247 __tmp155241))))
                    (declare (not safe))
                    (cons __tmp155250 __tmp155240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155252
                                                           __tmp155239))))
                                              (declare (not safe))
                                              (cons __tmp155254 __tmp155238))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155237))))
                                (declare (not safe))
                                (cons __tmp155236 '()))))
                         (declare (not safe))
                         (cons __tmp155256 __tmp155235))))
                  (declare (not safe))
                  (cons __tmp155263 __tmp155234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp155233))))
                                            (declare (not safe))
                                            (cons __tmp155232 '()))))
                                     (declare (not safe))
                                     (cons __tmp155265 __tmp155231))))
                             (declare (not safe))
                             (cons '%#let-values __tmp155230))))
                      (__tmp155225
                       (let ((__tmp155226
                              (let ((__tmp155227
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj154301_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155227))))
                         (declare (not safe))
                         (cons __tmp155226 '()))))
                  (declare (not safe))
                  (cons __tmp155228 __tmp155225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp155224))))
                                            (declare (not safe))
                                            (cons __tmp155223 '()))))
                                     (declare (not safe))
                                     (cons __tmp155289 __tmp155222))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155221))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155220 _stx154280_))))
                 _$e154296_)
                (let ((_$e154306_
                       (##structure-ref _klass154283_ '10 gxc#!class::t '#f)))
                  (if _$e154306_
                      ((lambda (_metaclass154309_)
                         (let* ((_$obj154311_
                                 (let ((__tmp155181 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155181)))
                                (_metakons154313_
                                 (let ((__tmp155182
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx154280_
                                           _metaclass154309_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp155182
                                    'instance-init!))))
                           (let ((__tmp155183
                                  (let ((__tmp155184
                                         (let ((__tmp155215
                                                (let ((__tmp155216
                                                       (let ((__tmp155218
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154311_ '())))
                     (__tmp155217
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object154293_ '()))))
                 (declare (not safe))
                 (cons __tmp155218 __tmp155217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155216 '())))
                                               (__tmp155185
                                                (let ((__tmp155186
                                                       (let ((__tmp155187
                                                              (let ((__tmp155191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons154313_
                                 (let ((__tmp155205
                                        (let ((__tmp155213
                                               (let ((__tmp155214
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons154313_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155214)))
                                              (__tmp155206
                                               (let ((__tmp155210
                                                      (let ((__tmp155211
                                                             (let ((__tmp155212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154278_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155212 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155211)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155207
                                                      (let ((__tmp155208
                                                             (let ((__tmp155209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj154311_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155209))))
                (declare (not safe))
                (cons __tmp155208 _args154291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155210
                                                       __tmp155207))))
                                          (declare (not safe))
                                          (cons __tmp155213 __tmp155206))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155205))
                                 (let ((__tmp155192
                                        (let ((__tmp155203
                                               (let ((__tmp155204
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155204)))
                                              (__tmp155193
                                               (let ((__tmp155200
                                                      (let ((__tmp155201
                                                             (let ((__tmp155202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154278_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155202 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155201)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155194
                                                      (let ((__tmp155198
                                                             (let ((__tmp155199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp155199)))
                    (__tmp155195
                     (let ((__tmp155196
                            (let ((__tmp155197
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154311_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155197))))
                       (declare (not safe))
                       (cons __tmp155196 _args154291_))))
                (declare (not safe))
                (cons __tmp155198 __tmp155195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155200
                                                       __tmp155194))))
                                          (declare (not safe))
                                          (cons __tmp155203 __tmp155193))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155192))))
                            (__tmp155188
                             (let ((__tmp155189
                                    (let ((__tmp155190
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj154311_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155190))))
                               (declare (not safe))
                               (cons __tmp155189 '()))))
                        (declare (not safe))
                        (cons __tmp155191 __tmp155188))))
                 (declare (not safe))
                 (cons '%#begin __tmp155187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155186 '()))))
                                           (declare (not safe))
                                           (cons __tmp155215 __tmp155185))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp155184))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp155183 _stx154280_))))
                       _$e154306_)
                      (if (##structure-ref _klass154283_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args154291_) _fields154285_)
                              (let ((__tmp155173
                                     (let ((__tmp155174
                                            (let ((__tmp155179
                                                   (let ((__tmp155180
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155180)))
                                                  (__tmp155175
                                                   (let ((__tmp155176
                                                          (let ((__tmp155177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155178
                                (##structure-ref
                                 _self154278_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp155178 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155176
                                                           _args154291_))))
                                              (declare (not safe))
                                              (cons __tmp155179 __tmp155175))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155174))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp155173
                                 _stx154280_))
                              (let ((__tmp155172
                                     (##structure-ref
                                      _self154278_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp155171
                                     (length (##structure-ref
                                              _klass154283_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx154280_
                                 __tmp155172
                                 __tmp155171)))
                          (let ((_$obj154316_
                                 (let ((__tmp155120 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155120))))
                            (let _lp154318_ ((_rest154320_ _args154291_)
                                             (_initializers154321_ '()))
                              (let* ((___stx154847154848_ _rest154320_)
                                     (_g154325154346_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154847154848_)))))
                                (let ((___kont154849154850_
                                       (lambda (_L154400_ _L154401_ _L154402_)
                                         (let* ((_slot154433_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L154402_))))
                                                (_off154435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass154283_
                                                    _slot154433_))))
                                           (if _off154435_
                                               (let ((__tmp155122
                                                      (let ((__tmp155123
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154435_ _L154401_))))
                (declare (not safe))
                (cons __tmp155123 _initializers154321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp154318_
                                                  _L154400_
                                                  __tmp155122))
                                               (let ((__tmp155121
                                                      (##structure-ref
                                                       _self154278_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx154280_
                                                  __tmp155121
                                                  _slot154433_))))))
                                      (___kont154851154852_
                                       (lambda ()
                                         (let ((__tmp155124
                                                (let ((__tmp155125
                                                       (let ((__tmp155148
                                                              (let ((__tmp155149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155151
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154316_ '())))
                                   (__tmp155150
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154293_ '()))))
                               (declare (not safe))
                               (cons __tmp155151 __tmp155150))))
                        (declare (not safe))
                        (cons __tmp155149 '())))
                     (__tmp155126
                      (let ((__tmp155127
                             (let ((__tmp155128
                                    (let ((__tmp155145
                                           (let ((__tmp155146
                                                  (let ((__tmp155147
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155147))))
                                             (declare (not safe))
                                             (cons __tmp155146 '())))
                                          (__tmp155129
                                           (let ((__tmp155130
                                                  (lambda (_i154360_ _r154361_)
                                                    (let ((__tmp155131
                                                           (let ((__tmp155132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155142
                                 (let ((__tmp155143
                                        (let ((__tmp155144
                                               (##structure-ref
                                                _self154278_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155144 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155143)))
                                (__tmp155133
                                 (let ((__tmp155139
                                        (let ((__tmp155140
                                               (let ((__tmp155141
                                                      (car _i154360_)))
                                                 (declare (not safe))
                                                 (cons __tmp155141 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155140)))
                                       (__tmp155134
                                        (let ((__tmp155137
                                               (let ((__tmp155138
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj154316_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155138)))
                                              (__tmp155135
                                               (let ((__tmp155136
                                                      (cdr _i154360_)))
                                                 (declare (not safe))
                                                 (cons __tmp155136 '()))))
                                          (declare (not safe))
                                          (cons __tmp155137 __tmp155135))))
                                   (declare (not safe))
                                   (cons __tmp155139 __tmp155134))))
                            (declare (not safe))
                            (cons __tmp155142 __tmp155133))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp155132))))
              (declare (not safe))
              (cons __tmp155131 _r154361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp155130
                                                     '()
                                                     _initializers154321_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp155145 __tmp155129))))
                               (declare (not safe))
                               (cons '%#begin __tmp155128))))
                        (declare (not safe))
                        (cons __tmp155127 '()))))
                 (declare (not safe))
                 (cons __tmp155148 __tmp155126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155125))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155124
                                            _stx154280_))))
                                      (___kont154853154854_
                                       (lambda ()
                                         (let ((__tmp155152
                                                (let ((__tmp155153
                                                       (let ((__tmp155167
                                                              (let ((__tmp155168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155170
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154316_ '())))
                                   (__tmp155169
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154293_ '()))))
                               (declare (not safe))
                               (cons __tmp155170 __tmp155169))))
                        (declare (not safe))
                        (cons __tmp155168 '())))
                     (__tmp155154
                      (let ((__tmp155155
                             (let ((__tmp155156
                                    (let ((__tmp155160
                                           (let ((__tmp155161
                                                  (let ((__tmp155165
                                                         (let ((__tmp155166
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp155166)))
                (__tmp155162
                 (let ((__tmp155163
                        (let ((__tmp155164
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj154316_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155164))))
                   (declare (not safe))
                   (cons __tmp155163 _args154291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155165
                                                          __tmp155162))))
                                             (declare (not safe))
                                             (cons '%#call __tmp155161)))
                                          (__tmp155157
                                           (let ((__tmp155158
                                                  (let ((__tmp155159
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155159))))
                                             (declare (not safe))
                                             (cons __tmp155158 '()))))
                                      (declare (not safe))
                                      (cons __tmp155160 __tmp155157))))
                               (declare (not safe))
                               (cons '%#begin __tmp155156))))
                        (declare (not safe))
                        (cons __tmp155155 '()))))
                 (declare (not safe))
                 (cons __tmp155167 __tmp155154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155153))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155152
                                            _stx154280_)))))
                                  (let* ((_g154323154363_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154847154848_))
                                                (___kont154851154852_)
                                                (___kont154853154854_))))
                                         (___match154884154885_
                                          (lambda (_e154332154368_
                                                   _hd154331154371_
                                                   _tl154330154373_
                                                   _e154335154376_
                                                   _hd154334154379_
                                                   _tl154333154381_
                                                   _e154338154384_
                                                   _hd154337154387_
                                                   _tl154336154389_
                                                   _e154341154392_
                                                   _hd154340154395_
                                                   _tl154339154397_)
                                            (let ((_L154400_ _tl154339154397_)
                                                  (_L154401_ _hd154340154395_)
                                                  (_L154402_ _hd154337154387_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154402_))
                                                  (___kont154849154850_
                                                   _L154400_
                                                   _L154401_
                                                   _L154402_)
                                                  (___kont154853154854_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154847154848_))
                                        (let ((_e154332154368_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154847154848_))))
                                          (let ((_tl154330154373_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154332154368_)))
                                                (_hd154331154371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154332154368_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154331154371_))
                                                (let ((_e154335154376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154331154371_))))
                                                  (let ((_tl154333154381_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154335154376_)))
                                                        (_hd154334154379_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154335154376_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154334154379_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154334154379_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154333154381_))
                        (let ((_e154338154384_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154333154381_))))
                          (let ((_tl154336154389_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154338154384_)))
                                (_hd154337154387_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154338154384_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154336154389_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154330154373_))
                                    (let ((_e154341154392_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154330154373_))))
                                      (let ((_tl154339154397_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154341154392_)))
                                            (_hd154340154395_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154341154392_))))
                                        (___match154884154885_
                                         _e154332154368_
                                         _hd154331154371_
                                         _tl154330154373_
                                         _e154335154376_
                                         _hd154334154379_
                                         _tl154333154381_
                                         _e154338154384_
                                         _hd154337154387_
                                         _tl154336154389_
                                         _e154341154392_
                                         _hd154340154395_
                                         _tl154339154397_)))
                                    (___kont154853154854_))
                                (___kont154853154854_))))
                        (___kont154853154854_))
                    (___kont154853154854_))
                (___kont154853154854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154853154854_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154323154363_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
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
          (lambda (_self154278_ _ctx154279_ _stx154280_ _args154281_)
            (let* ((_klass154283_
                    (let ((__tmp155293
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self154278_
                              __id154772
                              __klass154770
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx154280_ __tmp155293)))
                   (_fields154285_
                    (length (##structure-ref
                             _klass154283_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args154291_
                    (map (lambda (_g154286154288_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx154279_ _g154286154288_)))
                         _args154281_))
                   (_inline-make-object154293_
                    (let ((__tmp155294
                           (let ((__tmp155300
                                  (let ((__tmp155301
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155301)))
                                 (__tmp155295
                                  (let ((__tmp155297
                                         (let ((__tmp155298
                                                (let ((__tmp155299
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154278_
                                                          __id154772
                                                          __klass154770
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155299 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155298)))
                                        (__tmp155296
                                         (make-list
                                          _fields154285_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp155297 __tmp155296))))
                             (declare (not safe))
                             (cons __tmp155300 __tmp155295))))
                      (declare (not safe))
                      (cons '%#call __tmp155294))))
              (let ((_$e154296_
                     (##structure-ref _klass154283_ '6 gxc#!class::t '#f)))
                (if _$e154296_
                    ((lambda (_ctor154299_)
                       (let ((_$obj154301_
                              (let ((__tmp155401 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155401)))
                             (_ctor-impl154302_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass154283_
                                 _ctor154299_))))
                         (let ((__tmp155402
                                (let ((__tmp155403
                                       (let ((__tmp155471
                                              (let ((__tmp155472
                                                     (let ((__tmp155474
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj154301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155473
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object154293_ '()))))
               (declare (not safe))
               (cons __tmp155474 __tmp155473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155472 '())))
                                             (__tmp155404
                                              (let ((__tmp155405
                                                     (let ((__tmp155406
                                                            (let ((__tmp155410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl154302_
                               (let ((__tmp155465
                                      (let ((__tmp155469
                                             (let ((__tmp155470
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl154302_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155470)))
                                            (__tmp155466
                                             (let ((__tmp155467
                                                    (let ((__tmp155468
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj154301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155467
                                                     _args154291_))))
                                        (declare (not safe))
                                        (cons __tmp155469 __tmp155466))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155465))
                               (let* ((_$ctor154304_
                                       (let ((__tmp155411
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155411)))
                                      (__tmp155412
                                       (let ((__tmp155447
                                              (let ((__tmp155448
                                                     (let ((__tmp155464
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor154304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155449
                    (let ((__tmp155450
                           (let ((__tmp155451
                                  (let ((__tmp155462
                                         (let ((__tmp155463
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155463)))
                                        (__tmp155452
                                         (let ((__tmp155459
                                                (let ((__tmp155460
                                                       (let ((__tmp155461
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self154278_
                         __id154772
                         __klass154770
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155461 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155460)))
                                               (__tmp155453
                                                (let ((__tmp155457
                                                       (let ((__tmp155458
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154301_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155458)))
              (__tmp155454
               (let ((__tmp155455
                      (let ((__tmp155456
                             (let ()
                               (declare (not safe))
                               (cons _ctor154299_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155456))))
                 (declare (not safe))
                 (cons __tmp155455 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155457
                                                        __tmp155454))))
                                           (declare (not safe))
                                           (cons __tmp155459 __tmp155453))))
                                    (declare (not safe))
                                    (cons __tmp155462 __tmp155452))))
                             (declare (not safe))
                             (cons '%#call __tmp155451))))
                      (declare (not safe))
                      (cons __tmp155450 '()))))
               (declare (not safe))
               (cons __tmp155464 __tmp155449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155448 '())))
                                             (__tmp155413
                                              (let ((__tmp155414
                                                     (let ((__tmp155415
                                                            (let ((__tmp155445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155446
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor154304_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155446)))
                          (__tmp155416
                           (let ((__tmp155438
                                  (let ((__tmp155439
                                         (let ((__tmp155443
                                                (let ((__tmp155444
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor154304_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155444)))
                                               (__tmp155440
                                                (let ((__tmp155441
                                                       (let ((__tmp155442
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154301_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155441
                                                        _args154291_))))
                                           (declare (not safe))
                                           (cons __tmp155443 __tmp155440))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155439)))
                                 (__tmp155417
                                  (let ((__tmp155418
                                         (let ((__tmp155419
                                                (let ((__tmp155436
                                                       (let ((__tmp155437
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155437)))
              (__tmp155420
               (let ((__tmp155434
                      (let ((__tmp155435
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155435)))
                     (__tmp155421
                      (let ((__tmp155432
                             (let ((__tmp155433
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155433)))
                            (__tmp155422
                             (let ((__tmp155429
                                    (let ((__tmp155430
                                           (let ((__tmp155431
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self154278_
                                                     __id154772
                                                     __klass154770
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155431 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155430)))
                                   (__tmp155423
                                    (let ((__tmp155427
                                           (let ((__tmp155428
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155428)))
                                          (__tmp155424
                                           (let ((__tmp155425
                                                  (let ((__tmp155426
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor154299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155426))))
                                             (declare (not safe))
                                             (cons __tmp155425 '()))))
                                      (declare (not safe))
                                      (cons __tmp155427 __tmp155424))))
                               (declare (not safe))
                               (cons __tmp155429 __tmp155423))))
                        (declare (not safe))
                        (cons __tmp155432 __tmp155422))))
                 (declare (not safe))
                 (cons __tmp155434 __tmp155421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155436
                                                        __tmp155420))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155419))))
                                    (declare (not safe))
                                    (cons __tmp155418 '()))))
                             (declare (not safe))
                             (cons __tmp155438 __tmp155417))))
                      (declare (not safe))
                      (cons __tmp155445 __tmp155416))))
               (declare (not safe))
               (cons '%#if __tmp155415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155414 '()))))
                                         (declare (not safe))
                                         (cons __tmp155447 __tmp155413))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155412))))
                          (__tmp155407
                           (let ((__tmp155408
                                  (let ((__tmp155409
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj154301_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155409))))
                             (declare (not safe))
                             (cons __tmp155408 '()))))
                      (declare (not safe))
                      (cons __tmp155410 __tmp155407))))
               (declare (not safe))
               (cons '%#begin __tmp155406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155405 '()))))
                                         (declare (not safe))
                                         (cons __tmp155471 __tmp155404))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155403))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155402 _stx154280_))))
                     _$e154296_)
                    (let ((_$e154306_
                           (##structure-ref
                            _klass154283_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e154306_
                          ((lambda (_metaclass154309_)
                             (let* ((_$obj154311_
                                     (let ((__tmp155363 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155363)))
                                    (_metakons154313_
                                     (let ((__tmp155364
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx154280_
                                               _metaclass154309_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155364
                                        'instance-init!))))
                               (let ((__tmp155365
                                      (let ((__tmp155366
                                             (let ((__tmp155397
                                                    (let ((__tmp155398
                                                           (let ((__tmp155400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj154311_ '())))
                         (__tmp155399
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object154293_ '()))))
                     (declare (not safe))
                     (cons __tmp155400 __tmp155399))))
              (declare (not safe))
              (cons __tmp155398 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155367
                                                    (let ((__tmp155368
                                                           (let ((__tmp155369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155373
                                 (if _metakons154313_
                                     (let ((__tmp155387
                                            (let ((__tmp155395
                                                   (let ((__tmp155396
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons154313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155396)))
                                                  (__tmp155388
                                                   (let ((__tmp155392
                                                          (let ((__tmp155393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155394
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154278_
                                   __id154772
                                   __klass154770
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155394 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155393)))
                 (__tmp155389
                  (let ((__tmp155390
                         (let ((__tmp155391
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj154311_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155391))))
                    (declare (not safe))
                    (cons __tmp155390 _args154291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155392
                                                           __tmp155389))))
                                              (declare (not safe))
                                              (cons __tmp155395 __tmp155388))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155387))
                                     (let ((__tmp155374
                                            (let ((__tmp155385
                                                   (let ((__tmp155386
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155386)))
                                                  (__tmp155375
                                                   (let ((__tmp155382
                                                          (let ((__tmp155383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155384
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154278_
                                   __id154772
                                   __klass154770
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155384 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155383)))
                 (__tmp155376
                  (let ((__tmp155380
                         (let ((__tmp155381
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155381)))
                        (__tmp155377
                         (let ((__tmp155378
                                (let ((__tmp155379
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj154311_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155379))))
                           (declare (not safe))
                           (cons __tmp155378 _args154291_))))
                    (declare (not safe))
                    (cons __tmp155380 __tmp155377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155382
                                                           __tmp155376))))
                                              (declare (not safe))
                                              (cons __tmp155385 __tmp155375))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155374))))
                                (__tmp155370
                                 (let ((__tmp155371
                                        (let ((__tmp155372
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj154311_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155372))))
                                   (declare (not safe))
                                   (cons __tmp155371 '()))))
                            (declare (not safe))
                            (cons __tmp155373 __tmp155370))))
                     (declare (not safe))
                     (cons '%#begin __tmp155369))))
              (declare (not safe))
              (cons __tmp155368 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155397
                                                     __tmp155367))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155366))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155365
                                  _stx154280_))))
                           _$e154306_)
                          (if (##structure-ref
                               _klass154283_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args154291_) _fields154285_)
                                  (let ((__tmp155355
                                         (let ((__tmp155356
                                                (let ((__tmp155361
                                                       (let ((__tmp155362
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155362)))
              (__tmp155357
               (let ((__tmp155358
                      (let ((__tmp155359
                             (let ((__tmp155360
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self154278_
                                       __id154772
                                       __klass154770
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155360 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155359))))
                 (declare (not safe))
                 (cons __tmp155358 _args154291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155361
                                                        __tmp155357))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155356))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155355
                                     _stx154280_))
                                  (let ((__tmp155354
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self154278_
                                            __id154772
                                            __klass154770
                                            '#f)))
                                        (__tmp155353
                                         (length (##structure-ref
                                                  _klass154283_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx154280_
                                     __tmp155354
                                     __tmp155353)))
                              (let ((_$obj154316_
                                     (let ((__tmp155302 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155302))))
                                (let _lp154318_ ((_rest154320_ _args154291_)
                                                 (_initializers154321_ '()))
                                  (let* ((___stx154889154890_ _rest154320_)
                                         (_g154325154346_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154889154890_)))))
                                    (let ((___kont154891154892_
                                           (lambda (_L154400_
                                                    _L154401_
                                                    _L154402_)
                                             (let* ((_slot154433_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154402_))))
                                                    (_off154435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass154283_
                                                        _slot154433_))))
                                               (if _off154435_
                                                   (let ((__tmp155304
                                                          (let ((__tmp155305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154435_ _L154401_))))
                    (declare (not safe))
                    (cons __tmp155305 _initializers154321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp154318_
                                                      _L154400_
                                                      __tmp155304))
                                                   (let ((__tmp155303
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self154278_
                                                             __id154772
                                                             __klass154770
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx154280_
                                                      __tmp155303
                                                      _slot154433_))))))
                                          (___kont154893154894_
                                           (lambda ()
                                             (let ((__tmp155306
                                                    (let ((__tmp155307
                                                           (let ((__tmp155330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155331
                                 (let ((__tmp155333
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154316_ '())))
                                       (__tmp155332
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154293_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155333 __tmp155332))))
                            (declare (not safe))
                            (cons __tmp155331 '())))
                         (__tmp155308
                          (let ((__tmp155309
                                 (let ((__tmp155310
                                        (let ((__tmp155327
                                               (let ((__tmp155328
                                                      (let ((__tmp155329
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154316_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155328 '())))
                                              (__tmp155311
                                               (let ((__tmp155312
                                                      (lambda (_i154360_
                                                               _r154361_)
                                                        (let ((__tmp155313
                                                               (let ((__tmp155314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155324
                                     (let ((__tmp155325
                                            (let ((__tmp155326
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154278_
                                                      __id154772
                                                      __klass154770
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155326 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155325)))
                                    (__tmp155315
                                     (let ((__tmp155321
                                            (let ((__tmp155322
                                                   (let ((__tmp155323
                                                          (car _i154360_)))
                                                     (declare (not safe))
                                                     (cons __tmp155323 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155322)))
                                           (__tmp155316
                                            (let ((__tmp155319
                                                   (let ((__tmp155320
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155320)))
                                                  (__tmp155317
                                                   (let ((__tmp155318
                                                          (cdr _i154360_)))
                                                     (declare (not safe))
                                                     (cons __tmp155318 '()))))
                                              (declare (not safe))
                                              (cons __tmp155319 __tmp155317))))
                                       (declare (not safe))
                                       (cons __tmp155321 __tmp155316))))
                                (declare (not safe))
                                (cons __tmp155324 __tmp155315))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp155314))))
                  (declare (not safe))
                  (cons __tmp155313 _r154361_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp155312
                                                         '()
                                                         _initializers154321_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155327
                                                  __tmp155311))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155310))))
                            (declare (not safe))
                            (cons __tmp155309 '()))))
                     (declare (not safe))
                     (cons __tmp155330 __tmp155308))))
              (declare (not safe))
              (cons '%#let-values __tmp155307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155306
                                                _stx154280_))))
                                          (___kont154895154896_
                                           (lambda ()
                                             (let ((__tmp155334
                                                    (let ((__tmp155335
                                                           (let ((__tmp155349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155350
                                 (let ((__tmp155352
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154316_ '())))
                                       (__tmp155351
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154293_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155352 __tmp155351))))
                            (declare (not safe))
                            (cons __tmp155350 '())))
                         (__tmp155336
                          (let ((__tmp155337
                                 (let ((__tmp155338
                                        (let ((__tmp155342
                                               (let ((__tmp155343
                                                      (let ((__tmp155347
                                                             (let ((__tmp155348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155348)))
                    (__tmp155344
                     (let ((__tmp155345
                            (let ((__tmp155346
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154316_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155346))))
                       (declare (not safe))
                       (cons __tmp155345 _args154291_))))
                (declare (not safe))
                (cons __tmp155347 __tmp155344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155343)))
                                              (__tmp155339
                                               (let ((__tmp155340
                                                      (let ((__tmp155341
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154316_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155340 '()))))
                                          (declare (not safe))
                                          (cons __tmp155342 __tmp155339))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155338))))
                            (declare (not safe))
                            (cons __tmp155337 '()))))
                     (declare (not safe))
                     (cons __tmp155349 __tmp155336))))
              (declare (not safe))
              (cons '%#let-values __tmp155335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155334
                                                _stx154280_)))))
                                      (let* ((_g154323154363_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154889154890_))
                                                    (___kont154893154894_)
                                                    (___kont154895154896_))))
                                             (___match154926154927_
                                              (lambda (_e154332154368_
                                                       _hd154331154371_
                                                       _tl154330154373_
                                                       _e154335154376_
                                                       _hd154334154379_
                                                       _tl154333154381_
                                                       _e154338154384_
                                                       _hd154337154387_
                                                       _tl154336154389_
                                                       _e154341154392_
                                                       _hd154340154395_
                                                       _tl154339154397_)
                                                (let ((_L154400_
                                                       _tl154339154397_)
                                                      (_L154401_
                                                       _hd154340154395_)
                                                      (_L154402_
                                                       _hd154337154387_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154402_))
                                                      (___kont154891154892_
                                                       _L154400_
                                                       _L154401_
                                                       _L154402_)
                                                      (___kont154895154896_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154889154890_))
                                            (let ((_e154332154368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154889154890_))))
                                              (let ((_tl154330154373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154332154368_)))
                                                    (_hd154331154371_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154332154368_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154331154371_))
                                                    (let ((_e154335154376_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154331154371_))))
                                                      (let ((_tl154333154381_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154335154376_)))
                    (_hd154334154379_
                     (let () (declare (not safe)) (##car _e154335154376_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154334154379_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154334154379_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154333154381_))
                            (let ((_e154338154384_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154333154381_))))
                              (let ((_tl154336154389_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154338154384_)))
                                    (_hd154337154387_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154338154384_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154336154389_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154330154373_))
                                        (let ((_e154341154392_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154330154373_))))
                                          (let ((_tl154339154397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154341154392_)))
                                                (_hd154340154395_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154341154392_))))
                                            (___match154926154927_
                                             _e154332154368_
                                             _hd154331154371_
                                             _tl154330154373_
                                             _e154335154376_
                                             _hd154334154379_
                                             _tl154333154381_
                                             _e154338154384_
                                             _hd154337154387_
                                             _tl154336154389_
                                             _e154341154392_
                                             _hd154340154395_
                                             _tl154339154397_)))
                                        (___kont154895154896_))
                                    (___kont154895154896_))))
                            (___kont154895154896_))
                        (___kont154895154896_))
                    (___kont154895154896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154895154896_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154323154363_))))))))))))))))))
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
      (lambda (_self154100_ _ctx154101_ _stx154102_ _args154103_)
        (let* ((_g154105154115_
                (lambda (_g154106154112_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154106154112_))))
               (_g154104154153_
                (lambda (_g154106154118_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154106154118_))
                      (let ((_e154110154120_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154106154118_))))
                        (let ((_hd154109154123_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154110154120_)))
                              (_tl154108154125_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154110154120_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154108154125_))
                              ((lambda (_L154128_)
                                 (let* ((_klass154139_
                                         (let ((__tmp155475
                                                (##structure-ref
                                                 _self154100_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154102_
                                            __tmp155475)))
                                        (_field154141_
                                         (let ((__tmp155476
                                                (##structure-ref
                                                 _self154100_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass154139_
                                            __tmp155476)))
                                        (_object154143_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154101_
                                            _L154128_))))
                                   (if (##structure-ref
                                        _klass154139_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155553
                                              (let ((__tmp155562
                                                     (if (##structure-ref
                                                          _self154100_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155554
                                                     (let ((__tmp155559
                                                            (let ((__tmp155560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155561
                                  (##structure-ref
                                   _self154100_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155561 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155560)))
                   (__tmp155555
                    (let ((__tmp155557
                           (let ((__tmp155558
                                  (let ()
                                    (declare (not safe))
                                    (cons _field154141_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155558)))
                          (__tmp155556
                           (let ()
                             (declare (not safe))
                             (cons _object154143_ '()))))
                      (declare (not safe))
                      (cons __tmp155557 __tmp155556))))
               (declare (not safe))
               (cons __tmp155559 __tmp155555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155562
                                                      __tmp155554))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155553
                                          _stx154102_))
                                       (if (##structure-ref
                                            _klass154139_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155543
                                                  (let ((__tmp155552
                                                         (if (##structure-ref
                                                              _self154100_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155544
                                                         (let ((__tmp155549
                                                                (let ((__tmp155550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155551
                                      (##structure-ref
                                       _self154100_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155551 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155550)))
                       (__tmp155545
                        (let ((__tmp155547
                               (let ((__tmp155548
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154141_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155548)))
                              (__tmp155546
                               (let ()
                                 (declare (not safe))
                                 (cons _object154143_ '()))))
                          (declare (not safe))
                          (cons __tmp155547 __tmp155546))))
                   (declare (not safe))
                   (cons __tmp155549 __tmp155545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155552
                                                          __tmp155544))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155543
                                              _stx154102_))
                                           (let ((_$e154146_
                                                  (let ((__tmp155477
                                                         (##structure-ref
                                                          _self154100_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass154139_
                                                     __tmp155477))))
                                             (if _$e154146_
                                                 ((lambda (_klass154149_)
                                                    (let ((__tmp155533
                                                           (let ((__tmp155542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self154100_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155534
                          (let ((__tmp155539
                                 (let ((__tmp155540
                                        (let ((__tmp155541
                                               (##structure-ref
                                                _self154100_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155541 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155540)))
                                (__tmp155535
                                 (let ((__tmp155537
                                        (let ((__tmp155538
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field154141_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155538)))
                                       (__tmp155536
                                        (let ()
                                          (declare (not safe))
                                          (cons _object154143_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155537 __tmp155536))))
                            (declare (not safe))
                            (cons __tmp155539 __tmp155535))))
                     (declare (not safe))
                     (cons __tmp155542 __tmp155534))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155533 _stx154102_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e154146_)
                                                 (if (##structure-ref
                                                      _self154100_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155487
                                                            (let* ((_$obj154151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155488 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155488)))
                           (__tmp155489
                            (let ((__tmp155529
                                   (let ((__tmp155530
                                          (let ((__tmp155532
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj154151_ '())))
                                                (__tmp155531
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object154143_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155532 __tmp155531))))
                                     (declare (not safe))
                                     (cons __tmp155530 '())))
                                  (__tmp155490
                                   (let ((__tmp155491
                                          (let ((__tmp155492
                                                 (let ((__tmp155521
                                                        (let ((__tmp155522
                                                               (let ((__tmp155526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155527
                                     (let ((__tmp155528
                                            (##structure-ref
                                             _klass154139_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155528 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155527)))
                             (__tmp155523
                              (let ((__tmp155524
                                     (let ((__tmp155525
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj154151_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155525))))
                                (declare (not safe))
                                (cons __tmp155524 '()))))
                         (declare (not safe))
                         (cons __tmp155526 __tmp155523))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155522)))
               (__tmp155493
                (let ((__tmp155510
                       (let ((__tmp155511
                              (let ((__tmp155518
                                     (let ((__tmp155519
                                            (let ((__tmp155520
                                                   (##structure-ref
                                                    _self154100_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155520 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155519)))
                                    (__tmp155512
                                     (let ((__tmp155516
                                            (let ((__tmp155517
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154141_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155517)))
                                           (__tmp155513
                                            (let ((__tmp155514
                                                   (let ((__tmp155515
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155515))))
                                              (declare (not safe))
                                              (cons __tmp155514 '()))))
                                       (declare (not safe))
                                       (cons __tmp155516 __tmp155513))))
                                (declare (not safe))
                                (cons __tmp155518 __tmp155512))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155511)))
                      (__tmp155494
                       (let ((__tmp155495
                              (let ((__tmp155496
                                     (let ((__tmp155508
                                            (let ((__tmp155509
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155509)))
                                           (__tmp155497
                                            (let ((__tmp155505
                                                   (let ((__tmp155506
                                                          (let ((__tmp155507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self154100_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155507 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155506)))
                                                  (__tmp155498
                                                   (let ((__tmp155503
                                                          (let ((__tmp155504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj154151_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155504)))
                 (__tmp155499
                  (let ((__tmp155500
                         (let ((__tmp155501
                                (let ((__tmp155502
                                       (##structure-ref
                                        _self154100_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155502 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155501))))
                    (declare (not safe))
                    (cons __tmp155500 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155503
                                                           __tmp155499))))
                                              (declare (not safe))
                                              (cons __tmp155505 __tmp155498))))
                                       (declare (not safe))
                                       (cons __tmp155508 __tmp155497))))
                                (declare (not safe))
                                (cons '%#call __tmp155496))))
                         (declare (not safe))
                         (cons __tmp155495 '()))))
                  (declare (not safe))
                  (cons __tmp155510 __tmp155494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155521
                                                         __tmp155493))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155492))))
                                     (declare (not safe))
                                     (cons __tmp155491 '()))))
                              (declare (not safe))
                              (cons __tmp155529 __tmp155490))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155489))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155487 _stx154102_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155478
                                                            (let ((__tmp155479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155485
                                  (let ((__tmp155486
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155486)))
                                 (__tmp155480
                                  (let ((__tmp155481
                                         (let ((__tmp155482
                                                (let ((__tmp155483
                                                       (let ((__tmp155484
                                                              (##structure-ref
                                                               _self154100_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155484
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155483))))
                                           (declare (not safe))
                                           (cons __tmp155482 '()))))
                                    (declare (not safe))
                                    (cons _object154143_ __tmp155481))))
                             (declare (not safe))
                             (cons __tmp155485 __tmp155480))))
                      (declare (not safe))
                      (cons '%#call __tmp155479))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155478 _stx154102_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd154109154123_)
                              (let ()
                                (declare (not safe))
                                (_g154105154115_ _g154106154118_)))))
                      (let ()
                        (declare (not safe))
                        (_g154105154115_ _g154106154118_))))))
          (declare (not safe))
          (_g154104154153_ _args154103_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154774 __method-table154775)
        (let ((__id154776
               (let ((__slot154779
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154774 'id))))
                 (if __slot154779
                     __slot154779
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154777
               (let ((__slot154780
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154774 'checked?))))
                 (if __slot154780
                     __slot154780
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154778
               (let ((__slot154781
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154774 'slot))))
                 (if __slot154781
                     __slot154781
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self154100_ _ctx154101_ _stx154102_ _args154103_)
            (let* ((_g154105154115_
                    (lambda (_g154106154112_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154106154112_))))
                   (_g154104154153_
                    (lambda (_g154106154118_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154106154118_))
                          (let ((_e154110154120_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154106154118_))))
                            (let ((_hd154109154123_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154110154120_)))
                                  (_tl154108154125_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154110154120_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154108154125_))
                                  ((lambda (_L154128_)
                                     (let* ((_klass154139_
                                             (let ((__tmp155563
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154100_
                                                       __id154776
                                                       __klass154774
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154102_
                                                __tmp155563)))
                                            (_field154141_
                                             (let ((__tmp155564
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154100_
                                                       __slot154778
                                                       __klass154774
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass154139_
                                                __tmp155564)))
                                            (_object154143_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154101_
                                                _L154128_))))
                                       (if (##structure-ref
                                            _klass154139_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155641
                                                  (let ((__tmp155650
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154100_
                        __checked?154777
                        __klass154774
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155642
                 (let ((__tmp155647
                        (let ((__tmp155648
                               (let ((__tmp155649
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self154100_
                                         __id154776
                                         __klass154774
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155649 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155648)))
                       (__tmp155643
                        (let ((__tmp155645
                               (let ((__tmp155646
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154141_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155646)))
                              (__tmp155644
                               (let ()
                                 (declare (not safe))
                                 (cons _object154143_ '()))))
                          (declare (not safe))
                          (cons __tmp155645 __tmp155644))))
                   (declare (not safe))
                   (cons __tmp155647 __tmp155643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155650
                                                          __tmp155642))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155641
                                              _stx154102_))
                                           (if (##structure-ref
                                                _klass154139_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155631
                                                      (let ((__tmp155640
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self154100_
                            __checked?154777
                            __klass154774
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155632
                     (let ((__tmp155637
                            (let ((__tmp155638
                                   (let ((__tmp155639
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self154100_
                                             __id154776
                                             __klass154774
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp155639 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155638)))
                           (__tmp155633
                            (let ((__tmp155635
                                   (let ((__tmp155636
                                          (let ()
                                            (declare (not safe))
                                            (cons _field154141_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155636)))
                                  (__tmp155634
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154143_ '()))))
                              (declare (not safe))
                              (cons __tmp155635 __tmp155634))))
                       (declare (not safe))
                       (cons __tmp155637 __tmp155633))))
                (declare (not safe))
                (cons __tmp155640 __tmp155632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155631
                                                  _stx154102_))
                                               (let ((_$e154146_
                                                      (let ((__tmp155565
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154100_
                        __slot154778
                        __klass154774
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass154139_ __tmp155565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e154146_
                                                     ((lambda (_klass154149_)
                                                        (let ((__tmp155621
                                                               (let ((__tmp155630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self154100_
                                     __checked?154777
                                     __klass154774
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155622
                              (let ((__tmp155627
                                     (let ((__tmp155628
                                            (let ((__tmp155629
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154100_
                                                      __id154776
                                                      __klass154774
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155629 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155628)))
                                    (__tmp155623
                                     (let ((__tmp155625
                                            (let ((__tmp155626
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154141_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155626)))
                                           (__tmp155624
                                            (let ()
                                              (declare (not safe))
                                              (cons _object154143_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155625 __tmp155624))))
                                (declare (not safe))
                                (cons __tmp155627 __tmp155623))))
                         (declare (not safe))
                         (cons __tmp155630 __tmp155622))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155621 _stx154102_)))
              _$e154146_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self154100_
                                                            __checked?154777
                                                            __klass154774
                                                            '#f))
                                                         (let ((__tmp155575
                                                                (let* ((_$obj154151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155576 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155576)))
                               (__tmp155577
                                (let ((__tmp155617
                                       (let ((__tmp155618
                                              (let ((__tmp155620
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj154151_
                                                             '())))
                                                    (__tmp155619
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object154143_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155620
                                                      __tmp155619))))
                                         (declare (not safe))
                                         (cons __tmp155618 '())))
                                      (__tmp155578
                                       (let ((__tmp155579
                                              (let ((__tmp155580
                                                     (let ((__tmp155609
                                                            (let ((__tmp155610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155614
                                  (let ((__tmp155615
                                         (let ((__tmp155616
                                                (##structure-ref
                                                 _klass154139_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155616 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155615)))
                                 (__tmp155611
                                  (let ((__tmp155612
                                         (let ((__tmp155613
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj154151_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155613))))
                                    (declare (not safe))
                                    (cons __tmp155612 '()))))
                             (declare (not safe))
                             (cons __tmp155614 __tmp155611))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155610)))
                   (__tmp155581
                    (let ((__tmp155598
                           (let ((__tmp155599
                                  (let ((__tmp155606
                                         (let ((__tmp155607
                                                (let ((__tmp155608
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154100_
                                                          __id154776
                                                          __klass154774
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155608 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155607)))
                                        (__tmp155600
                                         (let ((__tmp155604
                                                (let ((__tmp155605
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field154141_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155605)))
                                               (__tmp155601
                                                (let ((__tmp155602
                                                       (let ((__tmp155603
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154151_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155602 '()))))
                                           (declare (not safe))
                                           (cons __tmp155604 __tmp155601))))
                                    (declare (not safe))
                                    (cons __tmp155606 __tmp155600))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155599)))
                          (__tmp155582
                           (let ((__tmp155583
                                  (let ((__tmp155584
                                         (let ((__tmp155596
                                                (let ((__tmp155597
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155597)))
                                               (__tmp155585
                                                (let ((__tmp155593
                                                       (let ((__tmp155594
                                                              (let ((__tmp155595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self154100_
                                __id154776
                                __klass154774
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155595 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155594)))
              (__tmp155586
               (let ((__tmp155591
                      (let ((__tmp155592
                             (let ()
                               (declare (not safe))
                               (cons _$obj154151_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155592)))
                     (__tmp155587
                      (let ((__tmp155588
                             (let ((__tmp155589
                                    (let ((__tmp155590
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self154100_
                                              __slot154778
                                              __klass154774
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155590 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155589))))
                        (declare (not safe))
                        (cons __tmp155588 '()))))
                 (declare (not safe))
                 (cons __tmp155591 __tmp155587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155593
                                                        __tmp155586))))
                                           (declare (not safe))
                                           (cons __tmp155596 __tmp155585))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155584))))
                             (declare (not safe))
                             (cons __tmp155583 '()))))
                      (declare (not safe))
                      (cons __tmp155598 __tmp155582))))
               (declare (not safe))
               (cons __tmp155609 __tmp155581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155580))))
                                         (declare (not safe))
                                         (cons __tmp155579 '()))))
                                  (declare (not safe))
                                  (cons __tmp155617 __tmp155578))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155577))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155575 _stx154102_))
                 (let ((__tmp155566
                        (let ((__tmp155567
                               (let ((__tmp155573
                                      (let ((__tmp155574
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155574)))
                                     (__tmp155568
                                      (let ((__tmp155569
                                             (let ((__tmp155570
                                                    (let ((__tmp155571
                                                           (let ((__tmp155572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self154100_
                             __slot154778
                             __klass154774
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155572 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155570 '()))))
                                        (declare (not safe))
                                        (cons _object154143_ __tmp155569))))
                                 (declare (not safe))
                                 (cons __tmp155573 __tmp155568))))
                          (declare (not safe))
                          (cons '%#call __tmp155567))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155566 _stx154102_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd154109154123_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154105154115_ _g154106154118_)))))
                          (let ()
                            (declare (not safe))
                            (_g154105154115_ _g154106154118_))))))
              (declare (not safe))
              (_g154104154153_ _args154103_))))))
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
      (lambda (_self153904_ _ctx153905_ _stx153906_ _args153907_)
        (let* ((_g153909153923_
                (lambda (_g153910153920_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153910153920_))))
               (_g153908153975_
                (lambda (_g153910153926_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153910153926_))
                      (let ((_e153915153928_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153910153926_))))
                        (let ((_hd153914153931_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153915153928_)))
                              (_tl153913153933_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153915153928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153913153933_))
                              (let ((_e153918153936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153913153933_))))
                                (let ((_hd153917153939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153918153936_)))
                                      (_tl153916153941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153918153936_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153916153941_))
                                      ((lambda (_L153944_ _L153945_)
                                         (let* ((_klass153959_
                                                 (let ((__tmp155651
                                                        (##structure-ref
                                                         _self153904_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153906_
                                                    __tmp155651)))
                                                (_field153961_
                                                 (let ((__tmp155652
                                                        (##structure-ref
                                                         _self153904_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153959_
                                                    __tmp155652)))
                                                (_object153963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153905_
                                                    _L153945_)))
                                                (_value153965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153905_
                                                    _L153944_))))
                                           (if (##structure-ref
                                                _klass153959_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155734
                                                      (let ((__tmp155744
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153904_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155735
                     (let ((__tmp155741
                            (let ((__tmp155742
                                   (let ((__tmp155743
                                          (##structure-ref
                                           _self153904_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155743 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155742)))
                           (__tmp155736
                            (let ((__tmp155739
                                   (let ((__tmp155740
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153961_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155740)))
                                  (__tmp155737
                                   (let ((__tmp155738
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153965_ '()))))
                                     (declare (not safe))
                                     (cons _object153963_ __tmp155738))))
                              (declare (not safe))
                              (cons __tmp155739 __tmp155737))))
                       (declare (not safe))
                       (cons __tmp155741 __tmp155736))))
                (declare (not safe))
                (cons __tmp155744 __tmp155735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155734
                                                  _stx153906_))
                                               (if (##structure-ref
                                                    _klass153959_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155723
                                                          (let ((__tmp155733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153904_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155724
                         (let ((__tmp155730
                                (let ((__tmp155731
                                       (let ((__tmp155732
                                              (##structure-ref
                                               _self153904_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155732 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155731)))
                               (__tmp155725
                                (let ((__tmp155728
                                       (let ((__tmp155729
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153961_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155729)))
                                      (__tmp155726
                                       (let ((__tmp155727
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153965_ '()))))
                                         (declare (not safe))
                                         (cons _object153963_ __tmp155727))))
                                  (declare (not safe))
                                  (cons __tmp155728 __tmp155726))))
                           (declare (not safe))
                           (cons __tmp155730 __tmp155725))))
                    (declare (not safe))
                    (cons __tmp155733 __tmp155724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155723
                                                      _stx153906_))
                                                   (let ((_$e153968_
                                                          (let ((__tmp155653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153904_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153959_ __tmp155653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153968_
                                                         ((lambda (_klass153971_)
                                                            (let ((__tmp155712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155722
                                  (if (##structure-ref
                                       _self153904_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155713
                                  (let ((__tmp155719
                                         (let ((__tmp155720
                                                (let ((__tmp155721
                                                       (##structure-ref
                                                        _self153904_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155721 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155720)))
                                        (__tmp155714
                                         (let ((__tmp155717
                                                (let ((__tmp155718
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153961_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155718)))
                                               (__tmp155715
                                                (let ((__tmp155716
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153965_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153963_
                                                        __tmp155716))))
                                           (declare (not safe))
                                           (cons __tmp155717 __tmp155715))))
                                    (declare (not safe))
                                    (cons __tmp155719 __tmp155714))))
                             (declare (not safe))
                             (cons __tmp155722 __tmp155713))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155712 _stx153906_)))
                  _$e153968_)
                 (if (##structure-ref _self153904_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155664
                            (let* ((_$obj153973_
                                    (let ((__tmp155665 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155665)))
                                   (__tmp155666
                                    (let ((__tmp155708
                                           (let ((__tmp155709
                                                  (let ((__tmp155711
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155710
                 (let () (declare (not safe)) (cons _object153963_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155711
                                                          __tmp155710))))
                                             (declare (not safe))
                                             (cons __tmp155709 '())))
                                          (__tmp155667
                                           (let ((__tmp155668
                                                  (let ((__tmp155669
                                                         (let ((__tmp155700
                                                                (let ((__tmp155701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155705
                                      (let ((__tmp155706
                                             (let ((__tmp155707
                                                    (##structure-ref
                                                     _klass153959_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155707 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155706)))
                                     (__tmp155702
                                      (let ((__tmp155703
                                             (let ((__tmp155704
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153973_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155704))))
                                        (declare (not safe))
                                        (cons __tmp155703 '()))))
                                 (declare (not safe))
                                 (cons __tmp155705 __tmp155702))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155701)))
                       (__tmp155670
                        (let ((__tmp155688
                               (let ((__tmp155689
                                      (let ((__tmp155697
                                             (let ((__tmp155698
                                                    (let ((__tmp155699
                                                           (##structure-ref
                                                            _self153904_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155699 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155698)))
                                            (__tmp155690
                                             (let ((__tmp155695
                                                    (let ((__tmp155696
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155696)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155691
                                                    (let ((__tmp155693
                                                           (let ((__tmp155694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153973_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155694)))
                  (__tmp155692
                   (let () (declare (not safe)) (cons _value153965_ '()))))
              (declare (not safe))
              (cons __tmp155693 __tmp155692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155695
                                                     __tmp155691))))
                                        (declare (not safe))
                                        (cons __tmp155697 __tmp155690))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155689)))
                              (__tmp155671
                               (let ((__tmp155672
                                      (let ((__tmp155673
                                             (let ((__tmp155686
                                                    (let ((__tmp155687
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155687)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155674
                                                    (let ((__tmp155683
                                                           (let ((__tmp155684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155685
                                 (##structure-ref
                                  _self153904_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155685 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155684)))
                  (__tmp155675
                   (let ((__tmp155681
                          (let ((__tmp155682
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153973_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155682)))
                         (__tmp155676
                          (let ((__tmp155678
                                 (let ((__tmp155679
                                        (let ((__tmp155680
                                               (##structure-ref
                                                _self153904_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155680 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155679)))
                                (__tmp155677
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153965_ '()))))
                            (declare (not safe))
                            (cons __tmp155678 __tmp155677))))
                     (declare (not safe))
                     (cons __tmp155681 __tmp155676))))
              (declare (not safe))
              (cons __tmp155683 __tmp155675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155686
                                                     __tmp155674))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155673))))
                                 (declare (not safe))
                                 (cons __tmp155672 '()))))
                          (declare (not safe))
                          (cons __tmp155688 __tmp155671))))
                   (declare (not safe))
                   (cons __tmp155700 __tmp155670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155669))))
                                             (declare (not safe))
                                             (cons __tmp155668 '()))))
                                      (declare (not safe))
                                      (cons __tmp155708 __tmp155667))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155666))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155664 _stx153906_))
                     (let ((__tmp155654
                            (let ((__tmp155655
                                   (let ((__tmp155662
                                          (let ((__tmp155663
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155663)))
                                         (__tmp155656
                                          (let ((__tmp155657
                                                 (let ((__tmp155659
                                                        (let ((__tmp155660
                                                               (let ((__tmp155661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153904_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155661 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155660)))
               (__tmp155658
                (let () (declare (not safe)) (cons _value153965_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155659
                                                         __tmp155658))))
                                            (declare (not safe))
                                            (cons _object153963_
                                                  __tmp155657))))
                                     (declare (not safe))
                                     (cons __tmp155662 __tmp155656))))
                              (declare (not safe))
                              (cons '%#call __tmp155655))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155654 _stx153906_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153917153939_
                                       _hd153914153931_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153909153923_ _g153910153926_)))))
                              (let ()
                                (declare (not safe))
                                (_g153909153923_ _g153910153926_)))))
                      (let ()
                        (declare (not safe))
                        (_g153909153923_ _g153910153926_))))))
          (declare (not safe))
          (_g153908153975_ _args153907_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154782 __method-table154783)
        (let ((__id154784
               (let ((__slot154787
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154782 'id))))
                 (if __slot154787
                     __slot154787
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154785
               (let ((__slot154788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154782 'checked?))))
                 (if __slot154788
                     __slot154788
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154786
               (let ((__slot154789
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154782 'slot))))
                 (if __slot154789
                     __slot154789
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self153904_ _ctx153905_ _stx153906_ _args153907_)
            (let* ((_g153909153923_
                    (lambda (_g153910153920_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153910153920_))))
                   (_g153908153975_
                    (lambda (_g153910153926_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153910153926_))
                          (let ((_e153915153928_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153910153926_))))
                            (let ((_hd153914153931_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153915153928_)))
                                  (_tl153913153933_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153915153928_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153913153933_))
                                  (let ((_e153918153936_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153913153933_))))
                                    (let ((_hd153917153939_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153918153936_)))
                                          (_tl153916153941_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153918153936_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153916153941_))
                                          ((lambda (_L153944_ _L153945_)
                                             (let* ((_klass153959_
                                                     (let ((__tmp155745
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153904_
                                                               __id154784
                                                               __klass154782
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153906_
                                                        __tmp155745)))
                                                    (_field153961_
                                                     (let ((__tmp155746
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153904_
                                                               __slot154786
                                                               __klass154782
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153959_
                                                        __tmp155746)))
                                                    (_object153963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153905_
                                                        _L153945_)))
                                                    (_value153965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153905_
                                                        _L153944_))))
                                               (if (##structure-ref
                                                    _klass153959_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155828
                                                          (let ((__tmp155838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153904_
                                __checked?154785
                                __klass154782
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155829
                         (let ((__tmp155835
                                (let ((__tmp155836
                                       (let ((__tmp155837
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153904_
                                                 __id154784
                                                 __klass154782
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155837 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155836)))
                               (__tmp155830
                                (let ((__tmp155833
                                       (let ((__tmp155834
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153961_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155834)))
                                      (__tmp155831
                                       (let ((__tmp155832
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153965_ '()))))
                                         (declare (not safe))
                                         (cons _object153963_ __tmp155832))))
                                  (declare (not safe))
                                  (cons __tmp155833 __tmp155831))))
                           (declare (not safe))
                           (cons __tmp155835 __tmp155830))))
                    (declare (not safe))
                    (cons __tmp155838 __tmp155829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155828
                                                      _stx153906_))
                                                   (if (##structure-ref
                                                        _klass153959_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155817
                                                              (let ((__tmp155827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153904_
                                    __checked?154785
                                    __klass154782
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155818
                             (let ((__tmp155824
                                    (let ((__tmp155825
                                           (let ((__tmp155826
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153904_
                                                     __id154784
                                                     __klass154782
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155826 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155825)))
                                   (__tmp155819
                                    (let ((__tmp155822
                                           (let ((__tmp155823
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153961_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155823)))
                                          (__tmp155820
                                           (let ((__tmp155821
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153965_ '()))))
                                             (declare (not safe))
                                             (cons _object153963_
                                                   __tmp155821))))
                                      (declare (not safe))
                                      (cons __tmp155822 __tmp155820))))
                               (declare (not safe))
                               (cons __tmp155824 __tmp155819))))
                        (declare (not safe))
                        (cons __tmp155827 __tmp155818))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155817 _stx153906_))
               (let ((_$e153968_
                      (let ((__tmp155747
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153904_
                                __slot154786
                                __klass154782
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153959_
                         __tmp155747))))
                 (if _$e153968_
                     ((lambda (_klass153971_)
                        (let ((__tmp155806
                               (let ((__tmp155816
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153904_
                                             __checked?154785
                                             __klass154782
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155807
                                      (let ((__tmp155813
                                             (let ((__tmp155814
                                                    (let ((__tmp155815
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153904_
                                                              __id154784
                                                              __klass154782
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155815 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155814)))
                                            (__tmp155808
                                             (let ((__tmp155811
                                                    (let ((__tmp155812
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155812)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155809
                                                    (let ((__tmp155810
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153963_ __tmp155810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155811
                                                     __tmp155809))))
                                        (declare (not safe))
                                        (cons __tmp155813 __tmp155808))))
                                 (declare (not safe))
                                 (cons __tmp155816 __tmp155807))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155806 _stx153906_)))
                      _$e153968_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153904_
                            __checked?154785
                            __klass154782
                            '#f))
                         (let ((__tmp155758
                                (let* ((_$obj153973_
                                        (let ((__tmp155759 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155759)))
                                       (__tmp155760
                                        (let ((__tmp155802
                                               (let ((__tmp155803
                                                      (let ((__tmp155805
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153973_ '())))
                    (__tmp155804
                     (let () (declare (not safe)) (cons _object153963_ '()))))
                (declare (not safe))
                (cons __tmp155805 __tmp155804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155803 '())))
                                              (__tmp155761
                                               (let ((__tmp155762
                                                      (let ((__tmp155763
                                                             (let ((__tmp155794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155795
                                   (let ((__tmp155799
                                          (let ((__tmp155800
                                                 (let ((__tmp155801
                                                        (##structure-ref
                                                         _klass153959_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155801 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155800)))
                                         (__tmp155796
                                          (let ((__tmp155797
                                                 (let ((__tmp155798
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153973_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155798))))
                                            (declare (not safe))
                                            (cons __tmp155797 '()))))
                                     (declare (not safe))
                                     (cons __tmp155799 __tmp155796))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155795)))
                           (__tmp155764
                            (let ((__tmp155782
                                   (let ((__tmp155783
                                          (let ((__tmp155791
                                                 (let ((__tmp155792
                                                        (let ((__tmp155793
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153904_
                          __id154784
                          __klass154782
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155793 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155792)))
                                                (__tmp155784
                                                 (let ((__tmp155789
                                                        (let ((__tmp155790
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153961_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155790)))
               (__tmp155785
                (let ((__tmp155787
                       (let ((__tmp155788
                              (let ()
                                (declare (not safe))
                                (cons _$obj153973_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155788)))
                      (__tmp155786
                       (let () (declare (not safe)) (cons _value153965_ '()))))
                  (declare (not safe))
                  (cons __tmp155787 __tmp155786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155789
                                                         __tmp155785))))
                                            (declare (not safe))
                                            (cons __tmp155791 __tmp155784))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155783)))
                                  (__tmp155765
                                   (let ((__tmp155766
                                          (let ((__tmp155767
                                                 (let ((__tmp155780
                                                        (let ((__tmp155781
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155781)))
               (__tmp155768
                (let ((__tmp155777
                       (let ((__tmp155778
                              (let ((__tmp155779
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153904_
                                        __id154784
                                        __klass154782
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155779 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155778)))
                      (__tmp155769
                       (let ((__tmp155775
                              (let ((__tmp155776
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153973_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155776)))
                             (__tmp155770
                              (let ((__tmp155772
                                     (let ((__tmp155773
                                            (let ((__tmp155774
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153904_
                                                      __slot154786
                                                      __klass154782
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155774 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155773)))
                                    (__tmp155771
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153965_ '()))))
                                (declare (not safe))
                                (cons __tmp155772 __tmp155771))))
                         (declare (not safe))
                         (cons __tmp155775 __tmp155770))))
                  (declare (not safe))
                  (cons __tmp155777 __tmp155769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155780
                                                         __tmp155768))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155767))))
                                     (declare (not safe))
                                     (cons __tmp155766 '()))))
                              (declare (not safe))
                              (cons __tmp155782 __tmp155765))))
                       (declare (not safe))
                       (cons __tmp155794 __tmp155764))))
                (declare (not safe))
                (cons '%#if __tmp155763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155762 '()))))
                                          (declare (not safe))
                                          (cons __tmp155802 __tmp155761))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155760))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155758 _stx153906_))
                         (let ((__tmp155748
                                (let ((__tmp155749
                                       (let ((__tmp155756
                                              (let ((__tmp155757
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155757)))
                                             (__tmp155750
                                              (let ((__tmp155751
                                                     (let ((__tmp155753
                                                            (let ((__tmp155754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155755
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153904_
                                     __slot154786
                                     __klass154782
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155755 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155754)))
                   (__tmp155752
                    (let () (declare (not safe)) (cons _value153965_ '()))))
               (declare (not safe))
               (cons __tmp155753 __tmp155752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153963_
                                                      __tmp155751))))
                                         (declare (not safe))
                                         (cons __tmp155756 __tmp155750))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155749))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155748
                            _stx153906_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153917153939_
                                           _hd153914153931_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153909153923_
                                             _g153910153926_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153909153923_ _g153910153926_)))))
                          (let ()
                            (declare (not safe))
                            (_g153909153923_ _g153910153926_))))))
              (declare (not safe))
              (_g153908153975_ _args153907_))))))
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
      (lambda (_self153737_ _ctx153738_ _stx153739_ _args153740_)
        (let* ((_self153741153750_ _self153737_)
               (_E153743153754_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153741153750_))))
               (_K153744153761_
                (lambda (_inline153757_ _dispatch153758_ _arity153759_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153737_ _args153740_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153739_
                         _arity153759_)))
                  (if _inline153757_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155844
                               (let ((__tmp155845
                                      (_inline153757_ _stx153739_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155845
                                  _stx153739_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153738_ __tmp155844)))
                      (if _dispatch153758_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153758_))
                            (let ((__tmp155839
                                   (let ((__tmp155840
                                          (let ((__tmp155841
                                                 (let ((__tmp155842
                                                        (let ((__tmp155843
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153758_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155842
                                                         _args153740_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155841))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155840
                                      _stx153739_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153738_ __tmp155839)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153738_ _stx153739_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153741153750_ 'gxc#!lambda::t))
              (let* ((_e153745153764_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153741153750_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153746153767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153741153750_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153770_ _e153746153767_)
                     (_e153747153772_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153741153750_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153775_ _e153747153772_)
                     (_e153748153777_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153741153750_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153780_ _e153748153777_))
                (declare (not safe))
                (_K153744153761_
                 _inline153780_
                 _dispatch153775_
                 _arity153770_))
              (let () (declare (not safe)) (_E153743153754_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153575_ _ctx153576_ _stx153577_ _args153578_)
        (let* ((_self153579153586_ _self153575_)
               (_E153581153590_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153579153586_))))
               (_K153582153604_
                (lambda (_clauses153593_)
                  (let ((_$e153599_
                         (let ((__tmp155846
                                (lambda (_g153594153596_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153594153596_
                                     _args153578_)))))
                           (declare (not safe))
                           (find __tmp155846 _clauses153593_))))
                    (if _$e153599_
                        ((lambda (_clause153602_)
                           (let ((__method155060
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153602_
                                     'optimize-call))))
                             (if __method155060
                                 (__method155060
                                  _clause153602_
                                  _ctx153576_
                                  _stx153577_
                                  _args153578_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153602_
                                          'optimize-call)))))
                         _$e153599_)
                        (let ((__tmp155847
                               (map gxc#!lambda-arity _clauses153593_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153577_
                           __tmp155847)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153579153586_
                 'gxc#!case-lambda::t))
              (let* ((_e153583153607_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153579153586_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153584153610_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153579153586_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153613_ _e153584153610_))
                (declare (not safe))
                (_K153582153604_ _clauses153613_))
              (let () (declare (not safe)) (_E153581153590_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153389_ _args153390_)
        (let* ((_self153391153398_ _self153389_)
               (_E153393153402_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153391153398_))))
               (_K153394153442_
                (lambda (_arity153405_)
                  (let* ((_arity153406153415_ _arity153405_)
                         (_E153409153419_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153406153415_)))))
                    (let ((_K153413153439_
                           (lambda ()
                             (fx= (length _args153390_) _arity153405_)))
                          (_K153410153425_
                           (lambda (_arity153423_)
                             (fx>= (length _args153390_) _arity153423_))))
                      (let ((_try-match153408153435_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153406153415_))
                                   (let ((_tl153412153430_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153406153415_)))
                                         (_hd153411153428_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153406153415_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153412153430_))
                                         (let ((_arity153433_
                                                _hd153411153428_))
                                           (declare (not safe))
                                           (_K153410153425_ _arity153433_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153409153419_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153409153419_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153406153415_))
                            (let () (declare (not safe)) (_K153413153439_))
                            (let ()
                              (declare (not safe))
                              (_try-match153408153435_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153391153398_ 'gxc#!lambda::t))
              (let* ((_e153395153445_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153391153398_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153396153448_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153391153398_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153451_ _e153396153448_))
                (declare (not safe))
                (_K153394153442_ _arity153451_))
              (let () (declare (not safe)) (_E153393153402_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self153273_ _ctx153274_ _stx153275_ _args153276_)
        (let* ((_self153277153285_ _self153273_)
               (_E153279153289_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153277153285_))))
               (_K153280153373_
                (lambda (_dispatch153292_ _table153293_)
                  (let* ((_g153294153303_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch153292_)))
                         (_else153296153311_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch153292_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx153274_ _stx153275_))))
                         (_K153298153357_
                          (lambda (_main153314_ _keys153315_)
                            (let ((_g155848_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx153275_
                                      _args153276_))))
                              (begin
                                (let ((_g155849_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155848_)
                                             (##vector-length _g155848_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155849_ 2)))
                                      (error "Context expects 2 values"
                                             _g155849_)))
                                (let ((_pargs153317_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155848_ 0)))
                                      (_kwargs153318_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155848_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main153314_))
                                    (if _table153293_
                                        (let ((_xargs153325_
                                               (map (lambda (_key153320_)
                                                      (let ((_$e153322_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key153320_ _kwargs153318_))))
                (if _$e153322_ (values _$e153322_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys153315_)))
                                          (for-each
                                           (lambda (_kw153327_)
                                             (if (memq (car _kw153327_)
                                                       _keys153315_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx153275_
                                                    _keys153315_
                                                    _kw153327_))))
                                           _kwargs153318_)
                                          (let ((__tmp155901
                                                 (let ((__tmp155902
                                                        (let ((__tmp155903
                                                               (let ((__tmp155908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155909
                                     (let ()
                                       (declare (not safe))
                                       (cons _main153314_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155909)))
                             (__tmp155904
                              (let ((__tmp155906
                                     (let ((__tmp155907
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155907)))
                                    (__tmp155905
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs153317_
                                               _xargs153325_))))
                                (declare (not safe))
                                (cons __tmp155906 __tmp155905))))
                         (declare (not safe))
                         (cons __tmp155908 __tmp155904))))
                  (declare (not safe))
                  (cons '%#call __tmp155903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155902
                                                    _stx153275_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153274_
                                             __tmp155901)))
                                        (let* ((_kwt153329_
                                                (let ((__tmp155850
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155850)))
                                               (_kwvars153332_
                                                (map (lambda (_g155851_)
                                                       (let ((__tmp155852
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155852)))
                                                     _kwargs153318_))
                                               (_kwbind153337_
                                                (map (lambda (_kw153334_
                                                              _kwvar153335_)
                                                       (let ((__tmp155855
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153335_ '())))
                     (__tmp155853
                      (let ((__tmp155854 (cdr _kw153334_)))
                        (declare (not safe))
                        (cons __tmp155854 '()))))
                 (declare (not safe))
                 (cons __tmp155855 __tmp155853)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153318_
                                                     _kwvars153332_))
                                               (_kwset153342_
                                                (map (lambda (_kw153339_
                                                              _kwvar153340_)
                                                       (let ((__tmp155856
                                                              (let ((__tmp155857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155865
                                    (let ((__tmp155866
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153329_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155866)))
                                   (__tmp155858
                                    (let ((__tmp155862
                                           (let ((__tmp155863
                                                  (let ((__tmp155864
                                                         (car _kw153339_)))
                                                    (declare (not safe))
                                                    (cons __tmp155864 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155863)))
                                          (__tmp155859
                                           (let ((__tmp155860
                                                  (let ((__tmp155861
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155861))))
                                             (declare (not safe))
                                             (cons __tmp155860 '()))))
                                      (declare (not safe))
                                      (cons __tmp155862 __tmp155859))))
                               (declare (not safe))
                               (cons __tmp155865 __tmp155858))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155857))))
                 (declare (not safe))
                 (cons '%#call __tmp155856)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153318_
                                                     _kwvars153332_))
                                               (_xkwargs153347_
                                                (map (lambda (_kw153344_
                                                              _kwvar153345_)
                                                       (let ((__tmp155869
                                                              (car _kw153344_))
                                                             (__tmp155867
                                                              (let ((__tmp155868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153345_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155868))))
                 (declare (not safe))
                 (cons __tmp155869 __tmp155867)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153318_
                                                     _kwvars153332_))
                                               (_xargs153354_
                                                (map (lambda (_key153349_)
                                                       (let ((_$e153351_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153349_ _xkwargs153347_))))
                 (if _$e153351_ (values _$e153351_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys153315_)))
                                          (let ((__tmp155870
                                                 (let ((__tmp155871
                                                        (let ((__tmp155872
                                                               (let ((__tmp155873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155874
                                     (let ((__tmp155875
                                            (let ((__tmp155889
                                                   (let ((__tmp155890
                                                          (let ((__tmp155900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153329_ '())))
                        (__tmp155891
                         (let ((__tmp155892
                                (let ((__tmp155893
                                       (let ((__tmp155894
                                              (let ((__tmp155895
                                                     (let ((__tmp155897
                                                            (let ((__tmp155898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155899 (length _kwargs153318_)))
                             (declare (not safe))
                             (cons __tmp155899 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155898)))
                   (__tmp155896
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155897 __tmp155896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155895))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155894))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155893
                                   _stx153275_))))
                           (declare (not safe))
                           (cons __tmp155892 '()))))
                    (declare (not safe))
                    (cons __tmp155900 __tmp155891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155890 '())))
                                                  (__tmp155876
                                                   (let ((__tmp155877
                                                          (let ((__tmp155878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155879
                                (let ((__tmp155880
                                       (let ((__tmp155881
                                              (let ((__tmp155882
                                                     (let ((__tmp155887
                                                            (let ((__tmp155888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main153314_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155888)))
                   (__tmp155883
                    (let ((__tmp155885
                           (let ((__tmp155886
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153329_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155886)))
                          (__tmp155884
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs153317_ _xargs153354_))))
                      (declare (not safe))
                      (cons __tmp155885 __tmp155884))))
               (declare (not safe))
               (cons __tmp155887 __tmp155883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155882))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155881
                                          _stx153275_))))
                                  (declare (not safe))
                                  (cons __tmp155880 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155879 _kwset153342_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155877 '()))))
                                              (declare (not safe))
                                              (cons __tmp155889 __tmp155876))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155875))))
                                (declare (not safe))
                                (cons __tmp155874 '()))))
                         (declare (not safe))
                         (cons _kwbind153337_ __tmp155873))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155871
                                                    _stx153275_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153274_
                                             __tmp155870)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g153294153303_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e153299153360_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153294153303_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e153300153363_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153294153303_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153366_ _e153300153363_)
                               (_e153301153368_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153294153303_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153371_ _e153301153368_))
                          (declare (not safe))
                          (_K153298153357_ _main153371_ _keys153366_))
                        (let () (declare (not safe)) (_else153296153311_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153277153285_
                 'gxc#!kw-lambda::t))
              (let* ((_e153281153376_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153277153285_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153282153379_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153277153285_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153382_ _e153282153379_)
                     (_e153283153384_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153277153285_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153387_ _e153283153384_))
                (declare (not safe))
                (_K153280153373_ _dispatch153387_ _table153382_))
              (let () (declare (not safe)) (_E153279153289_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152886_ _args152887_)
        (let _lp152889_ ((_rest152891_ _args152887_)
                         (_pargs152892_ '())
                         (_kwargs152893_ '()))
          (let* ((___stx154940154941_ _rest152891_)
                 (_g152899152951_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154940154941_)))))
            (let ((___kont154942154943_
                   (lambda (_L153130_ _L153131_)
                     (let ((__tmp155910
                            (let ()
                              (declare (not safe))
                              (cons _L153131_ _pargs152892_))))
                       (declare (not safe))
                       (_lp152889_ _L153130_ __tmp155910 _kwargs152893_))))
                  (___kont154944154945_
                   (lambda (_L153076_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L153076_ _pargs152892_))
                             (reverse _kwargs152893_))))
                  (___kont154946154947_
                   (lambda (_L153023_ _L153024_ _L153025_)
                     (let ((_kw153042_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L153025_))))
                       (if (assq _kw153042_ _kwargs152893_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152886_
                              _kw153042_))
                           (let ((__tmp155911
                                  (let ((__tmp155912
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw153042_ _L153024_))))
                                    (declare (not safe))
                                    (cons __tmp155912 _kwargs152893_))))
                             (declare (not safe))
                             (_lp152889_
                              _L153023_
                              _pargs152892_
                              __tmp155911))))))
                  (___kont154948154949_
                   (lambda (_L152971_ _L152972_)
                     (let ((__tmp155913
                            (let ()
                              (declare (not safe))
                              (cons _L152972_ _pargs152892_))))
                       (declare (not safe))
                       (_lp152889_ _L152971_ __tmp155913 _kwargs152893_))))
                  (___kont154950154951_
                   (lambda ()
                     (values (reverse _pargs152892_)
                             (reverse _kwargs152893_)))))
              (let* ((_g152898152958_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154940154941_))
                            (___kont154950154951_)
                            (let () (declare (not safe)) (_g152899152951_)))))
                     (___match155047155048_
                      (lambda (_e152932152991_
                               _hd152931152994_
                               _tl152930152996_
                               _e152935152999_
                               _hd152934153002_
                               _tl152933153004_
                               _e152938153007_
                               _hd152937153010_
                               _tl152936153012_
                               _e152941153015_
                               _hd152940153018_
                               _tl152939153020_)
                        (let ((_L153023_ _tl152939153020_)
                              (_L153024_ _hd152940153018_)
                              (_L153025_ _hd152937153010_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L153025_))
                              (___kont154946154947_
                               _L153023_
                               _L153024_
                               _L153025_)
                              (___kont154948154949_
                               _tl152930152996_
                               _hd152931152994_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154940154941_))
                    (let ((_e152905153095_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154940154941_))))
                      (let ((_tl152903153100_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152905153095_)))
                            (_hd152904153098_
                             (let ()
                               (declare (not safe))
                               (##car _e152905153095_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152904153098_))
                            (let ((_e152908153103_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152904153098_))))
                              (let ((_tl152906153108_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152908153103_)))
                                    (_hd152907153106_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152908153103_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152907153106_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152907153106_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152906153108_))
                                            (let ((_e152911153111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152906153108_))))
                                              (let ((_tl152909153116_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152911153111_)))
                                                    (_hd152910153114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152911153111_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152910153114_))
                                                    (let ((_e152912153119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152910153114_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152912153119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152909153116_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152903153100_))
                          (let ((_e152915153122_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152903153100_))))
                            (let ((_tl152913153127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152915153122_)))
                                  (_hd152914153125_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152915153122_))))
                              (___kont154942154943_
                               _tl152913153127_
                               _hd152914153125_)))
                          (___kont154948154949_
                           _tl152903153100_
                           _hd152904153098_))
                      (___kont154948154949_ _tl152903153100_ _hd152904153098_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152912153119_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152909153116_))
                          (___kont154944154945_ _tl152903153100_)
                          (___kont154948154949_
                           _tl152903153100_
                           _hd152904153098_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152909153116_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152903153100_))
                              (let ((_e152941153015_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152903153100_))))
                                (let ((_tl152939153020_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152941153015_)))
                                      (_hd152940153018_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152941153015_))))
                                  (___match155047155048_
                                   _e152905153095_
                                   _hd152904153098_
                                   _tl152903153100_
                                   _e152908153103_
                                   _hd152907153106_
                                   _tl152906153108_
                                   _e152911153111_
                                   _hd152910153114_
                                   _tl152909153116_
                                   _e152941153015_
                                   _hd152940153018_
                                   _tl152939153020_)))
                              (___kont154948154949_
                               _tl152903153100_
                               _hd152904153098_))
                          (___kont154948154949_
                           _tl152903153100_
                           _hd152904153098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152909153116_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152903153100_))
                                                            (let ((_e152941153015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152903153100_))))
                      (let ((_tl152939153020_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152941153015_)))
                            (_hd152940153018_
                             (let ()
                               (declare (not safe))
                               (##car _e152941153015_))))
                        (___match155047155048_
                         _e152905153095_
                         _hd152904153098_
                         _tl152903153100_
                         _e152908153103_
                         _hd152907153106_
                         _tl152906153108_
                         _e152911153111_
                         _hd152910153114_
                         _tl152909153116_
                         _e152941153015_
                         _hd152940153018_
                         _tl152939153020_)))
                    (___kont154948154949_ _tl152903153100_ _hd152904153098_))
                (___kont154948154949_ _tl152903153100_ _hd152904153098_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154948154949_
                                             _tl152903153100_
                                             _hd152904153098_))
                                        (___kont154948154949_
                                         _tl152903153100_
                                         _hd152904153098_))
                                    (___kont154948154949_
                                     _tl152903153100_
                                     _hd152904153098_))))
                            (___kont154948154949_
                             _tl152903153100_
                             _hd152904153098_))))
                    (let () (declare (not safe)) (_g152898152958_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152881_ _ctx152882_ _stx152883_ _args152884_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152882_ _stx152883_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
