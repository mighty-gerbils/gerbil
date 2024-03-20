(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710943030)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp155068 (list gxc#::basic-xform::t))
            (__tmp155066
             (let ((__tmp155067
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155067 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp155068
         '()
         __tmp155066
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154769_
        (apply make-instance gxc#::optimize-call::t _$args154769_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx154761_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154764_
                (let ((__obj155063
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj155063))
               (__tmp155069
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154764_ _stx154761_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155069
           gxc#current-compile-method
           _self154764_))))
    (define gxc#optimize-call%
      (lambda (_self154615_ _stx154616_)
        (let* ((___stx154814154815_ _stx154616_)
               (_g154619154639_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154814154815_)))))
          (let ((___kont154816154817_
                 (lambda (_L154683_ _L154684_)
                   (let* ((_rator-id154702_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154684_)))
                          (_rator-type154704_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154702_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154704_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp155070
                                  (##structure-ref
                                   _rator-type154704_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154702_
                              '" => "
                              _rator-type154704_
                              '" "
                              __tmp155070))
                           (let ((_optimized154707_
                                  (let ((__method155064
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154704_
                                            'optimize-call))))
                                    (if __method155064
                                        (__method155064
                                         _rator-type154704_
                                         _self154615_
                                         _stx154616_
                                         _L154683_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154704_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154704_))
                                 _optimized154707_
                                 (let* ((___stx154796154797_ _optimized154707_)
                                        (_g154710154720_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154796154797_)))))
                                   (let ((___kont154798154799_
                                          (lambda (_L154740_)
                                            (let ((__tmp155071
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154740_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp155071
                                               _stx154616_))))
                                         (___kont154800154801_
                                          (lambda () _optimized154707_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154796154797_))
                                         (let ((_e154715154732_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154796154797_))))
                                           (let ((_tl154713154737_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154715154732_)))
                                                 (_hd154714154735_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154715154732_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154714154735_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154714154735_))
                                                     (___kont154798154799_
                                                      _tl154713154737_)
                                                     (___kont154800154801_))
                                                 (___kont154800154801_))))
                                         (___kont154800154801_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154704_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154615_ _stx154616_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154616_
                                _rator-type154704_)))))))
                (___kont154818154819_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154615_ _stx154616_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154814154815_))
                (let ((_e154625154651_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154814154815_))))
                  (let ((_tl154623154656_
                         (let () (declare (not safe)) (##cdr _e154625154651_)))
                        (_hd154624154654_
                         (let ()
                           (declare (not safe))
                           (##car _e154625154651_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154623154656_))
                        (let ((_e154628154659_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154623154656_))))
                          (let ((_tl154626154664_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154628154659_)))
                                (_hd154627154662_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154628154659_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154627154662_))
                                (let ((_e154631154667_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154627154662_))))
                                  (let ((_tl154629154672_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154631154667_)))
                                        (_hd154630154670_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154631154667_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154630154670_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154630154670_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154629154672_))
                                                (let ((_e154634154675_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154629154672_))))
                                                  (let ((_tl154632154680_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154634154675_)))
                                                        (_hd154633154678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154634154675_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154632154680_))
                                                        (___kont154816154817_
                                                         _tl154626154664_
                                                         _hd154633154678_)
                                                        (___kont154818154819_))))
                                                (___kont154818154819_))
                                            (___kont154818154819_))
                                        (___kont154818154819_))))
                                (___kont154818154819_))))
                        (___kont154818154819_))))
                (___kont154818154819_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154568_ _ctx154569_ _stx154570_ _args154571_)
        (let* ((_g154573154583_
                (lambda (_g154574154580_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154574154580_))))
               (_g154572154612_
                (lambda (_g154574154586_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154574154586_))
                      (let ((_e154578154588_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154574154586_))))
                        (let ((_hd154577154591_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154578154588_)))
                              (_tl154576154593_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154578154588_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154576154593_))
                              ((lambda (_L154596_)
                                 (let* ((_klass154607_
                                         (let ((__tmp155072
                                                (##structure-ref
                                                 _self154568_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154570_
                                            __tmp155072)))
                                        (_object154609_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154569_
                                            _L154596_))))
                                   (if (##structure-ref
                                        _klass154607_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155088
                                              (let ((__tmp155089
                                                     (let ((__tmp155091
                                                            (let ((__tmp155092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155093
                                  (##structure-ref
                                   _klass154607_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155093 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155092)))
                   (__tmp155090
                    (let () (declare (not safe)) (cons _object154609_ '()))))
               (declare (not safe))
               (cons __tmp155091 __tmp155090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp155089))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155088
                                          _stx154570_))
                                       (if (##structure-ref
                                            _klass154607_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155082
                                                  (let ((__tmp155083
                                                         (let ((__tmp155085
                                                                (let ((__tmp155086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155087
                                      (##structure-ref
                                       _klass154607_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155087 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155086)))
                       (__tmp155084
                        (let ()
                          (declare (not safe))
                          (cons _object154609_ '()))))
                   (declare (not safe))
                   (cons __tmp155085 __tmp155084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp155083))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155082
                                              _stx154570_))
                                           (let ((__tmp155073
                                                  (let ((__tmp155074
                                                         (let ((__tmp155080
                                                                (let ((__tmp155081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155081)))
                       (__tmp155075
                        (let ((__tmp155077
                               (let ((__tmp155078
                                      (let ((__tmp155079
                                             (##structure-ref
                                              _self154568_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp155079 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp155078)))
                              (__tmp155076
                               (let ()
                                 (declare (not safe))
                                 (cons _object154609_ '()))))
                          (declare (not safe))
                          (cons __tmp155077 __tmp155076))))
                   (declare (not safe))
                   (cons __tmp155080 __tmp155075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp155074))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155073
                                              _stx154570_))))))
                               _hd154577154591_)
                              (let ()
                                (declare (not safe))
                                (_g154573154583_ _g154574154586_)))))
                      (let ()
                        (declare (not safe))
                        (_g154573154583_ _g154574154586_))))))
          (declare (not safe))
          (_g154572154612_ _args154571_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154771 __method-table154772)
        (let ((__id154773
               (let ((__slot154774
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154771 'id))))
                 (if __slot154774
                     __slot154774
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154568_ _ctx154569_ _stx154570_ _args154571_)
            (let* ((_g154573154583_
                    (lambda (_g154574154580_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154574154580_))))
                   (_g154572154612_
                    (lambda (_g154574154586_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154574154586_))
                          (let ((_e154578154588_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154574154586_))))
                            (let ((_hd154577154591_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154578154588_)))
                                  (_tl154576154593_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154578154588_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154576154593_))
                                  ((lambda (_L154596_)
                                     (let* ((_klass154607_
                                             (let ((__tmp155094
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154568_
                                                       __id154773
                                                       __klass154771
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154570_
                                                __tmp155094)))
                                            (_object154609_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154569_
                                                _L154596_))))
                                       (if (##structure-ref
                                            _klass154607_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155110
                                                  (let ((__tmp155111
                                                         (let ((__tmp155113
                                                                (let ((__tmp155114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155115
                                      (##structure-ref
                                       _klass154607_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155115 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155114)))
                       (__tmp155112
                        (let ()
                          (declare (not safe))
                          (cons _object154609_ '()))))
                   (declare (not safe))
                   (cons __tmp155113 __tmp155112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp155111))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155110
                                              _stx154570_))
                                           (if (##structure-ref
                                                _klass154607_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155104
                                                      (let ((__tmp155105
                                                             (let ((__tmp155107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155108
                                   (let ((__tmp155109
                                          (##structure-ref
                                           _klass154607_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155109 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp155108)))
                           (__tmp155106
                            (let ()
                              (declare (not safe))
                              (cons _object154609_ '()))))
                       (declare (not safe))
                       (cons __tmp155107 __tmp155106))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp155105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155104
                                                  _stx154570_))
                                               (let ((__tmp155095
                                                      (let ((__tmp155096
                                                             (let ((__tmp155102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155103
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155103)))
                           (__tmp155097
                            (let ((__tmp155099
                                   (let ((__tmp155100
                                          (let ((__tmp155101
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154568_
                                                    __id154773
                                                    __klass154771
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp155101 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp155100)))
                                  (__tmp155098
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154609_ '()))))
                              (declare (not safe))
                              (cons __tmp155099 __tmp155098))))
                       (declare (not safe))
                       (cons __tmp155102 __tmp155097))))
                (declare (not safe))
                (cons '%#call __tmp155096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155095
                                                  _stx154570_))))))
                                   _hd154577154591_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154573154583_ _g154574154586_)))))
                          (let ()
                            (declare (not safe))
                            (_g154573154583_ _g154574154586_))))))
              (declare (not safe))
              (_g154572154612_ _args154571_))))))
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
      (lambda (_self154283_ _ctx154284_ _stx154285_ _args154286_)
        (let* ((_klass154288_
                (let ((__tmp155116
                       (##structure-ref _self154283_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx154285_ __tmp155116)))
               (_fields154290_
                (length (##structure-ref _klass154288_ '5 gxc#!class::t '#f)))
               (_args154296_
                (map (lambda (_g154291154293_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx154284_ _g154291154293_)))
                     _args154286_))
               (_inline-make-object154298_
                (let ((__tmp155117
                       (let ((__tmp155123
                              (let ((__tmp155124
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155124)))
                             (__tmp155118
                              (let ((__tmp155120
                                     (let ((__tmp155121
                                            (let ((__tmp155122
                                                   (##structure-ref
                                                    _self154283_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155122 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155121)))
                                    (__tmp155119
                                     (make-list _fields154290_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp155120 __tmp155119))))
                         (declare (not safe))
                         (cons __tmp155123 __tmp155118))))
                  (declare (not safe))
                  (cons '%#call __tmp155117))))
          (let ((_$e154301_
                 (##structure-ref _klass154288_ '6 gxc#!class::t '#f)))
            (if _$e154301_
                ((lambda (_ctor154304_)
                   (let ((_$obj154306_
                          (let ((__tmp155224 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp155224)))
                         (_ctor-impl154307_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass154288_
                             _ctor154304_))))
                     (let ((__tmp155225
                            (let ((__tmp155226
                                   (let ((__tmp155294
                                          (let ((__tmp155295
                                                 (let ((__tmp155297
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj154306_
                                                                '())))
                                                       (__tmp155296
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object154298_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155297
                                                         __tmp155296))))
                                            (declare (not safe))
                                            (cons __tmp155295 '())))
                                         (__tmp155227
                                          (let ((__tmp155228
                                                 (let ((__tmp155229
                                                        (let ((__tmp155233
                                                               (if _ctor-impl154307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155288
                                  (let ((__tmp155292
                                         (let ((__tmp155293
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl154307_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155293)))
                                        (__tmp155289
                                         (let ((__tmp155290
                                                (let ((__tmp155291
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj154306_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155291))))
                                           (declare (not safe))
                                           (cons __tmp155290 _args154296_))))
                                    (declare (not safe))
                                    (cons __tmp155292 __tmp155289))))
                             (declare (not safe))
                             (cons '%#call __tmp155288))
                           (let* ((_$ctor154309_
                                   (let ((__tmp155234 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp155234)))
                                  (__tmp155235
                                   (let ((__tmp155270
                                          (let ((__tmp155271
                                                 (let ((__tmp155287
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor154309_
                                                                '())))
                                                       (__tmp155272
                                                        (let ((__tmp155273
                                                               (let ((__tmp155274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155285
                                     (let ((__tmp155286
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155286)))
                                    (__tmp155275
                                     (let ((__tmp155282
                                            (let ((__tmp155283
                                                   (let ((__tmp155284
                                                          (##structure-ref
                                                           _self154283_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp155284 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155283)))
                                           (__tmp155276
                                            (let ((__tmp155280
                                                   (let ((__tmp155281
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155281)))
                                                  (__tmp155277
                                                   (let ((__tmp155278
                                                          (let ((__tmp155279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor154304_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155278 '()))))
                                              (declare (not safe))
                                              (cons __tmp155280 __tmp155277))))
                                       (declare (not safe))
                                       (cons __tmp155282 __tmp155276))))
                                (declare (not safe))
                                (cons __tmp155285 __tmp155275))))
                         (declare (not safe))
                         (cons '%#call __tmp155274))))
                  (declare (not safe))
                  (cons __tmp155273 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155287
                                                         __tmp155272))))
                                            (declare (not safe))
                                            (cons __tmp155271 '())))
                                         (__tmp155236
                                          (let ((__tmp155237
                                                 (let ((__tmp155238
                                                        (let ((__tmp155268
                                                               (let ((__tmp155269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor154309_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155269)))
                      (__tmp155239
                       (let ((__tmp155261
                              (let ((__tmp155262
                                     (let ((__tmp155266
                                            (let ((__tmp155267
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor154309_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155267)))
                                           (__tmp155263
                                            (let ((__tmp155264
                                                   (let ((__tmp155265
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155265))))
                                              (declare (not safe))
                                              (cons __tmp155264
                                                    _args154296_))))
                                       (declare (not safe))
                                       (cons __tmp155266 __tmp155263))))
                                (declare (not safe))
                                (cons '%#call __tmp155262)))
                             (__tmp155240
                              (let ((__tmp155241
                                     (let ((__tmp155242
                                            (let ((__tmp155259
                                                   (let ((__tmp155260
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155260)))
                                                  (__tmp155243
                                                   (let ((__tmp155257
                                                          (let ((__tmp155258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155258)))
                 (__tmp155244
                  (let ((__tmp155255
                         (let ((__tmp155256
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155256)))
                        (__tmp155245
                         (let ((__tmp155252
                                (let ((__tmp155253
                                       (let ((__tmp155254
                                              (##structure-ref
                                               _self154283_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155254 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155253)))
                               (__tmp155246
                                (let ((__tmp155250
                                       (let ((__tmp155251
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155251)))
                                      (__tmp155247
                                       (let ((__tmp155248
                                              (let ((__tmp155249
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor154304_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp155249))))
                                         (declare (not safe))
                                         (cons __tmp155248 '()))))
                                  (declare (not safe))
                                  (cons __tmp155250 __tmp155247))))
                           (declare (not safe))
                           (cons __tmp155252 __tmp155246))))
                    (declare (not safe))
                    (cons __tmp155255 __tmp155245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155257
                                                           __tmp155244))))
                                              (declare (not safe))
                                              (cons __tmp155259 __tmp155243))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155242))))
                                (declare (not safe))
                                (cons __tmp155241 '()))))
                         (declare (not safe))
                         (cons __tmp155261 __tmp155240))))
                  (declare (not safe))
                  (cons __tmp155268 __tmp155239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp155238))))
                                            (declare (not safe))
                                            (cons __tmp155237 '()))))
                                     (declare (not safe))
                                     (cons __tmp155270 __tmp155236))))
                             (declare (not safe))
                             (cons '%#let-values __tmp155235))))
                      (__tmp155230
                       (let ((__tmp155231
                              (let ((__tmp155232
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj154306_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155232))))
                         (declare (not safe))
                         (cons __tmp155231 '()))))
                  (declare (not safe))
                  (cons __tmp155233 __tmp155230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp155229))))
                                            (declare (not safe))
                                            (cons __tmp155228 '()))))
                                     (declare (not safe))
                                     (cons __tmp155294 __tmp155227))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155226))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155225 _stx154285_))))
                 _$e154301_)
                (let ((_$e154311_
                       (##structure-ref _klass154288_ '10 gxc#!class::t '#f)))
                  (if _$e154311_
                      ((lambda (_metaclass154314_)
                         (let* ((_$obj154316_
                                 (let ((__tmp155186 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155186)))
                                (_metakons154318_
                                 (let ((__tmp155187
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx154285_
                                           _metaclass154314_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp155187
                                    'instance-init!))))
                           (let ((__tmp155188
                                  (let ((__tmp155189
                                         (let ((__tmp155220
                                                (let ((__tmp155221
                                                       (let ((__tmp155223
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154316_ '())))
                     (__tmp155222
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object154298_ '()))))
                 (declare (not safe))
                 (cons __tmp155223 __tmp155222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155221 '())))
                                               (__tmp155190
                                                (let ((__tmp155191
                                                       (let ((__tmp155192
                                                              (let ((__tmp155196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons154318_
                                 (let ((__tmp155210
                                        (let ((__tmp155218
                                               (let ((__tmp155219
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons154318_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155219)))
                                              (__tmp155211
                                               (let ((__tmp155215
                                                      (let ((__tmp155216
                                                             (let ((__tmp155217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154283_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155217 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155216)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155212
                                                      (let ((__tmp155213
                                                             (let ((__tmp155214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj154316_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155214))))
                (declare (not safe))
                (cons __tmp155213 _args154296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155215
                                                       __tmp155212))))
                                          (declare (not safe))
                                          (cons __tmp155218 __tmp155211))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155210))
                                 (let ((__tmp155197
                                        (let ((__tmp155208
                                               (let ((__tmp155209
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155209)))
                                              (__tmp155198
                                               (let ((__tmp155205
                                                      (let ((__tmp155206
                                                             (let ((__tmp155207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154283_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155207 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155206)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155199
                                                      (let ((__tmp155203
                                                             (let ((__tmp155204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp155204)))
                    (__tmp155200
                     (let ((__tmp155201
                            (let ((__tmp155202
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154316_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155202))))
                       (declare (not safe))
                       (cons __tmp155201 _args154296_))))
                (declare (not safe))
                (cons __tmp155203 __tmp155200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155205
                                                       __tmp155199))))
                                          (declare (not safe))
                                          (cons __tmp155208 __tmp155198))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155197))))
                            (__tmp155193
                             (let ((__tmp155194
                                    (let ((__tmp155195
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj154316_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155195))))
                               (declare (not safe))
                               (cons __tmp155194 '()))))
                        (declare (not safe))
                        (cons __tmp155196 __tmp155193))))
                 (declare (not safe))
                 (cons '%#begin __tmp155192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155191 '()))))
                                           (declare (not safe))
                                           (cons __tmp155220 __tmp155190))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp155189))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp155188 _stx154285_))))
                       _$e154311_)
                      (if (##structure-ref _klass154288_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args154296_) _fields154290_)
                              (let ((__tmp155178
                                     (let ((__tmp155179
                                            (let ((__tmp155184
                                                   (let ((__tmp155185
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155185)))
                                                  (__tmp155180
                                                   (let ((__tmp155181
                                                          (let ((__tmp155182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155183
                                (##structure-ref
                                 _self154283_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp155183 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155181
                                                           _args154296_))))
                                              (declare (not safe))
                                              (cons __tmp155184 __tmp155180))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155179))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp155178
                                 _stx154285_))
                              (let ((__tmp155177
                                     (##structure-ref
                                      _self154283_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp155176
                                     (length (##structure-ref
                                              _klass154288_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx154285_
                                 __tmp155177
                                 __tmp155176)))
                          (let ((_$obj154321_
                                 (let ((__tmp155125 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155125))))
                            (let _lp154323_ ((_rest154325_ _args154296_)
                                             (_initializers154326_ '()))
                              (let* ((___stx154852154853_ _rest154325_)
                                     (_g154330154351_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154852154853_)))))
                                (let ((___kont154854154855_
                                       (lambda (_L154405_ _L154406_ _L154407_)
                                         (let* ((_slot154438_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L154407_))))
                                                (_off154440_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass154288_
                                                    _slot154438_))))
                                           (if _off154440_
                                               (let ((__tmp155127
                                                      (let ((__tmp155128
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154440_ _L154406_))))
                (declare (not safe))
                (cons __tmp155128 _initializers154326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp154323_
                                                  _L154405_
                                                  __tmp155127))
                                               (let ((__tmp155126
                                                      (##structure-ref
                                                       _self154283_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx154285_
                                                  __tmp155126
                                                  _slot154438_))))))
                                      (___kont154856154857_
                                       (lambda ()
                                         (let ((__tmp155129
                                                (let ((__tmp155130
                                                       (let ((__tmp155153
                                                              (let ((__tmp155154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155156
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154321_ '())))
                                   (__tmp155155
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154298_ '()))))
                               (declare (not safe))
                               (cons __tmp155156 __tmp155155))))
                        (declare (not safe))
                        (cons __tmp155154 '())))
                     (__tmp155131
                      (let ((__tmp155132
                             (let ((__tmp155133
                                    (let ((__tmp155150
                                           (let ((__tmp155151
                                                  (let ((__tmp155152
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155152))))
                                             (declare (not safe))
                                             (cons __tmp155151 '())))
                                          (__tmp155134
                                           (let ((__tmp155135
                                                  (lambda (_i154365_ _r154366_)
                                                    (let ((__tmp155136
                                                           (let ((__tmp155137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155147
                                 (let ((__tmp155148
                                        (let ((__tmp155149
                                               (##structure-ref
                                                _self154283_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155149 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155148)))
                                (__tmp155138
                                 (let ((__tmp155144
                                        (let ((__tmp155145
                                               (let ((__tmp155146
                                                      (car _i154365_)))
                                                 (declare (not safe))
                                                 (cons __tmp155146 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155145)))
                                       (__tmp155139
                                        (let ((__tmp155142
                                               (let ((__tmp155143
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj154321_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155143)))
                                              (__tmp155140
                                               (let ((__tmp155141
                                                      (cdr _i154365_)))
                                                 (declare (not safe))
                                                 (cons __tmp155141 '()))))
                                          (declare (not safe))
                                          (cons __tmp155142 __tmp155140))))
                                   (declare (not safe))
                                   (cons __tmp155144 __tmp155139))))
                            (declare (not safe))
                            (cons __tmp155147 __tmp155138))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp155137))))
              (declare (not safe))
              (cons __tmp155136 _r154366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp155135
                                                     '()
                                                     _initializers154326_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp155150 __tmp155134))))
                               (declare (not safe))
                               (cons '%#begin __tmp155133))))
                        (declare (not safe))
                        (cons __tmp155132 '()))))
                 (declare (not safe))
                 (cons __tmp155153 __tmp155131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155130))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155129
                                            _stx154285_))))
                                      (___kont154858154859_
                                       (lambda ()
                                         (let ((__tmp155157
                                                (let ((__tmp155158
                                                       (let ((__tmp155172
                                                              (let ((__tmp155173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155175
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154321_ '())))
                                   (__tmp155174
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154298_ '()))))
                               (declare (not safe))
                               (cons __tmp155175 __tmp155174))))
                        (declare (not safe))
                        (cons __tmp155173 '())))
                     (__tmp155159
                      (let ((__tmp155160
                             (let ((__tmp155161
                                    (let ((__tmp155165
                                           (let ((__tmp155166
                                                  (let ((__tmp155170
                                                         (let ((__tmp155171
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp155171)))
                (__tmp155167
                 (let ((__tmp155168
                        (let ((__tmp155169
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj154321_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155169))))
                   (declare (not safe))
                   (cons __tmp155168 _args154296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155170
                                                          __tmp155167))))
                                             (declare (not safe))
                                             (cons '%#call __tmp155166)))
                                          (__tmp155162
                                           (let ((__tmp155163
                                                  (let ((__tmp155164
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155164))))
                                             (declare (not safe))
                                             (cons __tmp155163 '()))))
                                      (declare (not safe))
                                      (cons __tmp155165 __tmp155162))))
                               (declare (not safe))
                               (cons '%#begin __tmp155161))))
                        (declare (not safe))
                        (cons __tmp155160 '()))))
                 (declare (not safe))
                 (cons __tmp155172 __tmp155159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155158))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155157
                                            _stx154285_)))))
                                  (let* ((_g154328154368_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154852154853_))
                                                (___kont154856154857_)
                                                (___kont154858154859_))))
                                         (___match154889154890_
                                          (lambda (_e154337154373_
                                                   _hd154336154376_
                                                   _tl154335154378_
                                                   _e154340154381_
                                                   _hd154339154384_
                                                   _tl154338154386_
                                                   _e154343154389_
                                                   _hd154342154392_
                                                   _tl154341154394_
                                                   _e154346154397_
                                                   _hd154345154400_
                                                   _tl154344154402_)
                                            (let ((_L154405_ _tl154344154402_)
                                                  (_L154406_ _hd154345154400_)
                                                  (_L154407_ _hd154342154392_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154407_))
                                                  (___kont154854154855_
                                                   _L154405_
                                                   _L154406_
                                                   _L154407_)
                                                  (___kont154858154859_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154852154853_))
                                        (let ((_e154337154373_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154852154853_))))
                                          (let ((_tl154335154378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154337154373_)))
                                                (_hd154336154376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154337154373_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154336154376_))
                                                (let ((_e154340154381_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154336154376_))))
                                                  (let ((_tl154338154386_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154340154381_)))
                                                        (_hd154339154384_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154340154381_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154339154384_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154339154384_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154338154386_))
                        (let ((_e154343154389_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154338154386_))))
                          (let ((_tl154341154394_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154343154389_)))
                                (_hd154342154392_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154343154389_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154341154394_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154335154378_))
                                    (let ((_e154346154397_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154335154378_))))
                                      (let ((_tl154344154402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154346154397_)))
                                            (_hd154345154400_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154346154397_))))
                                        (___match154889154890_
                                         _e154337154373_
                                         _hd154336154376_
                                         _tl154335154378_
                                         _e154340154381_
                                         _hd154339154384_
                                         _tl154338154386_
                                         _e154343154389_
                                         _hd154342154392_
                                         _tl154341154394_
                                         _e154346154397_
                                         _hd154345154400_
                                         _tl154344154402_)))
                                    (___kont154858154859_))
                                (___kont154858154859_))))
                        (___kont154858154859_))
                    (___kont154858154859_))
                (___kont154858154859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154858154859_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154328154368_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154775 __method-table154776)
        (let ((__id154777
               (let ((__slot154778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154775 'id))))
                 (if __slot154778
                     __slot154778
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154283_ _ctx154284_ _stx154285_ _args154286_)
            (let* ((_klass154288_
                    (let ((__tmp155298
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self154283_
                              __id154777
                              __klass154775
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx154285_ __tmp155298)))
                   (_fields154290_
                    (length (##structure-ref
                             _klass154288_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args154296_
                    (map (lambda (_g154291154293_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx154284_ _g154291154293_)))
                         _args154286_))
                   (_inline-make-object154298_
                    (let ((__tmp155299
                           (let ((__tmp155305
                                  (let ((__tmp155306
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155306)))
                                 (__tmp155300
                                  (let ((__tmp155302
                                         (let ((__tmp155303
                                                (let ((__tmp155304
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154283_
                                                          __id154777
                                                          __klass154775
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155304 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155303)))
                                        (__tmp155301
                                         (make-list
                                          _fields154290_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp155302 __tmp155301))))
                             (declare (not safe))
                             (cons __tmp155305 __tmp155300))))
                      (declare (not safe))
                      (cons '%#call __tmp155299))))
              (let ((_$e154301_
                     (##structure-ref _klass154288_ '6 gxc#!class::t '#f)))
                (if _$e154301_
                    ((lambda (_ctor154304_)
                       (let ((_$obj154306_
                              (let ((__tmp155406 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155406)))
                             (_ctor-impl154307_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass154288_
                                 _ctor154304_))))
                         (let ((__tmp155407
                                (let ((__tmp155408
                                       (let ((__tmp155476
                                              (let ((__tmp155477
                                                     (let ((__tmp155479
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj154306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155478
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object154298_ '()))))
               (declare (not safe))
               (cons __tmp155479 __tmp155478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155477 '())))
                                             (__tmp155409
                                              (let ((__tmp155410
                                                     (let ((__tmp155411
                                                            (let ((__tmp155415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl154307_
                               (let ((__tmp155470
                                      (let ((__tmp155474
                                             (let ((__tmp155475
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl154307_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155475)))
                                            (__tmp155471
                                             (let ((__tmp155472
                                                    (let ((__tmp155473
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj154306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155472
                                                     _args154296_))))
                                        (declare (not safe))
                                        (cons __tmp155474 __tmp155471))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155470))
                               (let* ((_$ctor154309_
                                       (let ((__tmp155416
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155416)))
                                      (__tmp155417
                                       (let ((__tmp155452
                                              (let ((__tmp155453
                                                     (let ((__tmp155469
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor154309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155454
                    (let ((__tmp155455
                           (let ((__tmp155456
                                  (let ((__tmp155467
                                         (let ((__tmp155468
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155468)))
                                        (__tmp155457
                                         (let ((__tmp155464
                                                (let ((__tmp155465
                                                       (let ((__tmp155466
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self154283_
                         __id154777
                         __klass154775
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155466 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155465)))
                                               (__tmp155458
                                                (let ((__tmp155462
                                                       (let ((__tmp155463
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154306_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155463)))
              (__tmp155459
               (let ((__tmp155460
                      (let ((__tmp155461
                             (let ()
                               (declare (not safe))
                               (cons _ctor154304_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155461))))
                 (declare (not safe))
                 (cons __tmp155460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155462
                                                        __tmp155459))))
                                           (declare (not safe))
                                           (cons __tmp155464 __tmp155458))))
                                    (declare (not safe))
                                    (cons __tmp155467 __tmp155457))))
                             (declare (not safe))
                             (cons '%#call __tmp155456))))
                      (declare (not safe))
                      (cons __tmp155455 '()))))
               (declare (not safe))
               (cons __tmp155469 __tmp155454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155453 '())))
                                             (__tmp155418
                                              (let ((__tmp155419
                                                     (let ((__tmp155420
                                                            (let ((__tmp155450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155451
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor154309_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155451)))
                          (__tmp155421
                           (let ((__tmp155443
                                  (let ((__tmp155444
                                         (let ((__tmp155448
                                                (let ((__tmp155449
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor154309_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155449)))
                                               (__tmp155445
                                                (let ((__tmp155446
                                                       (let ((__tmp155447
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154306_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155446
                                                        _args154296_))))
                                           (declare (not safe))
                                           (cons __tmp155448 __tmp155445))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155444)))
                                 (__tmp155422
                                  (let ((__tmp155423
                                         (let ((__tmp155424
                                                (let ((__tmp155441
                                                       (let ((__tmp155442
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155442)))
              (__tmp155425
               (let ((__tmp155439
                      (let ((__tmp155440
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155440)))
                     (__tmp155426
                      (let ((__tmp155437
                             (let ((__tmp155438
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155438)))
                            (__tmp155427
                             (let ((__tmp155434
                                    (let ((__tmp155435
                                           (let ((__tmp155436
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self154283_
                                                     __id154777
                                                     __klass154775
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155436 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155435)))
                                   (__tmp155428
                                    (let ((__tmp155432
                                           (let ((__tmp155433
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155433)))
                                          (__tmp155429
                                           (let ((__tmp155430
                                                  (let ((__tmp155431
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor154304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155431))))
                                             (declare (not safe))
                                             (cons __tmp155430 '()))))
                                      (declare (not safe))
                                      (cons __tmp155432 __tmp155429))))
                               (declare (not safe))
                               (cons __tmp155434 __tmp155428))))
                        (declare (not safe))
                        (cons __tmp155437 __tmp155427))))
                 (declare (not safe))
                 (cons __tmp155439 __tmp155426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155441
                                                        __tmp155425))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155424))))
                                    (declare (not safe))
                                    (cons __tmp155423 '()))))
                             (declare (not safe))
                             (cons __tmp155443 __tmp155422))))
                      (declare (not safe))
                      (cons __tmp155450 __tmp155421))))
               (declare (not safe))
               (cons '%#if __tmp155420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155419 '()))))
                                         (declare (not safe))
                                         (cons __tmp155452 __tmp155418))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155417))))
                          (__tmp155412
                           (let ((__tmp155413
                                  (let ((__tmp155414
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj154306_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155414))))
                             (declare (not safe))
                             (cons __tmp155413 '()))))
                      (declare (not safe))
                      (cons __tmp155415 __tmp155412))))
               (declare (not safe))
               (cons '%#begin __tmp155411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155410 '()))))
                                         (declare (not safe))
                                         (cons __tmp155476 __tmp155409))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155408))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155407 _stx154285_))))
                     _$e154301_)
                    (let ((_$e154311_
                           (##structure-ref
                            _klass154288_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e154311_
                          ((lambda (_metaclass154314_)
                             (let* ((_$obj154316_
                                     (let ((__tmp155368 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155368)))
                                    (_metakons154318_
                                     (let ((__tmp155369
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx154285_
                                               _metaclass154314_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155369
                                        'instance-init!))))
                               (let ((__tmp155370
                                      (let ((__tmp155371
                                             (let ((__tmp155402
                                                    (let ((__tmp155403
                                                           (let ((__tmp155405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj154316_ '())))
                         (__tmp155404
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object154298_ '()))))
                     (declare (not safe))
                     (cons __tmp155405 __tmp155404))))
              (declare (not safe))
              (cons __tmp155403 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155372
                                                    (let ((__tmp155373
                                                           (let ((__tmp155374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155378
                                 (if _metakons154318_
                                     (let ((__tmp155392
                                            (let ((__tmp155400
                                                   (let ((__tmp155401
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons154318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155401)))
                                                  (__tmp155393
                                                   (let ((__tmp155397
                                                          (let ((__tmp155398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155399
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154283_
                                   __id154777
                                   __klass154775
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155399 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155398)))
                 (__tmp155394
                  (let ((__tmp155395
                         (let ((__tmp155396
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj154316_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155396))))
                    (declare (not safe))
                    (cons __tmp155395 _args154296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155397
                                                           __tmp155394))))
                                              (declare (not safe))
                                              (cons __tmp155400 __tmp155393))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155392))
                                     (let ((__tmp155379
                                            (let ((__tmp155390
                                                   (let ((__tmp155391
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155391)))
                                                  (__tmp155380
                                                   (let ((__tmp155387
                                                          (let ((__tmp155388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155389
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154283_
                                   __id154777
                                   __klass154775
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155389 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155388)))
                 (__tmp155381
                  (let ((__tmp155385
                         (let ((__tmp155386
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155386)))
                        (__tmp155382
                         (let ((__tmp155383
                                (let ((__tmp155384
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj154316_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155384))))
                           (declare (not safe))
                           (cons __tmp155383 _args154296_))))
                    (declare (not safe))
                    (cons __tmp155385 __tmp155382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155387
                                                           __tmp155381))))
                                              (declare (not safe))
                                              (cons __tmp155390 __tmp155380))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155379))))
                                (__tmp155375
                                 (let ((__tmp155376
                                        (let ((__tmp155377
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj154316_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155377))))
                                   (declare (not safe))
                                   (cons __tmp155376 '()))))
                            (declare (not safe))
                            (cons __tmp155378 __tmp155375))))
                     (declare (not safe))
                     (cons '%#begin __tmp155374))))
              (declare (not safe))
              (cons __tmp155373 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155402
                                                     __tmp155372))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155371))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155370
                                  _stx154285_))))
                           _$e154311_)
                          (if (##structure-ref
                               _klass154288_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args154296_) _fields154290_)
                                  (let ((__tmp155360
                                         (let ((__tmp155361
                                                (let ((__tmp155366
                                                       (let ((__tmp155367
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155367)))
              (__tmp155362
               (let ((__tmp155363
                      (let ((__tmp155364
                             (let ((__tmp155365
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self154283_
                                       __id154777
                                       __klass154775
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155365 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155364))))
                 (declare (not safe))
                 (cons __tmp155363 _args154296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155366
                                                        __tmp155362))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155361))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155360
                                     _stx154285_))
                                  (let ((__tmp155359
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self154283_
                                            __id154777
                                            __klass154775
                                            '#f)))
                                        (__tmp155358
                                         (length (##structure-ref
                                                  _klass154288_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx154285_
                                     __tmp155359
                                     __tmp155358)))
                              (let ((_$obj154321_
                                     (let ((__tmp155307 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155307))))
                                (let _lp154323_ ((_rest154325_ _args154296_)
                                                 (_initializers154326_ '()))
                                  (let* ((___stx154894154895_ _rest154325_)
                                         (_g154330154351_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154894154895_)))))
                                    (let ((___kont154896154897_
                                           (lambda (_L154405_
                                                    _L154406_
                                                    _L154407_)
                                             (let* ((_slot154438_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154407_))))
                                                    (_off154440_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass154288_
                                                        _slot154438_))))
                                               (if _off154440_
                                                   (let ((__tmp155309
                                                          (let ((__tmp155310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154440_ _L154406_))))
                    (declare (not safe))
                    (cons __tmp155310 _initializers154326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp154323_
                                                      _L154405_
                                                      __tmp155309))
                                                   (let ((__tmp155308
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self154283_
                                                             __id154777
                                                             __klass154775
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx154285_
                                                      __tmp155308
                                                      _slot154438_))))))
                                          (___kont154898154899_
                                           (lambda ()
                                             (let ((__tmp155311
                                                    (let ((__tmp155312
                                                           (let ((__tmp155335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155336
                                 (let ((__tmp155338
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154321_ '())))
                                       (__tmp155337
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154298_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155338 __tmp155337))))
                            (declare (not safe))
                            (cons __tmp155336 '())))
                         (__tmp155313
                          (let ((__tmp155314
                                 (let ((__tmp155315
                                        (let ((__tmp155332
                                               (let ((__tmp155333
                                                      (let ((__tmp155334
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154321_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155333 '())))
                                              (__tmp155316
                                               (let ((__tmp155317
                                                      (lambda (_i154365_
                                                               _r154366_)
                                                        (let ((__tmp155318
                                                               (let ((__tmp155319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155329
                                     (let ((__tmp155330
                                            (let ((__tmp155331
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154283_
                                                      __id154777
                                                      __klass154775
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155331 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155330)))
                                    (__tmp155320
                                     (let ((__tmp155326
                                            (let ((__tmp155327
                                                   (let ((__tmp155328
                                                          (car _i154365_)))
                                                     (declare (not safe))
                                                     (cons __tmp155328 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155327)))
                                           (__tmp155321
                                            (let ((__tmp155324
                                                   (let ((__tmp155325
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155325)))
                                                  (__tmp155322
                                                   (let ((__tmp155323
                                                          (cdr _i154365_)))
                                                     (declare (not safe))
                                                     (cons __tmp155323 '()))))
                                              (declare (not safe))
                                              (cons __tmp155324 __tmp155322))))
                                       (declare (not safe))
                                       (cons __tmp155326 __tmp155321))))
                                (declare (not safe))
                                (cons __tmp155329 __tmp155320))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp155319))))
                  (declare (not safe))
                  (cons __tmp155318 _r154366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp155317
                                                         '()
                                                         _initializers154326_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155332
                                                  __tmp155316))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155315))))
                            (declare (not safe))
                            (cons __tmp155314 '()))))
                     (declare (not safe))
                     (cons __tmp155335 __tmp155313))))
              (declare (not safe))
              (cons '%#let-values __tmp155312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155311
                                                _stx154285_))))
                                          (___kont154900154901_
                                           (lambda ()
                                             (let ((__tmp155339
                                                    (let ((__tmp155340
                                                           (let ((__tmp155354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155355
                                 (let ((__tmp155357
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154321_ '())))
                                       (__tmp155356
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154298_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155357 __tmp155356))))
                            (declare (not safe))
                            (cons __tmp155355 '())))
                         (__tmp155341
                          (let ((__tmp155342
                                 (let ((__tmp155343
                                        (let ((__tmp155347
                                               (let ((__tmp155348
                                                      (let ((__tmp155352
                                                             (let ((__tmp155353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155353)))
                    (__tmp155349
                     (let ((__tmp155350
                            (let ((__tmp155351
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154321_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155351))))
                       (declare (not safe))
                       (cons __tmp155350 _args154296_))))
                (declare (not safe))
                (cons __tmp155352 __tmp155349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155348)))
                                              (__tmp155344
                                               (let ((__tmp155345
                                                      (let ((__tmp155346
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154321_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155345 '()))))
                                          (declare (not safe))
                                          (cons __tmp155347 __tmp155344))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155343))))
                            (declare (not safe))
                            (cons __tmp155342 '()))))
                     (declare (not safe))
                     (cons __tmp155354 __tmp155341))))
              (declare (not safe))
              (cons '%#let-values __tmp155340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155339
                                                _stx154285_)))))
                                      (let* ((_g154328154368_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154894154895_))
                                                    (___kont154898154899_)
                                                    (___kont154900154901_))))
                                             (___match154931154932_
                                              (lambda (_e154337154373_
                                                       _hd154336154376_
                                                       _tl154335154378_
                                                       _e154340154381_
                                                       _hd154339154384_
                                                       _tl154338154386_
                                                       _e154343154389_
                                                       _hd154342154392_
                                                       _tl154341154394_
                                                       _e154346154397_
                                                       _hd154345154400_
                                                       _tl154344154402_)
                                                (let ((_L154405_
                                                       _tl154344154402_)
                                                      (_L154406_
                                                       _hd154345154400_)
                                                      (_L154407_
                                                       _hd154342154392_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154407_))
                                                      (___kont154896154897_
                                                       _L154405_
                                                       _L154406_
                                                       _L154407_)
                                                      (___kont154900154901_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154894154895_))
                                            (let ((_e154337154373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154894154895_))))
                                              (let ((_tl154335154378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154337154373_)))
                                                    (_hd154336154376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154337154373_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154336154376_))
                                                    (let ((_e154340154381_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154336154376_))))
                                                      (let ((_tl154338154386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154340154381_)))
                    (_hd154339154384_
                     (let () (declare (not safe)) (##car _e154340154381_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154339154384_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154339154384_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154338154386_))
                            (let ((_e154343154389_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154338154386_))))
                              (let ((_tl154341154394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154343154389_)))
                                    (_hd154342154392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154343154389_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154341154394_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154335154378_))
                                        (let ((_e154346154397_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154335154378_))))
                                          (let ((_tl154344154402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154346154397_)))
                                                (_hd154345154400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154346154397_))))
                                            (___match154931154932_
                                             _e154337154373_
                                             _hd154336154376_
                                             _tl154335154378_
                                             _e154340154381_
                                             _hd154339154384_
                                             _tl154338154386_
                                             _e154343154389_
                                             _hd154342154392_
                                             _tl154341154394_
                                             _e154346154397_
                                             _hd154345154400_
                                             _tl154344154402_)))
                                        (___kont154900154901_))
                                    (___kont154900154901_))))
                            (___kont154900154901_))
                        (___kont154900154901_))
                    (___kont154900154901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154900154901_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154328154368_))))))))))))))))))
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
      (lambda (_self154105_ _ctx154106_ _stx154107_ _args154108_)
        (let* ((_g154110154120_
                (lambda (_g154111154117_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154111154117_))))
               (_g154109154158_
                (lambda (_g154111154123_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154111154123_))
                      (let ((_e154115154125_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154111154123_))))
                        (let ((_hd154114154128_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154115154125_)))
                              (_tl154113154130_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154115154125_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154113154130_))
                              ((lambda (_L154133_)
                                 (let* ((_klass154144_
                                         (let ((__tmp155480
                                                (##structure-ref
                                                 _self154105_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154107_
                                            __tmp155480)))
                                        (_field154146_
                                         (let ((__tmp155481
                                                (##structure-ref
                                                 _self154105_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass154144_
                                            __tmp155481)))
                                        (_object154148_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154106_
                                            _L154133_))))
                                   (if (##structure-ref
                                        _klass154144_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155558
                                              (let ((__tmp155567
                                                     (if (##structure-ref
                                                          _self154105_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155559
                                                     (let ((__tmp155564
                                                            (let ((__tmp155565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155566
                                  (##structure-ref
                                   _self154105_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155566 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155565)))
                   (__tmp155560
                    (let ((__tmp155562
                           (let ((__tmp155563
                                  (let ()
                                    (declare (not safe))
                                    (cons _field154146_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155563)))
                          (__tmp155561
                           (let ()
                             (declare (not safe))
                             (cons _object154148_ '()))))
                      (declare (not safe))
                      (cons __tmp155562 __tmp155561))))
               (declare (not safe))
               (cons __tmp155564 __tmp155560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155567
                                                      __tmp155559))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155558
                                          _stx154107_))
                                       (if (##structure-ref
                                            _klass154144_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155548
                                                  (let ((__tmp155557
                                                         (if (##structure-ref
                                                              _self154105_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155549
                                                         (let ((__tmp155554
                                                                (let ((__tmp155555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155556
                                      (##structure-ref
                                       _self154105_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155556 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155555)))
                       (__tmp155550
                        (let ((__tmp155552
                               (let ((__tmp155553
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154146_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155553)))
                              (__tmp155551
                               (let ()
                                 (declare (not safe))
                                 (cons _object154148_ '()))))
                          (declare (not safe))
                          (cons __tmp155552 __tmp155551))))
                   (declare (not safe))
                   (cons __tmp155554 __tmp155550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155557
                                                          __tmp155549))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155548
                                              _stx154107_))
                                           (let ((_$e154151_
                                                  (let ((__tmp155482
                                                         (##structure-ref
                                                          _self154105_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass154144_
                                                     __tmp155482))))
                                             (if _$e154151_
                                                 ((lambda (_klass154154_)
                                                    (let ((__tmp155538
                                                           (let ((__tmp155547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self154105_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155539
                          (let ((__tmp155544
                                 (let ((__tmp155545
                                        (let ((__tmp155546
                                               (##structure-ref
                                                _self154105_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155546 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155545)))
                                (__tmp155540
                                 (let ((__tmp155542
                                        (let ((__tmp155543
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field154146_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155543)))
                                       (__tmp155541
                                        (let ()
                                          (declare (not safe))
                                          (cons _object154148_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155542 __tmp155541))))
                            (declare (not safe))
                            (cons __tmp155544 __tmp155540))))
                     (declare (not safe))
                     (cons __tmp155547 __tmp155539))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155538 _stx154107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e154151_)
                                                 (if (##structure-ref
                                                      _self154105_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155492
                                                            (let* ((_$obj154156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155493 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155493)))
                           (__tmp155494
                            (let ((__tmp155534
                                   (let ((__tmp155535
                                          (let ((__tmp155537
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj154156_ '())))
                                                (__tmp155536
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object154148_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155537 __tmp155536))))
                                     (declare (not safe))
                                     (cons __tmp155535 '())))
                                  (__tmp155495
                                   (let ((__tmp155496
                                          (let ((__tmp155497
                                                 (let ((__tmp155526
                                                        (let ((__tmp155527
                                                               (let ((__tmp155531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155532
                                     (let ((__tmp155533
                                            (##structure-ref
                                             _klass154144_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155533 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155532)))
                             (__tmp155528
                              (let ((__tmp155529
                                     (let ((__tmp155530
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj154156_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155530))))
                                (declare (not safe))
                                (cons __tmp155529 '()))))
                         (declare (not safe))
                         (cons __tmp155531 __tmp155528))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155527)))
               (__tmp155498
                (let ((__tmp155515
                       (let ((__tmp155516
                              (let ((__tmp155523
                                     (let ((__tmp155524
                                            (let ((__tmp155525
                                                   (##structure-ref
                                                    _self154105_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155525 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155524)))
                                    (__tmp155517
                                     (let ((__tmp155521
                                            (let ((__tmp155522
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154146_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155522)))
                                           (__tmp155518
                                            (let ((__tmp155519
                                                   (let ((__tmp155520
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155520))))
                                              (declare (not safe))
                                              (cons __tmp155519 '()))))
                                       (declare (not safe))
                                       (cons __tmp155521 __tmp155518))))
                                (declare (not safe))
                                (cons __tmp155523 __tmp155517))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155516)))
                      (__tmp155499
                       (let ((__tmp155500
                              (let ((__tmp155501
                                     (let ((__tmp155513
                                            (let ((__tmp155514
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155514)))
                                           (__tmp155502
                                            (let ((__tmp155510
                                                   (let ((__tmp155511
                                                          (let ((__tmp155512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self154105_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155512 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155511)))
                                                  (__tmp155503
                                                   (let ((__tmp155508
                                                          (let ((__tmp155509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj154156_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155509)))
                 (__tmp155504
                  (let ((__tmp155505
                         (let ((__tmp155506
                                (let ((__tmp155507
                                       (##structure-ref
                                        _self154105_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155507 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155506))))
                    (declare (not safe))
                    (cons __tmp155505 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155508
                                                           __tmp155504))))
                                              (declare (not safe))
                                              (cons __tmp155510 __tmp155503))))
                                       (declare (not safe))
                                       (cons __tmp155513 __tmp155502))))
                                (declare (not safe))
                                (cons '%#call __tmp155501))))
                         (declare (not safe))
                         (cons __tmp155500 '()))))
                  (declare (not safe))
                  (cons __tmp155515 __tmp155499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155526
                                                         __tmp155498))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155497))))
                                     (declare (not safe))
                                     (cons __tmp155496 '()))))
                              (declare (not safe))
                              (cons __tmp155534 __tmp155495))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155494))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155492 _stx154107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155483
                                                            (let ((__tmp155484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155490
                                  (let ((__tmp155491
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155491)))
                                 (__tmp155485
                                  (let ((__tmp155486
                                         (let ((__tmp155487
                                                (let ((__tmp155488
                                                       (let ((__tmp155489
                                                              (##structure-ref
                                                               _self154105_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155489
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155488))))
                                           (declare (not safe))
                                           (cons __tmp155487 '()))))
                                    (declare (not safe))
                                    (cons _object154148_ __tmp155486))))
                             (declare (not safe))
                             (cons __tmp155490 __tmp155485))))
                      (declare (not safe))
                      (cons '%#call __tmp155484))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155483 _stx154107_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd154114154128_)
                              (let ()
                                (declare (not safe))
                                (_g154110154120_ _g154111154123_)))))
                      (let ()
                        (declare (not safe))
                        (_g154110154120_ _g154111154123_))))))
          (declare (not safe))
          (_g154109154158_ _args154108_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154779 __method-table154780)
        (let ((__slot154781
               (let ((__slot154784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154779 'slot))))
                 (if __slot154784
                     __slot154784
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id154782
               (let ((__slot154785
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154779 'id))))
                 (if __slot154785
                     __slot154785
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154783
               (let ((__slot154786
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154779 'checked?))))
                 (if __slot154786
                     __slot154786
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self154105_ _ctx154106_ _stx154107_ _args154108_)
            (let* ((_g154110154120_
                    (lambda (_g154111154117_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154111154117_))))
                   (_g154109154158_
                    (lambda (_g154111154123_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154111154123_))
                          (let ((_e154115154125_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154111154123_))))
                            (let ((_hd154114154128_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154115154125_)))
                                  (_tl154113154130_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154115154125_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154113154130_))
                                  ((lambda (_L154133_)
                                     (let* ((_klass154144_
                                             (let ((__tmp155568
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154105_
                                                       __id154782
                                                       __klass154779
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154107_
                                                __tmp155568)))
                                            (_field154146_
                                             (let ((__tmp155569
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154105_
                                                       __slot154781
                                                       __klass154779
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass154144_
                                                __tmp155569)))
                                            (_object154148_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154106_
                                                _L154133_))))
                                       (if (##structure-ref
                                            _klass154144_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155646
                                                  (let ((__tmp155655
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154105_
                        __checked?154783
                        __klass154779
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155647
                 (let ((__tmp155652
                        (let ((__tmp155653
                               (let ((__tmp155654
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self154105_
                                         __id154782
                                         __klass154779
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155654 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155653)))
                       (__tmp155648
                        (let ((__tmp155650
                               (let ((__tmp155651
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154146_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155651)))
                              (__tmp155649
                               (let ()
                                 (declare (not safe))
                                 (cons _object154148_ '()))))
                          (declare (not safe))
                          (cons __tmp155650 __tmp155649))))
                   (declare (not safe))
                   (cons __tmp155652 __tmp155648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155655
                                                          __tmp155647))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155646
                                              _stx154107_))
                                           (if (##structure-ref
                                                _klass154144_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155636
                                                      (let ((__tmp155645
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self154105_
                            __checked?154783
                            __klass154779
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155637
                     (let ((__tmp155642
                            (let ((__tmp155643
                                   (let ((__tmp155644
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self154105_
                                             __id154782
                                             __klass154779
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp155644 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155643)))
                           (__tmp155638
                            (let ((__tmp155640
                                   (let ((__tmp155641
                                          (let ()
                                            (declare (not safe))
                                            (cons _field154146_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155641)))
                                  (__tmp155639
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154148_ '()))))
                              (declare (not safe))
                              (cons __tmp155640 __tmp155639))))
                       (declare (not safe))
                       (cons __tmp155642 __tmp155638))))
                (declare (not safe))
                (cons __tmp155645 __tmp155637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155636
                                                  _stx154107_))
                                               (let ((_$e154151_
                                                      (let ((__tmp155570
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154105_
                        __slot154781
                        __klass154779
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass154144_ __tmp155570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e154151_
                                                     ((lambda (_klass154154_)
                                                        (let ((__tmp155626
                                                               (let ((__tmp155635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self154105_
                                     __checked?154783
                                     __klass154779
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155627
                              (let ((__tmp155632
                                     (let ((__tmp155633
                                            (let ((__tmp155634
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154105_
                                                      __id154782
                                                      __klass154779
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155634 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155633)))
                                    (__tmp155628
                                     (let ((__tmp155630
                                            (let ((__tmp155631
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154146_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155631)))
                                           (__tmp155629
                                            (let ()
                                              (declare (not safe))
                                              (cons _object154148_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155630 __tmp155629))))
                                (declare (not safe))
                                (cons __tmp155632 __tmp155628))))
                         (declare (not safe))
                         (cons __tmp155635 __tmp155627))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155626 _stx154107_)))
              _$e154151_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self154105_
                                                            __checked?154783
                                                            __klass154779
                                                            '#f))
                                                         (let ((__tmp155580
                                                                (let* ((_$obj154156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155581 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155581)))
                               (__tmp155582
                                (let ((__tmp155622
                                       (let ((__tmp155623
                                              (let ((__tmp155625
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj154156_
                                                             '())))
                                                    (__tmp155624
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object154148_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155625
                                                      __tmp155624))))
                                         (declare (not safe))
                                         (cons __tmp155623 '())))
                                      (__tmp155583
                                       (let ((__tmp155584
                                              (let ((__tmp155585
                                                     (let ((__tmp155614
                                                            (let ((__tmp155615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155619
                                  (let ((__tmp155620
                                         (let ((__tmp155621
                                                (##structure-ref
                                                 _klass154144_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155621 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155620)))
                                 (__tmp155616
                                  (let ((__tmp155617
                                         (let ((__tmp155618
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj154156_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155618))))
                                    (declare (not safe))
                                    (cons __tmp155617 '()))))
                             (declare (not safe))
                             (cons __tmp155619 __tmp155616))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155615)))
                   (__tmp155586
                    (let ((__tmp155603
                           (let ((__tmp155604
                                  (let ((__tmp155611
                                         (let ((__tmp155612
                                                (let ((__tmp155613
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154105_
                                                          __id154782
                                                          __klass154779
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155613 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155612)))
                                        (__tmp155605
                                         (let ((__tmp155609
                                                (let ((__tmp155610
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field154146_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155610)))
                                               (__tmp155606
                                                (let ((__tmp155607
                                                       (let ((__tmp155608
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154156_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155607 '()))))
                                           (declare (not safe))
                                           (cons __tmp155609 __tmp155606))))
                                    (declare (not safe))
                                    (cons __tmp155611 __tmp155605))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155604)))
                          (__tmp155587
                           (let ((__tmp155588
                                  (let ((__tmp155589
                                         (let ((__tmp155601
                                                (let ((__tmp155602
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155602)))
                                               (__tmp155590
                                                (let ((__tmp155598
                                                       (let ((__tmp155599
                                                              (let ((__tmp155600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self154105_
                                __id154782
                                __klass154779
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155600 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155599)))
              (__tmp155591
               (let ((__tmp155596
                      (let ((__tmp155597
                             (let ()
                               (declare (not safe))
                               (cons _$obj154156_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155597)))
                     (__tmp155592
                      (let ((__tmp155593
                             (let ((__tmp155594
                                    (let ((__tmp155595
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self154105_
                                              __slot154781
                                              __klass154779
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155595 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155594))))
                        (declare (not safe))
                        (cons __tmp155593 '()))))
                 (declare (not safe))
                 (cons __tmp155596 __tmp155592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155598
                                                        __tmp155591))))
                                           (declare (not safe))
                                           (cons __tmp155601 __tmp155590))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155589))))
                             (declare (not safe))
                             (cons __tmp155588 '()))))
                      (declare (not safe))
                      (cons __tmp155603 __tmp155587))))
               (declare (not safe))
               (cons __tmp155614 __tmp155586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155585))))
                                         (declare (not safe))
                                         (cons __tmp155584 '()))))
                                  (declare (not safe))
                                  (cons __tmp155622 __tmp155583))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155582))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155580 _stx154107_))
                 (let ((__tmp155571
                        (let ((__tmp155572
                               (let ((__tmp155578
                                      (let ((__tmp155579
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155579)))
                                     (__tmp155573
                                      (let ((__tmp155574
                                             (let ((__tmp155575
                                                    (let ((__tmp155576
                                                           (let ((__tmp155577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self154105_
                             __slot154781
                             __klass154779
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155577 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155575 '()))))
                                        (declare (not safe))
                                        (cons _object154148_ __tmp155574))))
                                 (declare (not safe))
                                 (cons __tmp155578 __tmp155573))))
                          (declare (not safe))
                          (cons '%#call __tmp155572))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155571 _stx154107_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd154114154128_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154110154120_ _g154111154123_)))))
                          (let ()
                            (declare (not safe))
                            (_g154110154120_ _g154111154123_))))))
              (declare (not safe))
              (_g154109154158_ _args154108_))))))
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
      (lambda (_self153909_ _ctx153910_ _stx153911_ _args153912_)
        (let* ((_g153914153928_
                (lambda (_g153915153925_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153915153925_))))
               (_g153913153980_
                (lambda (_g153915153931_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153915153931_))
                      (let ((_e153920153933_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153915153931_))))
                        (let ((_hd153919153936_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153920153933_)))
                              (_tl153918153938_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153920153933_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153918153938_))
                              (let ((_e153923153941_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153918153938_))))
                                (let ((_hd153922153944_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153923153941_)))
                                      (_tl153921153946_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153923153941_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153921153946_))
                                      ((lambda (_L153949_ _L153950_)
                                         (let* ((_klass153964_
                                                 (let ((__tmp155656
                                                        (##structure-ref
                                                         _self153909_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153911_
                                                    __tmp155656)))
                                                (_field153966_
                                                 (let ((__tmp155657
                                                        (##structure-ref
                                                         _self153909_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153964_
                                                    __tmp155657)))
                                                (_object153968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153910_
                                                    _L153950_)))
                                                (_value153970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153910_
                                                    _L153949_))))
                                           (if (##structure-ref
                                                _klass153964_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155739
                                                      (let ((__tmp155749
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153909_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155740
                     (let ((__tmp155746
                            (let ((__tmp155747
                                   (let ((__tmp155748
                                          (##structure-ref
                                           _self153909_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155748 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155747)))
                           (__tmp155741
                            (let ((__tmp155744
                                   (let ((__tmp155745
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153966_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155745)))
                                  (__tmp155742
                                   (let ((__tmp155743
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153970_ '()))))
                                     (declare (not safe))
                                     (cons _object153968_ __tmp155743))))
                              (declare (not safe))
                              (cons __tmp155744 __tmp155742))))
                       (declare (not safe))
                       (cons __tmp155746 __tmp155741))))
                (declare (not safe))
                (cons __tmp155749 __tmp155740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155739
                                                  _stx153911_))
                                               (if (##structure-ref
                                                    _klass153964_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155728
                                                          (let ((__tmp155738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153909_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155729
                         (let ((__tmp155735
                                (let ((__tmp155736
                                       (let ((__tmp155737
                                              (##structure-ref
                                               _self153909_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155737 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155736)))
                               (__tmp155730
                                (let ((__tmp155733
                                       (let ((__tmp155734
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153966_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155734)))
                                      (__tmp155731
                                       (let ((__tmp155732
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153970_ '()))))
                                         (declare (not safe))
                                         (cons _object153968_ __tmp155732))))
                                  (declare (not safe))
                                  (cons __tmp155733 __tmp155731))))
                           (declare (not safe))
                           (cons __tmp155735 __tmp155730))))
                    (declare (not safe))
                    (cons __tmp155738 __tmp155729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155728
                                                      _stx153911_))
                                                   (let ((_$e153973_
                                                          (let ((__tmp155658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153909_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153964_ __tmp155658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153973_
                                                         ((lambda (_klass153976_)
                                                            (let ((__tmp155717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155727
                                  (if (##structure-ref
                                       _self153909_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155718
                                  (let ((__tmp155724
                                         (let ((__tmp155725
                                                (let ((__tmp155726
                                                       (##structure-ref
                                                        _self153909_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155726 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155725)))
                                        (__tmp155719
                                         (let ((__tmp155722
                                                (let ((__tmp155723
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153966_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155723)))
                                               (__tmp155720
                                                (let ((__tmp155721
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153970_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153968_
                                                        __tmp155721))))
                                           (declare (not safe))
                                           (cons __tmp155722 __tmp155720))))
                                    (declare (not safe))
                                    (cons __tmp155724 __tmp155719))))
                             (declare (not safe))
                             (cons __tmp155727 __tmp155718))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155717 _stx153911_)))
                  _$e153973_)
                 (if (##structure-ref _self153909_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155669
                            (let* ((_$obj153978_
                                    (let ((__tmp155670 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155670)))
                                   (__tmp155671
                                    (let ((__tmp155713
                                           (let ((__tmp155714
                                                  (let ((__tmp155716
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155715
                 (let () (declare (not safe)) (cons _object153968_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155716
                                                          __tmp155715))))
                                             (declare (not safe))
                                             (cons __tmp155714 '())))
                                          (__tmp155672
                                           (let ((__tmp155673
                                                  (let ((__tmp155674
                                                         (let ((__tmp155705
                                                                (let ((__tmp155706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155710
                                      (let ((__tmp155711
                                             (let ((__tmp155712
                                                    (##structure-ref
                                                     _klass153964_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155712 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155711)))
                                     (__tmp155707
                                      (let ((__tmp155708
                                             (let ((__tmp155709
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153978_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155709))))
                                        (declare (not safe))
                                        (cons __tmp155708 '()))))
                                 (declare (not safe))
                                 (cons __tmp155710 __tmp155707))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155706)))
                       (__tmp155675
                        (let ((__tmp155693
                               (let ((__tmp155694
                                      (let ((__tmp155702
                                             (let ((__tmp155703
                                                    (let ((__tmp155704
                                                           (##structure-ref
                                                            _self153909_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155704 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155703)))
                                            (__tmp155695
                                             (let ((__tmp155700
                                                    (let ((__tmp155701
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155701)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155696
                                                    (let ((__tmp155698
                                                           (let ((__tmp155699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153978_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155699)))
                  (__tmp155697
                   (let () (declare (not safe)) (cons _value153970_ '()))))
              (declare (not safe))
              (cons __tmp155698 __tmp155697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155700
                                                     __tmp155696))))
                                        (declare (not safe))
                                        (cons __tmp155702 __tmp155695))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155694)))
                              (__tmp155676
                               (let ((__tmp155677
                                      (let ((__tmp155678
                                             (let ((__tmp155691
                                                    (let ((__tmp155692
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155692)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155679
                                                    (let ((__tmp155688
                                                           (let ((__tmp155689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155690
                                 (##structure-ref
                                  _self153909_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155690 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155689)))
                  (__tmp155680
                   (let ((__tmp155686
                          (let ((__tmp155687
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153978_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155687)))
                         (__tmp155681
                          (let ((__tmp155683
                                 (let ((__tmp155684
                                        (let ((__tmp155685
                                               (##structure-ref
                                                _self153909_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155685 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155684)))
                                (__tmp155682
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153970_ '()))))
                            (declare (not safe))
                            (cons __tmp155683 __tmp155682))))
                     (declare (not safe))
                     (cons __tmp155686 __tmp155681))))
              (declare (not safe))
              (cons __tmp155688 __tmp155680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155691
                                                     __tmp155679))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155678))))
                                 (declare (not safe))
                                 (cons __tmp155677 '()))))
                          (declare (not safe))
                          (cons __tmp155693 __tmp155676))))
                   (declare (not safe))
                   (cons __tmp155705 __tmp155675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155674))))
                                             (declare (not safe))
                                             (cons __tmp155673 '()))))
                                      (declare (not safe))
                                      (cons __tmp155713 __tmp155672))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155671))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155669 _stx153911_))
                     (let ((__tmp155659
                            (let ((__tmp155660
                                   (let ((__tmp155667
                                          (let ((__tmp155668
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155668)))
                                         (__tmp155661
                                          (let ((__tmp155662
                                                 (let ((__tmp155664
                                                        (let ((__tmp155665
                                                               (let ((__tmp155666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153909_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155666 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155665)))
               (__tmp155663
                (let () (declare (not safe)) (cons _value153970_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155664
                                                         __tmp155663))))
                                            (declare (not safe))
                                            (cons _object153968_
                                                  __tmp155662))))
                                     (declare (not safe))
                                     (cons __tmp155667 __tmp155661))))
                              (declare (not safe))
                              (cons '%#call __tmp155660))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155659 _stx153911_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153922153944_
                                       _hd153919153936_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153914153928_ _g153915153931_)))))
                              (let ()
                                (declare (not safe))
                                (_g153914153928_ _g153915153931_)))))
                      (let ()
                        (declare (not safe))
                        (_g153914153928_ _g153915153931_))))))
          (declare (not safe))
          (_g153913153980_ _args153912_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154787 __method-table154788)
        (let ((__slot154789
               (let ((__slot154792
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154787 'slot))))
                 (if __slot154792
                     __slot154792
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id154790
               (let ((__slot154793
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154787 'id))))
                 (if __slot154793
                     __slot154793
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154791
               (let ((__slot154794
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154787 'checked?))))
                 (if __slot154794
                     __slot154794
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self153909_ _ctx153910_ _stx153911_ _args153912_)
            (let* ((_g153914153928_
                    (lambda (_g153915153925_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153915153925_))))
                   (_g153913153980_
                    (lambda (_g153915153931_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153915153931_))
                          (let ((_e153920153933_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153915153931_))))
                            (let ((_hd153919153936_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153920153933_)))
                                  (_tl153918153938_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153920153933_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153918153938_))
                                  (let ((_e153923153941_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153918153938_))))
                                    (let ((_hd153922153944_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153923153941_)))
                                          (_tl153921153946_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153923153941_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153921153946_))
                                          ((lambda (_L153949_ _L153950_)
                                             (let* ((_klass153964_
                                                     (let ((__tmp155750
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153909_
                                                               __id154790
                                                               __klass154787
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153911_
                                                        __tmp155750)))
                                                    (_field153966_
                                                     (let ((__tmp155751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153909_
                                                               __slot154789
                                                               __klass154787
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153964_
                                                        __tmp155751)))
                                                    (_object153968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153910_
                                                        _L153950_)))
                                                    (_value153970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153910_
                                                        _L153949_))))
                                               (if (##structure-ref
                                                    _klass153964_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155833
                                                          (let ((__tmp155843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153909_
                                __checked?154791
                                __klass154787
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155834
                         (let ((__tmp155840
                                (let ((__tmp155841
                                       (let ((__tmp155842
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153909_
                                                 __id154790
                                                 __klass154787
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155842 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155841)))
                               (__tmp155835
                                (let ((__tmp155838
                                       (let ((__tmp155839
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153966_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155839)))
                                      (__tmp155836
                                       (let ((__tmp155837
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153970_ '()))))
                                         (declare (not safe))
                                         (cons _object153968_ __tmp155837))))
                                  (declare (not safe))
                                  (cons __tmp155838 __tmp155836))))
                           (declare (not safe))
                           (cons __tmp155840 __tmp155835))))
                    (declare (not safe))
                    (cons __tmp155843 __tmp155834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155833
                                                      _stx153911_))
                                                   (if (##structure-ref
                                                        _klass153964_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155822
                                                              (let ((__tmp155832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153909_
                                    __checked?154791
                                    __klass154787
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155823
                             (let ((__tmp155829
                                    (let ((__tmp155830
                                           (let ((__tmp155831
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153909_
                                                     __id154790
                                                     __klass154787
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155831 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155830)))
                                   (__tmp155824
                                    (let ((__tmp155827
                                           (let ((__tmp155828
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153966_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155828)))
                                          (__tmp155825
                                           (let ((__tmp155826
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153970_ '()))))
                                             (declare (not safe))
                                             (cons _object153968_
                                                   __tmp155826))))
                                      (declare (not safe))
                                      (cons __tmp155827 __tmp155825))))
                               (declare (not safe))
                               (cons __tmp155829 __tmp155824))))
                        (declare (not safe))
                        (cons __tmp155832 __tmp155823))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155822 _stx153911_))
               (let ((_$e153973_
                      (let ((__tmp155752
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153909_
                                __slot154789
                                __klass154787
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153964_
                         __tmp155752))))
                 (if _$e153973_
                     ((lambda (_klass153976_)
                        (let ((__tmp155811
                               (let ((__tmp155821
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153909_
                                             __checked?154791
                                             __klass154787
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155812
                                      (let ((__tmp155818
                                             (let ((__tmp155819
                                                    (let ((__tmp155820
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153909_
                                                              __id154790
                                                              __klass154787
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155820 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155819)))
                                            (__tmp155813
                                             (let ((__tmp155816
                                                    (let ((__tmp155817
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155817)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155814
                                                    (let ((__tmp155815
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153968_ __tmp155815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155816
                                                     __tmp155814))))
                                        (declare (not safe))
                                        (cons __tmp155818 __tmp155813))))
                                 (declare (not safe))
                                 (cons __tmp155821 __tmp155812))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155811 _stx153911_)))
                      _$e153973_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153909_
                            __checked?154791
                            __klass154787
                            '#f))
                         (let ((__tmp155763
                                (let* ((_$obj153978_
                                        (let ((__tmp155764 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155764)))
                                       (__tmp155765
                                        (let ((__tmp155807
                                               (let ((__tmp155808
                                                      (let ((__tmp155810
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153978_ '())))
                    (__tmp155809
                     (let () (declare (not safe)) (cons _object153968_ '()))))
                (declare (not safe))
                (cons __tmp155810 __tmp155809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155808 '())))
                                              (__tmp155766
                                               (let ((__tmp155767
                                                      (let ((__tmp155768
                                                             (let ((__tmp155799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155800
                                   (let ((__tmp155804
                                          (let ((__tmp155805
                                                 (let ((__tmp155806
                                                        (##structure-ref
                                                         _klass153964_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155806 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155805)))
                                         (__tmp155801
                                          (let ((__tmp155802
                                                 (let ((__tmp155803
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153978_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155803))))
                                            (declare (not safe))
                                            (cons __tmp155802 '()))))
                                     (declare (not safe))
                                     (cons __tmp155804 __tmp155801))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155800)))
                           (__tmp155769
                            (let ((__tmp155787
                                   (let ((__tmp155788
                                          (let ((__tmp155796
                                                 (let ((__tmp155797
                                                        (let ((__tmp155798
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153909_
                          __id154790
                          __klass154787
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155798 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155797)))
                                                (__tmp155789
                                                 (let ((__tmp155794
                                                        (let ((__tmp155795
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153966_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155795)))
               (__tmp155790
                (let ((__tmp155792
                       (let ((__tmp155793
                              (let ()
                                (declare (not safe))
                                (cons _$obj153978_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155793)))
                      (__tmp155791
                       (let () (declare (not safe)) (cons _value153970_ '()))))
                  (declare (not safe))
                  (cons __tmp155792 __tmp155791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155794
                                                         __tmp155790))))
                                            (declare (not safe))
                                            (cons __tmp155796 __tmp155789))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155788)))
                                  (__tmp155770
                                   (let ((__tmp155771
                                          (let ((__tmp155772
                                                 (let ((__tmp155785
                                                        (let ((__tmp155786
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155786)))
               (__tmp155773
                (let ((__tmp155782
                       (let ((__tmp155783
                              (let ((__tmp155784
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153909_
                                        __id154790
                                        __klass154787
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155784 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155783)))
                      (__tmp155774
                       (let ((__tmp155780
                              (let ((__tmp155781
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153978_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155781)))
                             (__tmp155775
                              (let ((__tmp155777
                                     (let ((__tmp155778
                                            (let ((__tmp155779
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153909_
                                                      __slot154789
                                                      __klass154787
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155779 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155778)))
                                    (__tmp155776
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153970_ '()))))
                                (declare (not safe))
                                (cons __tmp155777 __tmp155776))))
                         (declare (not safe))
                         (cons __tmp155780 __tmp155775))))
                  (declare (not safe))
                  (cons __tmp155782 __tmp155774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155785
                                                         __tmp155773))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155772))))
                                     (declare (not safe))
                                     (cons __tmp155771 '()))))
                              (declare (not safe))
                              (cons __tmp155787 __tmp155770))))
                       (declare (not safe))
                       (cons __tmp155799 __tmp155769))))
                (declare (not safe))
                (cons '%#if __tmp155768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155767 '()))))
                                          (declare (not safe))
                                          (cons __tmp155807 __tmp155766))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155765))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155763 _stx153911_))
                         (let ((__tmp155753
                                (let ((__tmp155754
                                       (let ((__tmp155761
                                              (let ((__tmp155762
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155762)))
                                             (__tmp155755
                                              (let ((__tmp155756
                                                     (let ((__tmp155758
                                                            (let ((__tmp155759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155760
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153909_
                                     __slot154789
                                     __klass154787
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155760 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155759)))
                   (__tmp155757
                    (let () (declare (not safe)) (cons _value153970_ '()))))
               (declare (not safe))
               (cons __tmp155758 __tmp155757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153968_
                                                      __tmp155756))))
                                         (declare (not safe))
                                         (cons __tmp155761 __tmp155755))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155754))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155753
                            _stx153911_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153922153944_
                                           _hd153919153936_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153914153928_
                                             _g153915153931_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153914153928_ _g153915153931_)))))
                          (let ()
                            (declare (not safe))
                            (_g153914153928_ _g153915153931_))))))
              (declare (not safe))
              (_g153913153980_ _args153912_))))))
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
      (lambda (_self153742_ _ctx153743_ _stx153744_ _args153745_)
        (let* ((_self153746153755_ _self153742_)
               (_E153748153759_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153746153755_))))
               (_K153749153766_
                (lambda (_inline153762_ _dispatch153763_ _arity153764_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153742_ _args153745_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153744_
                         _arity153764_)))
                  (if _inline153762_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155849
                               (let ((__tmp155850
                                      (_inline153762_ _stx153744_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155850
                                  _stx153744_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153743_ __tmp155849)))
                      (if _dispatch153763_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153763_))
                            (let ((__tmp155844
                                   (let ((__tmp155845
                                          (let ((__tmp155846
                                                 (let ((__tmp155847
                                                        (let ((__tmp155848
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153763_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155847
                                                         _args153745_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155846))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155845
                                      _stx153744_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153743_ __tmp155844)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153743_ _stx153744_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153746153755_ 'gxc#!lambda::t))
              (let* ((_e153750153769_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153746153755_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153751153772_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153746153755_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153775_ _e153751153772_)
                     (_e153752153777_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153746153755_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153780_ _e153752153777_)
                     (_e153753153782_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153746153755_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153785_ _e153753153782_))
                (declare (not safe))
                (_K153749153766_
                 _inline153785_
                 _dispatch153780_
                 _arity153775_))
              (let () (declare (not safe)) (_E153748153759_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153580_ _ctx153581_ _stx153582_ _args153583_)
        (let* ((_self153584153591_ _self153580_)
               (_E153586153595_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153584153591_))))
               (_K153587153609_
                (lambda (_clauses153598_)
                  (let ((_$e153604_
                         (let ((__tmp155851
                                (lambda (_g153599153601_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153599153601_
                                     _args153583_)))))
                           (declare (not safe))
                           (find __tmp155851 _clauses153598_))))
                    (if _$e153604_
                        ((lambda (_clause153607_)
                           (let ((__method155065
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153607_
                                     'optimize-call))))
                             (if __method155065
                                 (__method155065
                                  _clause153607_
                                  _ctx153581_
                                  _stx153582_
                                  _args153583_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153607_
                                          'optimize-call)))))
                         _$e153604_)
                        (let ((__tmp155852
                               (map gxc#!lambda-arity _clauses153598_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153582_
                           __tmp155852)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153584153591_
                 'gxc#!case-lambda::t))
              (let* ((_e153588153612_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153584153591_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153589153615_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153584153591_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153618_ _e153589153615_))
                (declare (not safe))
                (_K153587153609_ _clauses153618_))
              (let () (declare (not safe)) (_E153586153595_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153394_ _args153395_)
        (let* ((_self153396153403_ _self153394_)
               (_E153398153407_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153396153403_))))
               (_K153399153447_
                (lambda (_arity153410_)
                  (let* ((_arity153411153420_ _arity153410_)
                         (_E153414153424_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153411153420_)))))
                    (let ((_K153418153444_
                           (lambda ()
                             (fx= (length _args153395_) _arity153410_)))
                          (_K153415153430_
                           (lambda (_arity153428_)
                             (fx>= (length _args153395_) _arity153428_))))
                      (let ((_try-match153413153440_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153411153420_))
                                   (let ((_tl153417153435_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153411153420_)))
                                         (_hd153416153433_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153411153420_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153417153435_))
                                         (let ((_arity153438_
                                                _hd153416153433_))
                                           (declare (not safe))
                                           (_K153415153430_ _arity153438_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153414153424_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153414153424_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153411153420_))
                            (let () (declare (not safe)) (_K153418153444_))
                            (let ()
                              (declare (not safe))
                              (_try-match153413153440_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153396153403_ 'gxc#!lambda::t))
              (let* ((_e153400153450_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153396153403_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153401153453_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153396153403_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153456_ _e153401153453_))
                (declare (not safe))
                (_K153399153447_ _arity153456_))
              (let () (declare (not safe)) (_E153398153407_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self153278_ _ctx153279_ _stx153280_ _args153281_)
        (let* ((_self153282153290_ _self153278_)
               (_E153284153294_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153282153290_))))
               (_K153285153378_
                (lambda (_dispatch153297_ _table153298_)
                  (let* ((_g153299153308_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch153297_)))
                         (_else153301153316_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch153297_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx153279_ _stx153280_))))
                         (_K153303153362_
                          (lambda (_main153319_ _keys153320_)
                            (let ((_g155853_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx153280_
                                      _args153281_))))
                              (begin
                                (let ((_g155854_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155853_)
                                             (##vector-length _g155853_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155854_ 2)))
                                      (error "Context expects 2 values"
                                             _g155854_)))
                                (let ((_pargs153322_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155853_ 0)))
                                      (_kwargs153323_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155853_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main153319_))
                                    (if _table153298_
                                        (let ((_xargs153330_
                                               (map (lambda (_key153325_)
                                                      (let ((_$e153327_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key153325_ _kwargs153323_))))
                (if _$e153327_ (values _$e153327_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys153320_)))
                                          (for-each
                                           (lambda (_kw153332_)
                                             (if (memq (car _kw153332_)
                                                       _keys153320_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx153280_
                                                    _keys153320_
                                                    _kw153332_))))
                                           _kwargs153323_)
                                          (let ((__tmp155906
                                                 (let ((__tmp155907
                                                        (let ((__tmp155908
                                                               (let ((__tmp155913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155914
                                     (let ()
                                       (declare (not safe))
                                       (cons _main153319_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155914)))
                             (__tmp155909
                              (let ((__tmp155911
                                     (let ((__tmp155912
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155912)))
                                    (__tmp155910
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs153322_
                                               _xargs153330_))))
                                (declare (not safe))
                                (cons __tmp155911 __tmp155910))))
                         (declare (not safe))
                         (cons __tmp155913 __tmp155909))))
                  (declare (not safe))
                  (cons '%#call __tmp155908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155907
                                                    _stx153280_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153279_
                                             __tmp155906)))
                                        (let* ((_kwt153334_
                                                (let ((__tmp155855
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155855)))
                                               (_kwvars153337_
                                                (map (lambda (_g155856_)
                                                       (let ((__tmp155857
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155857)))
                                                     _kwargs153323_))
                                               (_kwbind153342_
                                                (map (lambda (_kw153339_
                                                              _kwvar153340_)
                                                       (let ((__tmp155860
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153340_ '())))
                     (__tmp155858
                      (let ((__tmp155859 (cdr _kw153339_)))
                        (declare (not safe))
                        (cons __tmp155859 '()))))
                 (declare (not safe))
                 (cons __tmp155860 __tmp155858)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153323_
                                                     _kwvars153337_))
                                               (_kwset153347_
                                                (map (lambda (_kw153344_
                                                              _kwvar153345_)
                                                       (let ((__tmp155861
                                                              (let ((__tmp155862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155870
                                    (let ((__tmp155871
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153334_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155871)))
                                   (__tmp155863
                                    (let ((__tmp155867
                                           (let ((__tmp155868
                                                  (let ((__tmp155869
                                                         (car _kw153344_)))
                                                    (declare (not safe))
                                                    (cons __tmp155869 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155868)))
                                          (__tmp155864
                                           (let ((__tmp155865
                                                  (let ((__tmp155866
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155866))))
                                             (declare (not safe))
                                             (cons __tmp155865 '()))))
                                      (declare (not safe))
                                      (cons __tmp155867 __tmp155864))))
                               (declare (not safe))
                               (cons __tmp155870 __tmp155863))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155862))))
                 (declare (not safe))
                 (cons '%#call __tmp155861)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153323_
                                                     _kwvars153337_))
                                               (_xkwargs153352_
                                                (map (lambda (_kw153349_
                                                              _kwvar153350_)
                                                       (let ((__tmp155874
                                                              (car _kw153349_))
                                                             (__tmp155872
                                                              (let ((__tmp155873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153350_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155873))))
                 (declare (not safe))
                 (cons __tmp155874 __tmp155872)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153323_
                                                     _kwvars153337_))
                                               (_xargs153359_
                                                (map (lambda (_key153354_)
                                                       (let ((_$e153356_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153354_ _xkwargs153352_))))
                 (if _$e153356_ (values _$e153356_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys153320_)))
                                          (let ((__tmp155875
                                                 (let ((__tmp155876
                                                        (let ((__tmp155877
                                                               (let ((__tmp155878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155879
                                     (let ((__tmp155880
                                            (let ((__tmp155894
                                                   (let ((__tmp155895
                                                          (let ((__tmp155905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153334_ '())))
                        (__tmp155896
                         (let ((__tmp155897
                                (let ((__tmp155898
                                       (let ((__tmp155899
                                              (let ((__tmp155900
                                                     (let ((__tmp155902
                                                            (let ((__tmp155903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155904 (length _kwargs153323_)))
                             (declare (not safe))
                             (cons __tmp155904 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155903)))
                   (__tmp155901
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155902 __tmp155901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155900))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155899))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155898
                                   _stx153280_))))
                           (declare (not safe))
                           (cons __tmp155897 '()))))
                    (declare (not safe))
                    (cons __tmp155905 __tmp155896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155895 '())))
                                                  (__tmp155881
                                                   (let ((__tmp155882
                                                          (let ((__tmp155883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155884
                                (let ((__tmp155885
                                       (let ((__tmp155886
                                              (let ((__tmp155887
                                                     (let ((__tmp155892
                                                            (let ((__tmp155893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main153319_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155893)))
                   (__tmp155888
                    (let ((__tmp155890
                           (let ((__tmp155891
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153334_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155891)))
                          (__tmp155889
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs153322_ _xargs153359_))))
                      (declare (not safe))
                      (cons __tmp155890 __tmp155889))))
               (declare (not safe))
               (cons __tmp155892 __tmp155888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155887))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155886
                                          _stx153280_))))
                                  (declare (not safe))
                                  (cons __tmp155885 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155884 _kwset153347_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155882 '()))))
                                              (declare (not safe))
                                              (cons __tmp155894 __tmp155881))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155880))))
                                (declare (not safe))
                                (cons __tmp155879 '()))))
                         (declare (not safe))
                         (cons _kwbind153342_ __tmp155878))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155876
                                                    _stx153280_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153279_
                                             __tmp155875)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g153299153308_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e153304153365_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153299153308_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e153305153368_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153299153308_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153371_ _e153305153368_)
                               (_e153306153373_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153299153308_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153376_ _e153306153373_))
                          (declare (not safe))
                          (_K153303153362_ _main153376_ _keys153371_))
                        (let () (declare (not safe)) (_else153301153316_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153282153290_
                 'gxc#!kw-lambda::t))
              (let* ((_e153286153381_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153282153290_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153287153384_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153282153290_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153387_ _e153287153384_)
                     (_e153288153389_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153282153290_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153392_ _e153288153389_))
                (declare (not safe))
                (_K153285153378_ _dispatch153392_ _table153387_))
              (let () (declare (not safe)) (_E153284153294_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152891_ _args152892_)
        (let _lp152894_ ((_rest152896_ _args152892_)
                         (_pargs152897_ '())
                         (_kwargs152898_ '()))
          (let* ((___stx154945154946_ _rest152896_)
                 (_g152904152956_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154945154946_)))))
            (let ((___kont154947154948_
                   (lambda (_L153135_ _L153136_)
                     (let ((__tmp155915
                            (let ()
                              (declare (not safe))
                              (cons _L153136_ _pargs152897_))))
                       (declare (not safe))
                       (_lp152894_ _L153135_ __tmp155915 _kwargs152898_))))
                  (___kont154949154950_
                   (lambda (_L153081_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L153081_ _pargs152897_))
                             (reverse _kwargs152898_))))
                  (___kont154951154952_
                   (lambda (_L153028_ _L153029_ _L153030_)
                     (let ((_kw153047_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L153030_))))
                       (if (assq _kw153047_ _kwargs152898_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152891_
                              _kw153047_))
                           (let ((__tmp155916
                                  (let ((__tmp155917
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw153047_ _L153029_))))
                                    (declare (not safe))
                                    (cons __tmp155917 _kwargs152898_))))
                             (declare (not safe))
                             (_lp152894_
                              _L153028_
                              _pargs152897_
                              __tmp155916))))))
                  (___kont154953154954_
                   (lambda (_L152976_ _L152977_)
                     (let ((__tmp155918
                            (let ()
                              (declare (not safe))
                              (cons _L152977_ _pargs152897_))))
                       (declare (not safe))
                       (_lp152894_ _L152976_ __tmp155918 _kwargs152898_))))
                  (___kont154955154956_
                   (lambda ()
                     (values (reverse _pargs152897_)
                             (reverse _kwargs152898_)))))
              (let* ((_g152903152963_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154945154946_))
                            (___kont154955154956_)
                            (let () (declare (not safe)) (_g152904152956_)))))
                     (___match155052155053_
                      (lambda (_e152937152996_
                               _hd152936152999_
                               _tl152935153001_
                               _e152940153004_
                               _hd152939153007_
                               _tl152938153009_
                               _e152943153012_
                               _hd152942153015_
                               _tl152941153017_
                               _e152946153020_
                               _hd152945153023_
                               _tl152944153025_)
                        (let ((_L153028_ _tl152944153025_)
                              (_L153029_ _hd152945153023_)
                              (_L153030_ _hd152942153015_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L153030_))
                              (___kont154951154952_
                               _L153028_
                               _L153029_
                               _L153030_)
                              (___kont154953154954_
                               _tl152935153001_
                               _hd152936152999_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154945154946_))
                    (let ((_e152910153100_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154945154946_))))
                      (let ((_tl152908153105_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152910153100_)))
                            (_hd152909153103_
                             (let ()
                               (declare (not safe))
                               (##car _e152910153100_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152909153103_))
                            (let ((_e152913153108_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152909153103_))))
                              (let ((_tl152911153113_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152913153108_)))
                                    (_hd152912153111_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152913153108_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152912153111_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152912153111_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152911153113_))
                                            (let ((_e152916153116_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152911153113_))))
                                              (let ((_tl152914153121_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152916153116_)))
                                                    (_hd152915153119_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152916153116_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152915153119_))
                                                    (let ((_e152917153124_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152915153119_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152917153124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152914153121_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152908153105_))
                          (let ((_e152920153127_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152908153105_))))
                            (let ((_tl152918153132_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152920153127_)))
                                  (_hd152919153130_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152920153127_))))
                              (___kont154947154948_
                               _tl152918153132_
                               _hd152919153130_)))
                          (___kont154953154954_
                           _tl152908153105_
                           _hd152909153103_))
                      (___kont154953154954_ _tl152908153105_ _hd152909153103_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152917153124_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152914153121_))
                          (___kont154949154950_ _tl152908153105_)
                          (___kont154953154954_
                           _tl152908153105_
                           _hd152909153103_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152914153121_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152908153105_))
                              (let ((_e152946153020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152908153105_))))
                                (let ((_tl152944153025_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152946153020_)))
                                      (_hd152945153023_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152946153020_))))
                                  (___match155052155053_
                                   _e152910153100_
                                   _hd152909153103_
                                   _tl152908153105_
                                   _e152913153108_
                                   _hd152912153111_
                                   _tl152911153113_
                                   _e152916153116_
                                   _hd152915153119_
                                   _tl152914153121_
                                   _e152946153020_
                                   _hd152945153023_
                                   _tl152944153025_)))
                              (___kont154953154954_
                               _tl152908153105_
                               _hd152909153103_))
                          (___kont154953154954_
                           _tl152908153105_
                           _hd152909153103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152914153121_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152908153105_))
                                                            (let ((_e152946153020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152908153105_))))
                      (let ((_tl152944153025_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152946153020_)))
                            (_hd152945153023_
                             (let ()
                               (declare (not safe))
                               (##car _e152946153020_))))
                        (___match155052155053_
                         _e152910153100_
                         _hd152909153103_
                         _tl152908153105_
                         _e152913153108_
                         _hd152912153111_
                         _tl152911153113_
                         _e152916153116_
                         _hd152915153119_
                         _tl152914153121_
                         _e152946153020_
                         _hd152945153023_
                         _tl152944153025_)))
                    (___kont154953154954_ _tl152908153105_ _hd152909153103_))
                (___kont154953154954_ _tl152908153105_ _hd152909153103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154953154954_
                                             _tl152908153105_
                                             _hd152909153103_))
                                        (___kont154953154954_
                                         _tl152908153105_
                                         _hd152909153103_))
                                    (___kont154953154954_
                                     _tl152908153105_
                                     _hd152909153103_))))
                            (___kont154953154954_
                             _tl152908153105_
                             _hd152909153103_))))
                    (let () (declare (not safe)) (_g152903152963_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152886_ _ctx152887_ _stx152888_ _args152889_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152887_ _stx152888_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
