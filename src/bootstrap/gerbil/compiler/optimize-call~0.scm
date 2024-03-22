(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1711108660)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp155058 (list gxc#::basic-xform::t))
            (__tmp155056
             (let ((__tmp155057
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155057 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp155058
         '()
         __tmp155056
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154759_
        (apply make-instance gxc#::optimize-call::t _$args154759_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx154751_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154754_
                (let ((__obj155053
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj155053))
               (__tmp155059
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154754_ _stx154751_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155059
           gxc#current-compile-method
           _self154754_))))
    (define gxc#optimize-call%
      (lambda (_self154605_ _stx154606_)
        (let* ((___stx154804154805_ _stx154606_)
               (_g154609154629_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154804154805_)))))
          (let ((___kont154806154807_
                 (lambda (_L154673_ _L154674_)
                   (let* ((_rator-id154692_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154674_)))
                          (_rator-type154694_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154692_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154694_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp155060
                                  (##structure-ref
                                   _rator-type154694_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154692_
                              '" => "
                              _rator-type154694_
                              '" "
                              __tmp155060))
                           (let ((_optimized154697_
                                  (let ((__method155054
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154694_
                                            'optimize-call))))
                                    (if __method155054
                                        (__method155054
                                         _rator-type154694_
                                         _self154605_
                                         _stx154606_
                                         _L154673_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154694_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154694_))
                                 _optimized154697_
                                 (let* ((___stx154786154787_ _optimized154697_)
                                        (_g154700154710_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154786154787_)))))
                                   (let ((___kont154788154789_
                                          (lambda (_L154730_)
                                            (let ((__tmp155061
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154730_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp155061
                                               _stx154606_))))
                                         (___kont154790154791_
                                          (lambda () _optimized154697_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154786154787_))
                                         (let ((_e154705154722_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154786154787_))))
                                           (let ((_tl154703154727_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154705154722_)))
                                                 (_hd154704154725_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154705154722_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154704154725_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154704154725_))
                                                     (___kont154788154789_
                                                      _tl154703154727_)
                                                     (___kont154790154791_))
                                                 (___kont154790154791_))))
                                         (___kont154790154791_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154694_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154605_ _stx154606_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154606_
                                _rator-type154694_)))))))
                (___kont154808154809_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154605_ _stx154606_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154804154805_))
                (let ((_e154615154641_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154804154805_))))
                  (let ((_tl154613154646_
                         (let () (declare (not safe)) (##cdr _e154615154641_)))
                        (_hd154614154644_
                         (let ()
                           (declare (not safe))
                           (##car _e154615154641_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154613154646_))
                        (let ((_e154618154649_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154613154646_))))
                          (let ((_tl154616154654_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154618154649_)))
                                (_hd154617154652_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154618154649_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154617154652_))
                                (let ((_e154621154657_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154617154652_))))
                                  (let ((_tl154619154662_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154621154657_)))
                                        (_hd154620154660_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154621154657_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154620154660_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154620154660_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154619154662_))
                                                (let ((_e154624154665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154619154662_))))
                                                  (let ((_tl154622154670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154624154665_)))
                                                        (_hd154623154668_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154624154665_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154622154670_))
                                                        (___kont154806154807_
                                                         _tl154616154654_
                                                         _hd154623154668_)
                                                        (___kont154808154809_))))
                                                (___kont154808154809_))
                                            (___kont154808154809_))
                                        (___kont154808154809_))))
                                (___kont154808154809_))))
                        (___kont154808154809_))))
                (___kont154808154809_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154558_ _ctx154559_ _stx154560_ _args154561_)
        (let* ((_g154563154573_
                (lambda (_g154564154570_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154564154570_))))
               (_g154562154602_
                (lambda (_g154564154576_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154564154576_))
                      (let ((_e154568154578_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154564154576_))))
                        (let ((_hd154567154581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154568154578_)))
                              (_tl154566154583_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154568154578_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154566154583_))
                              ((lambda (_L154586_)
                                 (let* ((_klass154597_
                                         (let ((__tmp155062
                                                (##structure-ref
                                                 _self154558_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154560_
                                            __tmp155062)))
                                        (_object154599_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154559_
                                            _L154586_))))
                                   (if (##structure-ref
                                        _klass154597_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155078
                                              (let ((__tmp155079
                                                     (let ((__tmp155081
                                                            (let ((__tmp155082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155083
                                  (##structure-ref
                                   _klass154597_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155083 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155082)))
                   (__tmp155080
                    (let () (declare (not safe)) (cons _object154599_ '()))))
               (declare (not safe))
               (cons __tmp155081 __tmp155080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp155079))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155078
                                          _stx154560_))
                                       (if (##structure-ref
                                            _klass154597_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155072
                                                  (let ((__tmp155073
                                                         (let ((__tmp155075
                                                                (let ((__tmp155076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155077
                                      (##structure-ref
                                       _klass154597_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155077 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155076)))
                       (__tmp155074
                        (let ()
                          (declare (not safe))
                          (cons _object154599_ '()))))
                   (declare (not safe))
                   (cons __tmp155075 __tmp155074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp155073))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155072
                                              _stx154560_))
                                           (let ((__tmp155063
                                                  (let ((__tmp155064
                                                         (let ((__tmp155070
                                                                (let ((__tmp155071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155071)))
                       (__tmp155065
                        (let ((__tmp155067
                               (let ((__tmp155068
                                      (let ((__tmp155069
                                             (##structure-ref
                                              _self154558_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp155069 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp155068)))
                              (__tmp155066
                               (let ()
                                 (declare (not safe))
                                 (cons _object154599_ '()))))
                          (declare (not safe))
                          (cons __tmp155067 __tmp155066))))
                   (declare (not safe))
                   (cons __tmp155070 __tmp155065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp155064))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155063
                                              _stx154560_))))))
                               _hd154567154581_)
                              (let ()
                                (declare (not safe))
                                (_g154563154573_ _g154564154576_)))))
                      (let ()
                        (declare (not safe))
                        (_g154563154573_ _g154564154576_))))))
          (declare (not safe))
          (_g154562154602_ _args154561_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154761 __method-table154762)
        (let ((__id154763
               (let ((__slot154764
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154761 'id))))
                 (if __slot154764
                     __slot154764
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154558_ _ctx154559_ _stx154560_ _args154561_)
            (let* ((_g154563154573_
                    (lambda (_g154564154570_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154564154570_))))
                   (_g154562154602_
                    (lambda (_g154564154576_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154564154576_))
                          (let ((_e154568154578_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154564154576_))))
                            (let ((_hd154567154581_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154568154578_)))
                                  (_tl154566154583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154568154578_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154566154583_))
                                  ((lambda (_L154586_)
                                     (let* ((_klass154597_
                                             (let ((__tmp155084
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154558_
                                                       __id154763
                                                       __klass154761
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154560_
                                                __tmp155084)))
                                            (_object154599_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154559_
                                                _L154586_))))
                                       (if (##structure-ref
                                            _klass154597_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155100
                                                  (let ((__tmp155101
                                                         (let ((__tmp155103
                                                                (let ((__tmp155104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155105
                                      (##structure-ref
                                       _klass154597_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155105 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155104)))
                       (__tmp155102
                        (let ()
                          (declare (not safe))
                          (cons _object154599_ '()))))
                   (declare (not safe))
                   (cons __tmp155103 __tmp155102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp155101))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155100
                                              _stx154560_))
                                           (if (##structure-ref
                                                _klass154597_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155094
                                                      (let ((__tmp155095
                                                             (let ((__tmp155097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155098
                                   (let ((__tmp155099
                                          (##structure-ref
                                           _klass154597_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155099 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp155098)))
                           (__tmp155096
                            (let ()
                              (declare (not safe))
                              (cons _object154599_ '()))))
                       (declare (not safe))
                       (cons __tmp155097 __tmp155096))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp155095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155094
                                                  _stx154560_))
                                               (let ((__tmp155085
                                                      (let ((__tmp155086
                                                             (let ((__tmp155092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155093
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155093)))
                           (__tmp155087
                            (let ((__tmp155089
                                   (let ((__tmp155090
                                          (let ((__tmp155091
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154558_
                                                    __id154763
                                                    __klass154761
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp155091 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp155090)))
                                  (__tmp155088
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154599_ '()))))
                              (declare (not safe))
                              (cons __tmp155089 __tmp155088))))
                       (declare (not safe))
                       (cons __tmp155092 __tmp155087))))
                (declare (not safe))
                (cons '%#call __tmp155086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155085
                                                  _stx154560_))))))
                                   _hd154567154581_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154563154573_ _g154564154576_)))))
                          (let ()
                            (declare (not safe))
                            (_g154563154573_ _g154564154576_))))))
              (declare (not safe))
              (_g154562154602_ _args154561_))))))
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
      (lambda (_self154273_ _ctx154274_ _stx154275_ _args154276_)
        (let* ((_klass154278_
                (let ((__tmp155106
                       (##structure-ref _self154273_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx154275_ __tmp155106)))
               (_fields154280_
                (length (##structure-ref _klass154278_ '5 gxc#!class::t '#f)))
               (_args154286_
                (map (lambda (_g154281154283_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx154274_ _g154281154283_)))
                     _args154276_))
               (_inline-make-object154288_
                (let ((__tmp155107
                       (let ((__tmp155113
                              (let ((__tmp155114
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155114)))
                             (__tmp155108
                              (let ((__tmp155110
                                     (let ((__tmp155111
                                            (let ((__tmp155112
                                                   (##structure-ref
                                                    _self154273_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155112 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155111)))
                                    (__tmp155109
                                     (make-list _fields154280_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp155110 __tmp155109))))
                         (declare (not safe))
                         (cons __tmp155113 __tmp155108))))
                  (declare (not safe))
                  (cons '%#call __tmp155107))))
          (let ((_$e154291_
                 (##structure-ref _klass154278_ '6 gxc#!class::t '#f)))
            (if _$e154291_
                ((lambda (_ctor154294_)
                   (let ((_$obj154296_
                          (let ((__tmp155214 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp155214)))
                         (_ctor-impl154297_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass154278_
                             _ctor154294_))))
                     (let ((__tmp155215
                            (let ((__tmp155216
                                   (let ((__tmp155284
                                          (let ((__tmp155285
                                                 (let ((__tmp155287
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj154296_
                                                                '())))
                                                       (__tmp155286
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object154288_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155287
                                                         __tmp155286))))
                                            (declare (not safe))
                                            (cons __tmp155285 '())))
                                         (__tmp155217
                                          (let ((__tmp155218
                                                 (let ((__tmp155219
                                                        (let ((__tmp155223
                                                               (if _ctor-impl154297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155278
                                  (let ((__tmp155282
                                         (let ((__tmp155283
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl154297_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155283)))
                                        (__tmp155279
                                         (let ((__tmp155280
                                                (let ((__tmp155281
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj154296_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155281))))
                                           (declare (not safe))
                                           (cons __tmp155280 _args154286_))))
                                    (declare (not safe))
                                    (cons __tmp155282 __tmp155279))))
                             (declare (not safe))
                             (cons '%#call __tmp155278))
                           (let* ((_$ctor154299_
                                   (let ((__tmp155224 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp155224)))
                                  (__tmp155225
                                   (let ((__tmp155260
                                          (let ((__tmp155261
                                                 (let ((__tmp155277
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor154299_
                                                                '())))
                                                       (__tmp155262
                                                        (let ((__tmp155263
                                                               (let ((__tmp155264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155275
                                     (let ((__tmp155276
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155276)))
                                    (__tmp155265
                                     (let ((__tmp155272
                                            (let ((__tmp155273
                                                   (let ((__tmp155274
                                                          (##structure-ref
                                                           _self154273_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp155274 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155273)))
                                           (__tmp155266
                                            (let ((__tmp155270
                                                   (let ((__tmp155271
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155271)))
                                                  (__tmp155267
                                                   (let ((__tmp155268
                                                          (let ((__tmp155269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor154294_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155268 '()))))
                                              (declare (not safe))
                                              (cons __tmp155270 __tmp155267))))
                                       (declare (not safe))
                                       (cons __tmp155272 __tmp155266))))
                                (declare (not safe))
                                (cons __tmp155275 __tmp155265))))
                         (declare (not safe))
                         (cons '%#call __tmp155264))))
                  (declare (not safe))
                  (cons __tmp155263 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155277
                                                         __tmp155262))))
                                            (declare (not safe))
                                            (cons __tmp155261 '())))
                                         (__tmp155226
                                          (let ((__tmp155227
                                                 (let ((__tmp155228
                                                        (let ((__tmp155258
                                                               (let ((__tmp155259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor154299_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155259)))
                      (__tmp155229
                       (let ((__tmp155251
                              (let ((__tmp155252
                                     (let ((__tmp155256
                                            (let ((__tmp155257
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor154299_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155257)))
                                           (__tmp155253
                                            (let ((__tmp155254
                                                   (let ((__tmp155255
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155255))))
                                              (declare (not safe))
                                              (cons __tmp155254
                                                    _args154286_))))
                                       (declare (not safe))
                                       (cons __tmp155256 __tmp155253))))
                                (declare (not safe))
                                (cons '%#call __tmp155252)))
                             (__tmp155230
                              (let ((__tmp155231
                                     (let ((__tmp155232
                                            (let ((__tmp155249
                                                   (let ((__tmp155250
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155250)))
                                                  (__tmp155233
                                                   (let ((__tmp155247
                                                          (let ((__tmp155248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155248)))
                 (__tmp155234
                  (let ((__tmp155245
                         (let ((__tmp155246
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155246)))
                        (__tmp155235
                         (let ((__tmp155242
                                (let ((__tmp155243
                                       (let ((__tmp155244
                                              (##structure-ref
                                               _self154273_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155244 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155243)))
                               (__tmp155236
                                (let ((__tmp155240
                                       (let ((__tmp155241
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155241)))
                                      (__tmp155237
                                       (let ((__tmp155238
                                              (let ((__tmp155239
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor154294_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp155239))))
                                         (declare (not safe))
                                         (cons __tmp155238 '()))))
                                  (declare (not safe))
                                  (cons __tmp155240 __tmp155237))))
                           (declare (not safe))
                           (cons __tmp155242 __tmp155236))))
                    (declare (not safe))
                    (cons __tmp155245 __tmp155235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155247
                                                           __tmp155234))))
                                              (declare (not safe))
                                              (cons __tmp155249 __tmp155233))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155232))))
                                (declare (not safe))
                                (cons __tmp155231 '()))))
                         (declare (not safe))
                         (cons __tmp155251 __tmp155230))))
                  (declare (not safe))
                  (cons __tmp155258 __tmp155229))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp155228))))
                                            (declare (not safe))
                                            (cons __tmp155227 '()))))
                                     (declare (not safe))
                                     (cons __tmp155260 __tmp155226))))
                             (declare (not safe))
                             (cons '%#let-values __tmp155225))))
                      (__tmp155220
                       (let ((__tmp155221
                              (let ((__tmp155222
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj154296_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155222))))
                         (declare (not safe))
                         (cons __tmp155221 '()))))
                  (declare (not safe))
                  (cons __tmp155223 __tmp155220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp155219))))
                                            (declare (not safe))
                                            (cons __tmp155218 '()))))
                                     (declare (not safe))
                                     (cons __tmp155284 __tmp155217))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155216))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155215 _stx154275_))))
                 _$e154291_)
                (let ((_$e154301_
                       (##structure-ref _klass154278_ '10 gxc#!class::t '#f)))
                  (if _$e154301_
                      ((lambda (_metaclass154304_)
                         (let* ((_$obj154306_
                                 (let ((__tmp155176 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155176)))
                                (_metakons154308_
                                 (let ((__tmp155177
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx154275_
                                           _metaclass154304_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp155177
                                    'instance-init!))))
                           (let ((__tmp155178
                                  (let ((__tmp155179
                                         (let ((__tmp155210
                                                (let ((__tmp155211
                                                       (let ((__tmp155213
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154306_ '())))
                     (__tmp155212
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object154288_ '()))))
                 (declare (not safe))
                 (cons __tmp155213 __tmp155212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155211 '())))
                                               (__tmp155180
                                                (let ((__tmp155181
                                                       (let ((__tmp155182
                                                              (let ((__tmp155186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons154308_
                                 (let ((__tmp155200
                                        (let ((__tmp155208
                                               (let ((__tmp155209
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons154308_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155209)))
                                              (__tmp155201
                                               (let ((__tmp155205
                                                      (let ((__tmp155206
                                                             (let ((__tmp155207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154273_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155207 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155206)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155202
                                                      (let ((__tmp155203
                                                             (let ((__tmp155204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj154306_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155204))))
                (declare (not safe))
                (cons __tmp155203 _args154286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155205
                                                       __tmp155202))))
                                          (declare (not safe))
                                          (cons __tmp155208 __tmp155201))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155200))
                                 (let ((__tmp155187
                                        (let ((__tmp155198
                                               (let ((__tmp155199
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155199)))
                                              (__tmp155188
                                               (let ((__tmp155195
                                                      (let ((__tmp155196
                                                             (let ((__tmp155197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154273_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155197 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155196)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155189
                                                      (let ((__tmp155193
                                                             (let ((__tmp155194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp155194)))
                    (__tmp155190
                     (let ((__tmp155191
                            (let ((__tmp155192
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154306_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155192))))
                       (declare (not safe))
                       (cons __tmp155191 _args154286_))))
                (declare (not safe))
                (cons __tmp155193 __tmp155190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155195
                                                       __tmp155189))))
                                          (declare (not safe))
                                          (cons __tmp155198 __tmp155188))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155187))))
                            (__tmp155183
                             (let ((__tmp155184
                                    (let ((__tmp155185
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj154306_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155185))))
                               (declare (not safe))
                               (cons __tmp155184 '()))))
                        (declare (not safe))
                        (cons __tmp155186 __tmp155183))))
                 (declare (not safe))
                 (cons '%#begin __tmp155182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155181 '()))))
                                           (declare (not safe))
                                           (cons __tmp155210 __tmp155180))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp155179))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp155178 _stx154275_))))
                       _$e154301_)
                      (if (##structure-ref _klass154278_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args154286_) _fields154280_)
                              (let ((__tmp155168
                                     (let ((__tmp155169
                                            (let ((__tmp155174
                                                   (let ((__tmp155175
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155175)))
                                                  (__tmp155170
                                                   (let ((__tmp155171
                                                          (let ((__tmp155172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155173
                                (##structure-ref
                                 _self154273_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp155173 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155172))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155171
                                                           _args154286_))))
                                              (declare (not safe))
                                              (cons __tmp155174 __tmp155170))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155169))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp155168
                                 _stx154275_))
                              (let ((__tmp155167
                                     (##structure-ref
                                      _self154273_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp155166
                                     (length (##structure-ref
                                              _klass154278_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx154275_
                                 __tmp155167
                                 __tmp155166)))
                          (let ((_$obj154311_
                                 (let ((__tmp155115 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155115))))
                            (let _lp154313_ ((_rest154315_ _args154286_)
                                             (_initializers154316_ '()))
                              (let* ((___stx154842154843_ _rest154315_)
                                     (_g154320154341_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154842154843_)))))
                                (let ((___kont154844154845_
                                       (lambda (_L154395_ _L154396_ _L154397_)
                                         (let* ((_slot154428_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L154397_))))
                                                (_off154430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass154278_
                                                    _slot154428_))))
                                           (if _off154430_
                                               (let ((__tmp155117
                                                      (let ((__tmp155118
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154430_ _L154396_))))
                (declare (not safe))
                (cons __tmp155118 _initializers154316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp154313_
                                                  _L154395_
                                                  __tmp155117))
                                               (let ((__tmp155116
                                                      (##structure-ref
                                                       _self154273_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx154275_
                                                  __tmp155116
                                                  _slot154428_))))))
                                      (___kont154846154847_
                                       (lambda ()
                                         (let ((__tmp155119
                                                (let ((__tmp155120
                                                       (let ((__tmp155143
                                                              (let ((__tmp155144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155146
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154311_ '())))
                                   (__tmp155145
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154288_ '()))))
                               (declare (not safe))
                               (cons __tmp155146 __tmp155145))))
                        (declare (not safe))
                        (cons __tmp155144 '())))
                     (__tmp155121
                      (let ((__tmp155122
                             (let ((__tmp155123
                                    (let ((__tmp155140
                                           (let ((__tmp155141
                                                  (let ((__tmp155142
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155142))))
                                             (declare (not safe))
                                             (cons __tmp155141 '())))
                                          (__tmp155124
                                           (let ((__tmp155125
                                                  (lambda (_i154355_ _r154356_)
                                                    (let ((__tmp155126
                                                           (let ((__tmp155127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155137
                                 (let ((__tmp155138
                                        (let ((__tmp155139
                                               (##structure-ref
                                                _self154273_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155139 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155138)))
                                (__tmp155128
                                 (let ((__tmp155134
                                        (let ((__tmp155135
                                               (let ((__tmp155136
                                                      (car _i154355_)))
                                                 (declare (not safe))
                                                 (cons __tmp155136 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155135)))
                                       (__tmp155129
                                        (let ((__tmp155132
                                               (let ((__tmp155133
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj154311_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155133)))
                                              (__tmp155130
                                               (let ((__tmp155131
                                                      (cdr _i154355_)))
                                                 (declare (not safe))
                                                 (cons __tmp155131 '()))))
                                          (declare (not safe))
                                          (cons __tmp155132 __tmp155130))))
                                   (declare (not safe))
                                   (cons __tmp155134 __tmp155129))))
                            (declare (not safe))
                            (cons __tmp155137 __tmp155128))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp155127))))
              (declare (not safe))
              (cons __tmp155126 _r154356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp155125
                                                     '()
                                                     _initializers154316_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp155140 __tmp155124))))
                               (declare (not safe))
                               (cons '%#begin __tmp155123))))
                        (declare (not safe))
                        (cons __tmp155122 '()))))
                 (declare (not safe))
                 (cons __tmp155143 __tmp155121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155120))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155119
                                            _stx154275_))))
                                      (___kont154848154849_
                                       (lambda ()
                                         (let ((__tmp155147
                                                (let ((__tmp155148
                                                       (let ((__tmp155162
                                                              (let ((__tmp155163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155165
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154311_ '())))
                                   (__tmp155164
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154288_ '()))))
                               (declare (not safe))
                               (cons __tmp155165 __tmp155164))))
                        (declare (not safe))
                        (cons __tmp155163 '())))
                     (__tmp155149
                      (let ((__tmp155150
                             (let ((__tmp155151
                                    (let ((__tmp155155
                                           (let ((__tmp155156
                                                  (let ((__tmp155160
                                                         (let ((__tmp155161
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp155161)))
                (__tmp155157
                 (let ((__tmp155158
                        (let ((__tmp155159
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj154311_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155159))))
                   (declare (not safe))
                   (cons __tmp155158 _args154286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155160
                                                          __tmp155157))))
                                             (declare (not safe))
                                             (cons '%#call __tmp155156)))
                                          (__tmp155152
                                           (let ((__tmp155153
                                                  (let ((__tmp155154
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155154))))
                                             (declare (not safe))
                                             (cons __tmp155153 '()))))
                                      (declare (not safe))
                                      (cons __tmp155155 __tmp155152))))
                               (declare (not safe))
                               (cons '%#begin __tmp155151))))
                        (declare (not safe))
                        (cons __tmp155150 '()))))
                 (declare (not safe))
                 (cons __tmp155162 __tmp155149))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155148))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155147
                                            _stx154275_)))))
                                  (let* ((_g154318154358_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154842154843_))
                                                (___kont154846154847_)
                                                (___kont154848154849_))))
                                         (___match154879154880_
                                          (lambda (_e154327154363_
                                                   _hd154326154366_
                                                   _tl154325154368_
                                                   _e154330154371_
                                                   _hd154329154374_
                                                   _tl154328154376_
                                                   _e154333154379_
                                                   _hd154332154382_
                                                   _tl154331154384_
                                                   _e154336154387_
                                                   _hd154335154390_
                                                   _tl154334154392_)
                                            (let ((_L154395_ _tl154334154392_)
                                                  (_L154396_ _hd154335154390_)
                                                  (_L154397_ _hd154332154382_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154397_))
                                                  (___kont154844154845_
                                                   _L154395_
                                                   _L154396_
                                                   _L154397_)
                                                  (___kont154848154849_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154842154843_))
                                        (let ((_e154327154363_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154842154843_))))
                                          (let ((_tl154325154368_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154327154363_)))
                                                (_hd154326154366_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154327154363_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154326154366_))
                                                (let ((_e154330154371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154326154366_))))
                                                  (let ((_tl154328154376_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154330154371_)))
                                                        (_hd154329154374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154330154371_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154329154374_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154329154374_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154328154376_))
                        (let ((_e154333154379_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154328154376_))))
                          (let ((_tl154331154384_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154333154379_)))
                                (_hd154332154382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154333154379_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154331154384_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154325154368_))
                                    (let ((_e154336154387_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154325154368_))))
                                      (let ((_tl154334154392_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154336154387_)))
                                            (_hd154335154390_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154336154387_))))
                                        (___match154879154880_
                                         _e154327154363_
                                         _hd154326154366_
                                         _tl154325154368_
                                         _e154330154371_
                                         _hd154329154374_
                                         _tl154328154376_
                                         _e154333154379_
                                         _hd154332154382_
                                         _tl154331154384_
                                         _e154336154387_
                                         _hd154335154390_
                                         _tl154334154392_)))
                                    (___kont154848154849_))
                                (___kont154848154849_))))
                        (___kont154848154849_))
                    (___kont154848154849_))
                (___kont154848154849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154848154849_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154318154358_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154765 __method-table154766)
        (let ((__id154767
               (let ((__slot154768
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154765 'id))))
                 (if __slot154768
                     __slot154768
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154273_ _ctx154274_ _stx154275_ _args154276_)
            (let* ((_klass154278_
                    (let ((__tmp155288
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self154273_
                              __id154767
                              __klass154765
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx154275_ __tmp155288)))
                   (_fields154280_
                    (length (##structure-ref
                             _klass154278_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args154286_
                    (map (lambda (_g154281154283_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx154274_ _g154281154283_)))
                         _args154276_))
                   (_inline-make-object154288_
                    (let ((__tmp155289
                           (let ((__tmp155295
                                  (let ((__tmp155296
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155296)))
                                 (__tmp155290
                                  (let ((__tmp155292
                                         (let ((__tmp155293
                                                (let ((__tmp155294
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154273_
                                                          __id154767
                                                          __klass154765
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155294 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155293)))
                                        (__tmp155291
                                         (make-list
                                          _fields154280_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp155292 __tmp155291))))
                             (declare (not safe))
                             (cons __tmp155295 __tmp155290))))
                      (declare (not safe))
                      (cons '%#call __tmp155289))))
              (let ((_$e154291_
                     (##structure-ref _klass154278_ '6 gxc#!class::t '#f)))
                (if _$e154291_
                    ((lambda (_ctor154294_)
                       (let ((_$obj154296_
                              (let ((__tmp155396 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155396)))
                             (_ctor-impl154297_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass154278_
                                 _ctor154294_))))
                         (let ((__tmp155397
                                (let ((__tmp155398
                                       (let ((__tmp155466
                                              (let ((__tmp155467
                                                     (let ((__tmp155469
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj154296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155468
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object154288_ '()))))
               (declare (not safe))
               (cons __tmp155469 __tmp155468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155467 '())))
                                             (__tmp155399
                                              (let ((__tmp155400
                                                     (let ((__tmp155401
                                                            (let ((__tmp155405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl154297_
                               (let ((__tmp155460
                                      (let ((__tmp155464
                                             (let ((__tmp155465
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl154297_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155465)))
                                            (__tmp155461
                                             (let ((__tmp155462
                                                    (let ((__tmp155463
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj154296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155462
                                                     _args154286_))))
                                        (declare (not safe))
                                        (cons __tmp155464 __tmp155461))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155460))
                               (let* ((_$ctor154299_
                                       (let ((__tmp155406
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155406)))
                                      (__tmp155407
                                       (let ((__tmp155442
                                              (let ((__tmp155443
                                                     (let ((__tmp155459
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor154299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155444
                    (let ((__tmp155445
                           (let ((__tmp155446
                                  (let ((__tmp155457
                                         (let ((__tmp155458
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155458)))
                                        (__tmp155447
                                         (let ((__tmp155454
                                                (let ((__tmp155455
                                                       (let ((__tmp155456
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self154273_
                         __id154767
                         __klass154765
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155456 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155455)))
                                               (__tmp155448
                                                (let ((__tmp155452
                                                       (let ((__tmp155453
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154296_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155453)))
              (__tmp155449
               (let ((__tmp155450
                      (let ((__tmp155451
                             (let ()
                               (declare (not safe))
                               (cons _ctor154294_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155451))))
                 (declare (not safe))
                 (cons __tmp155450 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155452
                                                        __tmp155449))))
                                           (declare (not safe))
                                           (cons __tmp155454 __tmp155448))))
                                    (declare (not safe))
                                    (cons __tmp155457 __tmp155447))))
                             (declare (not safe))
                             (cons '%#call __tmp155446))))
                      (declare (not safe))
                      (cons __tmp155445 '()))))
               (declare (not safe))
               (cons __tmp155459 __tmp155444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155443 '())))
                                             (__tmp155408
                                              (let ((__tmp155409
                                                     (let ((__tmp155410
                                                            (let ((__tmp155440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155441
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor154299_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155441)))
                          (__tmp155411
                           (let ((__tmp155433
                                  (let ((__tmp155434
                                         (let ((__tmp155438
                                                (let ((__tmp155439
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor154299_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155439)))
                                               (__tmp155435
                                                (let ((__tmp155436
                                                       (let ((__tmp155437
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154296_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155436
                                                        _args154286_))))
                                           (declare (not safe))
                                           (cons __tmp155438 __tmp155435))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155434)))
                                 (__tmp155412
                                  (let ((__tmp155413
                                         (let ((__tmp155414
                                                (let ((__tmp155431
                                                       (let ((__tmp155432
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155432)))
              (__tmp155415
               (let ((__tmp155429
                      (let ((__tmp155430
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155430)))
                     (__tmp155416
                      (let ((__tmp155427
                             (let ((__tmp155428
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155428)))
                            (__tmp155417
                             (let ((__tmp155424
                                    (let ((__tmp155425
                                           (let ((__tmp155426
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self154273_
                                                     __id154767
                                                     __klass154765
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155426 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155425)))
                                   (__tmp155418
                                    (let ((__tmp155422
                                           (let ((__tmp155423
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155423)))
                                          (__tmp155419
                                           (let ((__tmp155420
                                                  (let ((__tmp155421
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor154294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155421))))
                                             (declare (not safe))
                                             (cons __tmp155420 '()))))
                                      (declare (not safe))
                                      (cons __tmp155422 __tmp155419))))
                               (declare (not safe))
                               (cons __tmp155424 __tmp155418))))
                        (declare (not safe))
                        (cons __tmp155427 __tmp155417))))
                 (declare (not safe))
                 (cons __tmp155429 __tmp155416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155431
                                                        __tmp155415))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155414))))
                                    (declare (not safe))
                                    (cons __tmp155413 '()))))
                             (declare (not safe))
                             (cons __tmp155433 __tmp155412))))
                      (declare (not safe))
                      (cons __tmp155440 __tmp155411))))
               (declare (not safe))
               (cons '%#if __tmp155410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155409 '()))))
                                         (declare (not safe))
                                         (cons __tmp155442 __tmp155408))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155407))))
                          (__tmp155402
                           (let ((__tmp155403
                                  (let ((__tmp155404
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj154296_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155404))))
                             (declare (not safe))
                             (cons __tmp155403 '()))))
                      (declare (not safe))
                      (cons __tmp155405 __tmp155402))))
               (declare (not safe))
               (cons '%#begin __tmp155401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155400 '()))))
                                         (declare (not safe))
                                         (cons __tmp155466 __tmp155399))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155398))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155397 _stx154275_))))
                     _$e154291_)
                    (let ((_$e154301_
                           (##structure-ref
                            _klass154278_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e154301_
                          ((lambda (_metaclass154304_)
                             (let* ((_$obj154306_
                                     (let ((__tmp155358 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155358)))
                                    (_metakons154308_
                                     (let ((__tmp155359
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx154275_
                                               _metaclass154304_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155359
                                        'instance-init!))))
                               (let ((__tmp155360
                                      (let ((__tmp155361
                                             (let ((__tmp155392
                                                    (let ((__tmp155393
                                                           (let ((__tmp155395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj154306_ '())))
                         (__tmp155394
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object154288_ '()))))
                     (declare (not safe))
                     (cons __tmp155395 __tmp155394))))
              (declare (not safe))
              (cons __tmp155393 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155362
                                                    (let ((__tmp155363
                                                           (let ((__tmp155364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155368
                                 (if _metakons154308_
                                     (let ((__tmp155382
                                            (let ((__tmp155390
                                                   (let ((__tmp155391
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons154308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155391)))
                                                  (__tmp155383
                                                   (let ((__tmp155387
                                                          (let ((__tmp155388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155389
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154273_
                                   __id154767
                                   __klass154765
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155389 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155388)))
                 (__tmp155384
                  (let ((__tmp155385
                         (let ((__tmp155386
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj154306_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155386))))
                    (declare (not safe))
                    (cons __tmp155385 _args154286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155387
                                                           __tmp155384))))
                                              (declare (not safe))
                                              (cons __tmp155390 __tmp155383))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155382))
                                     (let ((__tmp155369
                                            (let ((__tmp155380
                                                   (let ((__tmp155381
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155381)))
                                                  (__tmp155370
                                                   (let ((__tmp155377
                                                          (let ((__tmp155378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155379
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154273_
                                   __id154767
                                   __klass154765
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155379 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155378)))
                 (__tmp155371
                  (let ((__tmp155375
                         (let ((__tmp155376
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155376)))
                        (__tmp155372
                         (let ((__tmp155373
                                (let ((__tmp155374
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj154306_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155374))))
                           (declare (not safe))
                           (cons __tmp155373 _args154286_))))
                    (declare (not safe))
                    (cons __tmp155375 __tmp155372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155377
                                                           __tmp155371))))
                                              (declare (not safe))
                                              (cons __tmp155380 __tmp155370))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155369))))
                                (__tmp155365
                                 (let ((__tmp155366
                                        (let ((__tmp155367
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj154306_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155367))))
                                   (declare (not safe))
                                   (cons __tmp155366 '()))))
                            (declare (not safe))
                            (cons __tmp155368 __tmp155365))))
                     (declare (not safe))
                     (cons '%#begin __tmp155364))))
              (declare (not safe))
              (cons __tmp155363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155392
                                                     __tmp155362))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155361))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155360
                                  _stx154275_))))
                           _$e154301_)
                          (if (##structure-ref
                               _klass154278_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args154286_) _fields154280_)
                                  (let ((__tmp155350
                                         (let ((__tmp155351
                                                (let ((__tmp155356
                                                       (let ((__tmp155357
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155357)))
              (__tmp155352
               (let ((__tmp155353
                      (let ((__tmp155354
                             (let ((__tmp155355
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self154273_
                                       __id154767
                                       __klass154765
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155355 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155354))))
                 (declare (not safe))
                 (cons __tmp155353 _args154286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155356
                                                        __tmp155352))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155351))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155350
                                     _stx154275_))
                                  (let ((__tmp155349
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self154273_
                                            __id154767
                                            __klass154765
                                            '#f)))
                                        (__tmp155348
                                         (length (##structure-ref
                                                  _klass154278_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx154275_
                                     __tmp155349
                                     __tmp155348)))
                              (let ((_$obj154311_
                                     (let ((__tmp155297 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155297))))
                                (let _lp154313_ ((_rest154315_ _args154286_)
                                                 (_initializers154316_ '()))
                                  (let* ((___stx154884154885_ _rest154315_)
                                         (_g154320154341_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154884154885_)))))
                                    (let ((___kont154886154887_
                                           (lambda (_L154395_
                                                    _L154396_
                                                    _L154397_)
                                             (let* ((_slot154428_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154397_))))
                                                    (_off154430_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass154278_
                                                        _slot154428_))))
                                               (if _off154430_
                                                   (let ((__tmp155299
                                                          (let ((__tmp155300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154430_ _L154396_))))
                    (declare (not safe))
                    (cons __tmp155300 _initializers154316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp154313_
                                                      _L154395_
                                                      __tmp155299))
                                                   (let ((__tmp155298
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self154273_
                                                             __id154767
                                                             __klass154765
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx154275_
                                                      __tmp155298
                                                      _slot154428_))))))
                                          (___kont154888154889_
                                           (lambda ()
                                             (let ((__tmp155301
                                                    (let ((__tmp155302
                                                           (let ((__tmp155325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155326
                                 (let ((__tmp155328
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154311_ '())))
                                       (__tmp155327
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154288_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155328 __tmp155327))))
                            (declare (not safe))
                            (cons __tmp155326 '())))
                         (__tmp155303
                          (let ((__tmp155304
                                 (let ((__tmp155305
                                        (let ((__tmp155322
                                               (let ((__tmp155323
                                                      (let ((__tmp155324
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154311_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155323 '())))
                                              (__tmp155306
                                               (let ((__tmp155307
                                                      (lambda (_i154355_
                                                               _r154356_)
                                                        (let ((__tmp155308
                                                               (let ((__tmp155309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155319
                                     (let ((__tmp155320
                                            (let ((__tmp155321
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154273_
                                                      __id154767
                                                      __klass154765
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155321 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155320)))
                                    (__tmp155310
                                     (let ((__tmp155316
                                            (let ((__tmp155317
                                                   (let ((__tmp155318
                                                          (car _i154355_)))
                                                     (declare (not safe))
                                                     (cons __tmp155318 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155317)))
                                           (__tmp155311
                                            (let ((__tmp155314
                                                   (let ((__tmp155315
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155315)))
                                                  (__tmp155312
                                                   (let ((__tmp155313
                                                          (cdr _i154355_)))
                                                     (declare (not safe))
                                                     (cons __tmp155313 '()))))
                                              (declare (not safe))
                                              (cons __tmp155314 __tmp155312))))
                                       (declare (not safe))
                                       (cons __tmp155316 __tmp155311))))
                                (declare (not safe))
                                (cons __tmp155319 __tmp155310))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp155309))))
                  (declare (not safe))
                  (cons __tmp155308 _r154356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp155307
                                                         '()
                                                         _initializers154316_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155322
                                                  __tmp155306))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155305))))
                            (declare (not safe))
                            (cons __tmp155304 '()))))
                     (declare (not safe))
                     (cons __tmp155325 __tmp155303))))
              (declare (not safe))
              (cons '%#let-values __tmp155302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155301
                                                _stx154275_))))
                                          (___kont154890154891_
                                           (lambda ()
                                             (let ((__tmp155329
                                                    (let ((__tmp155330
                                                           (let ((__tmp155344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155345
                                 (let ((__tmp155347
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154311_ '())))
                                       (__tmp155346
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154288_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155347 __tmp155346))))
                            (declare (not safe))
                            (cons __tmp155345 '())))
                         (__tmp155331
                          (let ((__tmp155332
                                 (let ((__tmp155333
                                        (let ((__tmp155337
                                               (let ((__tmp155338
                                                      (let ((__tmp155342
                                                             (let ((__tmp155343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155343)))
                    (__tmp155339
                     (let ((__tmp155340
                            (let ((__tmp155341
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154311_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155341))))
                       (declare (not safe))
                       (cons __tmp155340 _args154286_))))
                (declare (not safe))
                (cons __tmp155342 __tmp155339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155338)))
                                              (__tmp155334
                                               (let ((__tmp155335
                                                      (let ((__tmp155336
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154311_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155335 '()))))
                                          (declare (not safe))
                                          (cons __tmp155337 __tmp155334))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155333))))
                            (declare (not safe))
                            (cons __tmp155332 '()))))
                     (declare (not safe))
                     (cons __tmp155344 __tmp155331))))
              (declare (not safe))
              (cons '%#let-values __tmp155330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155329
                                                _stx154275_)))))
                                      (let* ((_g154318154358_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154884154885_))
                                                    (___kont154888154889_)
                                                    (___kont154890154891_))))
                                             (___match154921154922_
                                              (lambda (_e154327154363_
                                                       _hd154326154366_
                                                       _tl154325154368_
                                                       _e154330154371_
                                                       _hd154329154374_
                                                       _tl154328154376_
                                                       _e154333154379_
                                                       _hd154332154382_
                                                       _tl154331154384_
                                                       _e154336154387_
                                                       _hd154335154390_
                                                       _tl154334154392_)
                                                (let ((_L154395_
                                                       _tl154334154392_)
                                                      (_L154396_
                                                       _hd154335154390_)
                                                      (_L154397_
                                                       _hd154332154382_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154397_))
                                                      (___kont154886154887_
                                                       _L154395_
                                                       _L154396_
                                                       _L154397_)
                                                      (___kont154890154891_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154884154885_))
                                            (let ((_e154327154363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154884154885_))))
                                              (let ((_tl154325154368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154327154363_)))
                                                    (_hd154326154366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154327154363_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154326154366_))
                                                    (let ((_e154330154371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154326154366_))))
                                                      (let ((_tl154328154376_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154330154371_)))
                    (_hd154329154374_
                     (let () (declare (not safe)) (##car _e154330154371_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154329154374_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154329154374_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154328154376_))
                            (let ((_e154333154379_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154328154376_))))
                              (let ((_tl154331154384_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154333154379_)))
                                    (_hd154332154382_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154333154379_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154331154384_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154325154368_))
                                        (let ((_e154336154387_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154325154368_))))
                                          (let ((_tl154334154392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154336154387_)))
                                                (_hd154335154390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154336154387_))))
                                            (___match154921154922_
                                             _e154327154363_
                                             _hd154326154366_
                                             _tl154325154368_
                                             _e154330154371_
                                             _hd154329154374_
                                             _tl154328154376_
                                             _e154333154379_
                                             _hd154332154382_
                                             _tl154331154384_
                                             _e154336154387_
                                             _hd154335154390_
                                             _tl154334154392_)))
                                        (___kont154890154891_))
                                    (___kont154890154891_))))
                            (___kont154890154891_))
                        (___kont154890154891_))
                    (___kont154890154891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154890154891_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154318154358_))))))))))))))))))
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
      (lambda (_self154095_ _ctx154096_ _stx154097_ _args154098_)
        (let* ((_g154100154110_
                (lambda (_g154101154107_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154101154107_))))
               (_g154099154148_
                (lambda (_g154101154113_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154101154113_))
                      (let ((_e154105154115_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154101154113_))))
                        (let ((_hd154104154118_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154105154115_)))
                              (_tl154103154120_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154105154115_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154103154120_))
                              ((lambda (_L154123_)
                                 (let* ((_klass154134_
                                         (let ((__tmp155470
                                                (##structure-ref
                                                 _self154095_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154097_
                                            __tmp155470)))
                                        (_field154136_
                                         (let ((__tmp155471
                                                (##structure-ref
                                                 _self154095_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass154134_
                                            __tmp155471)))
                                        (_object154138_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154096_
                                            _L154123_))))
                                   (if (##structure-ref
                                        _klass154134_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155548
                                              (let ((__tmp155557
                                                     (if (##structure-ref
                                                          _self154095_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155549
                                                     (let ((__tmp155554
                                                            (let ((__tmp155555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155556
                                  (##structure-ref
                                   _self154095_
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
                                    (cons _field154136_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155553)))
                          (__tmp155551
                           (let ()
                             (declare (not safe))
                             (cons _object154138_ '()))))
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
                                          _stx154097_))
                                       (if (##structure-ref
                                            _klass154134_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155538
                                                  (let ((__tmp155547
                                                         (if (##structure-ref
                                                              _self154095_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155539
                                                         (let ((__tmp155544
                                                                (let ((__tmp155545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155546
                                      (##structure-ref
                                       _self154095_
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
                                        (cons _field154136_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155543)))
                              (__tmp155541
                               (let ()
                                 (declare (not safe))
                                 (cons _object154138_ '()))))
                          (declare (not safe))
                          (cons __tmp155542 __tmp155541))))
                   (declare (not safe))
                   (cons __tmp155544 __tmp155540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155547
                                                          __tmp155539))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155538
                                              _stx154097_))
                                           (let ((_$e154141_
                                                  (let ((__tmp155472
                                                         (##structure-ref
                                                          _self154095_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass154134_
                                                     __tmp155472))))
                                             (if _$e154141_
                                                 ((lambda (_klass154144_)
                                                    (let ((__tmp155528
                                                           (let ((__tmp155537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self154095_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155529
                          (let ((__tmp155534
                                 (let ((__tmp155535
                                        (let ((__tmp155536
                                               (##structure-ref
                                                _self154095_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155536 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155535)))
                                (__tmp155530
                                 (let ((__tmp155532
                                        (let ((__tmp155533
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field154136_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155533)))
                                       (__tmp155531
                                        (let ()
                                          (declare (not safe))
                                          (cons _object154138_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155532 __tmp155531))))
                            (declare (not safe))
                            (cons __tmp155534 __tmp155530))))
                     (declare (not safe))
                     (cons __tmp155537 __tmp155529))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155528 _stx154097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e154141_)
                                                 (if (##structure-ref
                                                      _self154095_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155482
                                                            (let* ((_$obj154146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155483 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155483)))
                           (__tmp155484
                            (let ((__tmp155524
                                   (let ((__tmp155525
                                          (let ((__tmp155527
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj154146_ '())))
                                                (__tmp155526
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object154138_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155527 __tmp155526))))
                                     (declare (not safe))
                                     (cons __tmp155525 '())))
                                  (__tmp155485
                                   (let ((__tmp155486
                                          (let ((__tmp155487
                                                 (let ((__tmp155516
                                                        (let ((__tmp155517
                                                               (let ((__tmp155521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155522
                                     (let ((__tmp155523
                                            (##structure-ref
                                             _klass154134_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155523 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155522)))
                             (__tmp155518
                              (let ((__tmp155519
                                     (let ((__tmp155520
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj154146_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155520))))
                                (declare (not safe))
                                (cons __tmp155519 '()))))
                         (declare (not safe))
                         (cons __tmp155521 __tmp155518))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155517)))
               (__tmp155488
                (let ((__tmp155505
                       (let ((__tmp155506
                              (let ((__tmp155513
                                     (let ((__tmp155514
                                            (let ((__tmp155515
                                                   (##structure-ref
                                                    _self154095_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155515 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155514)))
                                    (__tmp155507
                                     (let ((__tmp155511
                                            (let ((__tmp155512
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154136_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155512)))
                                           (__tmp155508
                                            (let ((__tmp155509
                                                   (let ((__tmp155510
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155510))))
                                              (declare (not safe))
                                              (cons __tmp155509 '()))))
                                       (declare (not safe))
                                       (cons __tmp155511 __tmp155508))))
                                (declare (not safe))
                                (cons __tmp155513 __tmp155507))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155506)))
                      (__tmp155489
                       (let ((__tmp155490
                              (let ((__tmp155491
                                     (let ((__tmp155503
                                            (let ((__tmp155504
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155504)))
                                           (__tmp155492
                                            (let ((__tmp155500
                                                   (let ((__tmp155501
                                                          (let ((__tmp155502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self154095_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155502 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155501)))
                                                  (__tmp155493
                                                   (let ((__tmp155498
                                                          (let ((__tmp155499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj154146_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155499)))
                 (__tmp155494
                  (let ((__tmp155495
                         (let ((__tmp155496
                                (let ((__tmp155497
                                       (##structure-ref
                                        _self154095_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155497 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155496))))
                    (declare (not safe))
                    (cons __tmp155495 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155498
                                                           __tmp155494))))
                                              (declare (not safe))
                                              (cons __tmp155500 __tmp155493))))
                                       (declare (not safe))
                                       (cons __tmp155503 __tmp155492))))
                                (declare (not safe))
                                (cons '%#call __tmp155491))))
                         (declare (not safe))
                         (cons __tmp155490 '()))))
                  (declare (not safe))
                  (cons __tmp155505 __tmp155489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155516
                                                         __tmp155488))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155487))))
                                     (declare (not safe))
                                     (cons __tmp155486 '()))))
                              (declare (not safe))
                              (cons __tmp155524 __tmp155485))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155484))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155482 _stx154097_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155473
                                                            (let ((__tmp155474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155480
                                  (let ((__tmp155481
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155481)))
                                 (__tmp155475
                                  (let ((__tmp155476
                                         (let ((__tmp155477
                                                (let ((__tmp155478
                                                       (let ((__tmp155479
                                                              (##structure-ref
                                                               _self154095_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155479
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155478))))
                                           (declare (not safe))
                                           (cons __tmp155477 '()))))
                                    (declare (not safe))
                                    (cons _object154138_ __tmp155476))))
                             (declare (not safe))
                             (cons __tmp155480 __tmp155475))))
                      (declare (not safe))
                      (cons '%#call __tmp155474))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155473 _stx154097_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd154104154118_)
                              (let ()
                                (declare (not safe))
                                (_g154100154110_ _g154101154113_)))))
                      (let ()
                        (declare (not safe))
                        (_g154100154110_ _g154101154113_))))))
          (declare (not safe))
          (_g154099154148_ _args154098_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154769 __method-table154770)
        (let ((__checked?154771
               (let ((__slot154774
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154769 'checked?))))
                 (if __slot154774
                     __slot154774
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154772
               (let ((__slot154775
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154769 'slot))))
                 (if __slot154775
                     __slot154775
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id154773
               (let ((__slot154776
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154769 'id))))
                 (if __slot154776
                     __slot154776
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154095_ _ctx154096_ _stx154097_ _args154098_)
            (let* ((_g154100154110_
                    (lambda (_g154101154107_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154101154107_))))
                   (_g154099154148_
                    (lambda (_g154101154113_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154101154113_))
                          (let ((_e154105154115_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154101154113_))))
                            (let ((_hd154104154118_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154105154115_)))
                                  (_tl154103154120_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154105154115_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154103154120_))
                                  ((lambda (_L154123_)
                                     (let* ((_klass154134_
                                             (let ((__tmp155558
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154095_
                                                       __id154773
                                                       __klass154769
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154097_
                                                __tmp155558)))
                                            (_field154136_
                                             (let ((__tmp155559
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154095_
                                                       __slot154772
                                                       __klass154769
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass154134_
                                                __tmp155559)))
                                            (_object154138_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154096_
                                                _L154123_))))
                                       (if (##structure-ref
                                            _klass154134_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155636
                                                  (let ((__tmp155645
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154095_
                        __checked?154771
                        __klass154769
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155637
                 (let ((__tmp155642
                        (let ((__tmp155643
                               (let ((__tmp155644
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self154095_
                                         __id154773
                                         __klass154769
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
                                        (cons _field154136_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155641)))
                              (__tmp155639
                               (let ()
                                 (declare (not safe))
                                 (cons _object154138_ '()))))
                          (declare (not safe))
                          (cons __tmp155640 __tmp155639))))
                   (declare (not safe))
                   (cons __tmp155642 __tmp155638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155645
                                                          __tmp155637))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155636
                                              _stx154097_))
                                           (if (##structure-ref
                                                _klass154134_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155626
                                                      (let ((__tmp155635
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self154095_
                            __checked?154771
                            __klass154769
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
                                             _self154095_
                                             __id154773
                                             __klass154769
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
                                            (cons _field154136_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155631)))
                                  (__tmp155629
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154138_ '()))))
                              (declare (not safe))
                              (cons __tmp155630 __tmp155629))))
                       (declare (not safe))
                       (cons __tmp155632 __tmp155628))))
                (declare (not safe))
                (cons __tmp155635 __tmp155627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155626
                                                  _stx154097_))
                                               (let ((_$e154141_
                                                      (let ((__tmp155560
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154095_
                        __slot154772
                        __klass154769
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass154134_ __tmp155560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e154141_
                                                     ((lambda (_klass154144_)
                                                        (let ((__tmp155616
                                                               (let ((__tmp155625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self154095_
                                     __checked?154771
                                     __klass154769
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155617
                              (let ((__tmp155622
                                     (let ((__tmp155623
                                            (let ((__tmp155624
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154095_
                                                      __id154773
                                                      __klass154769
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155624 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155623)))
                                    (__tmp155618
                                     (let ((__tmp155620
                                            (let ((__tmp155621
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154136_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155621)))
                                           (__tmp155619
                                            (let ()
                                              (declare (not safe))
                                              (cons _object154138_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155620 __tmp155619))))
                                (declare (not safe))
                                (cons __tmp155622 __tmp155618))))
                         (declare (not safe))
                         (cons __tmp155625 __tmp155617))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155616 _stx154097_)))
              _$e154141_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self154095_
                                                            __checked?154771
                                                            __klass154769
                                                            '#f))
                                                         (let ((__tmp155570
                                                                (let* ((_$obj154146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155571 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155571)))
                               (__tmp155572
                                (let ((__tmp155612
                                       (let ((__tmp155613
                                              (let ((__tmp155615
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj154146_
                                                             '())))
                                                    (__tmp155614
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object154138_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155615
                                                      __tmp155614))))
                                         (declare (not safe))
                                         (cons __tmp155613 '())))
                                      (__tmp155573
                                       (let ((__tmp155574
                                              (let ((__tmp155575
                                                     (let ((__tmp155604
                                                            (let ((__tmp155605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155609
                                  (let ((__tmp155610
                                         (let ((__tmp155611
                                                (##structure-ref
                                                 _klass154134_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155611 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155610)))
                                 (__tmp155606
                                  (let ((__tmp155607
                                         (let ((__tmp155608
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj154146_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155608))))
                                    (declare (not safe))
                                    (cons __tmp155607 '()))))
                             (declare (not safe))
                             (cons __tmp155609 __tmp155606))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155605)))
                   (__tmp155576
                    (let ((__tmp155593
                           (let ((__tmp155594
                                  (let ((__tmp155601
                                         (let ((__tmp155602
                                                (let ((__tmp155603
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154095_
                                                          __id154773
                                                          __klass154769
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155603 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155602)))
                                        (__tmp155595
                                         (let ((__tmp155599
                                                (let ((__tmp155600
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field154136_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155600)))
                                               (__tmp155596
                                                (let ((__tmp155597
                                                       (let ((__tmp155598
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154146_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155597 '()))))
                                           (declare (not safe))
                                           (cons __tmp155599 __tmp155596))))
                                    (declare (not safe))
                                    (cons __tmp155601 __tmp155595))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155594)))
                          (__tmp155577
                           (let ((__tmp155578
                                  (let ((__tmp155579
                                         (let ((__tmp155591
                                                (let ((__tmp155592
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155592)))
                                               (__tmp155580
                                                (let ((__tmp155588
                                                       (let ((__tmp155589
                                                              (let ((__tmp155590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self154095_
                                __id154773
                                __klass154769
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155590 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155589)))
              (__tmp155581
               (let ((__tmp155586
                      (let ((__tmp155587
                             (let ()
                               (declare (not safe))
                               (cons _$obj154146_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155587)))
                     (__tmp155582
                      (let ((__tmp155583
                             (let ((__tmp155584
                                    (let ((__tmp155585
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self154095_
                                              __slot154772
                                              __klass154769
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155585 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155584))))
                        (declare (not safe))
                        (cons __tmp155583 '()))))
                 (declare (not safe))
                 (cons __tmp155586 __tmp155582))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155588
                                                        __tmp155581))))
                                           (declare (not safe))
                                           (cons __tmp155591 __tmp155580))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155579))))
                             (declare (not safe))
                             (cons __tmp155578 '()))))
                      (declare (not safe))
                      (cons __tmp155593 __tmp155577))))
               (declare (not safe))
               (cons __tmp155604 __tmp155576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155575))))
                                         (declare (not safe))
                                         (cons __tmp155574 '()))))
                                  (declare (not safe))
                                  (cons __tmp155612 __tmp155573))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155572))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155570 _stx154097_))
                 (let ((__tmp155561
                        (let ((__tmp155562
                               (let ((__tmp155568
                                      (let ((__tmp155569
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155569)))
                                     (__tmp155563
                                      (let ((__tmp155564
                                             (let ((__tmp155565
                                                    (let ((__tmp155566
                                                           (let ((__tmp155567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self154095_
                             __slot154772
                             __klass154769
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155567 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155565 '()))))
                                        (declare (not safe))
                                        (cons _object154138_ __tmp155564))))
                                 (declare (not safe))
                                 (cons __tmp155568 __tmp155563))))
                          (declare (not safe))
                          (cons '%#call __tmp155562))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155561 _stx154097_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd154104154118_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154100154110_ _g154101154113_)))))
                          (let ()
                            (declare (not safe))
                            (_g154100154110_ _g154101154113_))))))
              (declare (not safe))
              (_g154099154148_ _args154098_))))))
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
      (lambda (_self153899_ _ctx153900_ _stx153901_ _args153902_)
        (let* ((_g153904153918_
                (lambda (_g153905153915_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153905153915_))))
               (_g153903153970_
                (lambda (_g153905153921_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153905153921_))
                      (let ((_e153910153923_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153905153921_))))
                        (let ((_hd153909153926_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153910153923_)))
                              (_tl153908153928_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153910153923_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153908153928_))
                              (let ((_e153913153931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153908153928_))))
                                (let ((_hd153912153934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153913153931_)))
                                      (_tl153911153936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153913153931_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153911153936_))
                                      ((lambda (_L153939_ _L153940_)
                                         (let* ((_klass153954_
                                                 (let ((__tmp155646
                                                        (##structure-ref
                                                         _self153899_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153901_
                                                    __tmp155646)))
                                                (_field153956_
                                                 (let ((__tmp155647
                                                        (##structure-ref
                                                         _self153899_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153954_
                                                    __tmp155647)))
                                                (_object153958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153900_
                                                    _L153940_)))
                                                (_value153960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153900_
                                                    _L153939_))))
                                           (if (##structure-ref
                                                _klass153954_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155729
                                                      (let ((__tmp155739
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153899_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155730
                     (let ((__tmp155736
                            (let ((__tmp155737
                                   (let ((__tmp155738
                                          (##structure-ref
                                           _self153899_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155738 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155737)))
                           (__tmp155731
                            (let ((__tmp155734
                                   (let ((__tmp155735
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153956_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155735)))
                                  (__tmp155732
                                   (let ((__tmp155733
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153960_ '()))))
                                     (declare (not safe))
                                     (cons _object153958_ __tmp155733))))
                              (declare (not safe))
                              (cons __tmp155734 __tmp155732))))
                       (declare (not safe))
                       (cons __tmp155736 __tmp155731))))
                (declare (not safe))
                (cons __tmp155739 __tmp155730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155729
                                                  _stx153901_))
                                               (if (##structure-ref
                                                    _klass153954_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155718
                                                          (let ((__tmp155728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153899_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155719
                         (let ((__tmp155725
                                (let ((__tmp155726
                                       (let ((__tmp155727
                                              (##structure-ref
                                               _self153899_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155727 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155726)))
                               (__tmp155720
                                (let ((__tmp155723
                                       (let ((__tmp155724
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153956_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155724)))
                                      (__tmp155721
                                       (let ((__tmp155722
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153960_ '()))))
                                         (declare (not safe))
                                         (cons _object153958_ __tmp155722))))
                                  (declare (not safe))
                                  (cons __tmp155723 __tmp155721))))
                           (declare (not safe))
                           (cons __tmp155725 __tmp155720))))
                    (declare (not safe))
                    (cons __tmp155728 __tmp155719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155718
                                                      _stx153901_))
                                                   (let ((_$e153963_
                                                          (let ((__tmp155648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153899_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153954_ __tmp155648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153963_
                                                         ((lambda (_klass153966_)
                                                            (let ((__tmp155707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155717
                                  (if (##structure-ref
                                       _self153899_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155708
                                  (let ((__tmp155714
                                         (let ((__tmp155715
                                                (let ((__tmp155716
                                                       (##structure-ref
                                                        _self153899_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155716 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155715)))
                                        (__tmp155709
                                         (let ((__tmp155712
                                                (let ((__tmp155713
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153956_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155713)))
                                               (__tmp155710
                                                (let ((__tmp155711
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153960_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153958_
                                                        __tmp155711))))
                                           (declare (not safe))
                                           (cons __tmp155712 __tmp155710))))
                                    (declare (not safe))
                                    (cons __tmp155714 __tmp155709))))
                             (declare (not safe))
                             (cons __tmp155717 __tmp155708))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155707 _stx153901_)))
                  _$e153963_)
                 (if (##structure-ref _self153899_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155659
                            (let* ((_$obj153968_
                                    (let ((__tmp155660 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155660)))
                                   (__tmp155661
                                    (let ((__tmp155703
                                           (let ((__tmp155704
                                                  (let ((__tmp155706
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155705
                 (let () (declare (not safe)) (cons _object153958_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155706
                                                          __tmp155705))))
                                             (declare (not safe))
                                             (cons __tmp155704 '())))
                                          (__tmp155662
                                           (let ((__tmp155663
                                                  (let ((__tmp155664
                                                         (let ((__tmp155695
                                                                (let ((__tmp155696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155700
                                      (let ((__tmp155701
                                             (let ((__tmp155702
                                                    (##structure-ref
                                                     _klass153954_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155702 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155701)))
                                     (__tmp155697
                                      (let ((__tmp155698
                                             (let ((__tmp155699
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153968_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155699))))
                                        (declare (not safe))
                                        (cons __tmp155698 '()))))
                                 (declare (not safe))
                                 (cons __tmp155700 __tmp155697))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155696)))
                       (__tmp155665
                        (let ((__tmp155683
                               (let ((__tmp155684
                                      (let ((__tmp155692
                                             (let ((__tmp155693
                                                    (let ((__tmp155694
                                                           (##structure-ref
                                                            _self153899_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155694 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155693)))
                                            (__tmp155685
                                             (let ((__tmp155690
                                                    (let ((__tmp155691
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155691)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155686
                                                    (let ((__tmp155688
                                                           (let ((__tmp155689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153968_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155689)))
                  (__tmp155687
                   (let () (declare (not safe)) (cons _value153960_ '()))))
              (declare (not safe))
              (cons __tmp155688 __tmp155687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155690
                                                     __tmp155686))))
                                        (declare (not safe))
                                        (cons __tmp155692 __tmp155685))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155684)))
                              (__tmp155666
                               (let ((__tmp155667
                                      (let ((__tmp155668
                                             (let ((__tmp155681
                                                    (let ((__tmp155682
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155682)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155669
                                                    (let ((__tmp155678
                                                           (let ((__tmp155679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155680
                                 (##structure-ref
                                  _self153899_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155680 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155679)))
                  (__tmp155670
                   (let ((__tmp155676
                          (let ((__tmp155677
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153968_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155677)))
                         (__tmp155671
                          (let ((__tmp155673
                                 (let ((__tmp155674
                                        (let ((__tmp155675
                                               (##structure-ref
                                                _self153899_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155675 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155674)))
                                (__tmp155672
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153960_ '()))))
                            (declare (not safe))
                            (cons __tmp155673 __tmp155672))))
                     (declare (not safe))
                     (cons __tmp155676 __tmp155671))))
              (declare (not safe))
              (cons __tmp155678 __tmp155670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155681
                                                     __tmp155669))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155668))))
                                 (declare (not safe))
                                 (cons __tmp155667 '()))))
                          (declare (not safe))
                          (cons __tmp155683 __tmp155666))))
                   (declare (not safe))
                   (cons __tmp155695 __tmp155665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155664))))
                                             (declare (not safe))
                                             (cons __tmp155663 '()))))
                                      (declare (not safe))
                                      (cons __tmp155703 __tmp155662))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155661))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155659 _stx153901_))
                     (let ((__tmp155649
                            (let ((__tmp155650
                                   (let ((__tmp155657
                                          (let ((__tmp155658
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155658)))
                                         (__tmp155651
                                          (let ((__tmp155652
                                                 (let ((__tmp155654
                                                        (let ((__tmp155655
                                                               (let ((__tmp155656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153899_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155656 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155655)))
               (__tmp155653
                (let () (declare (not safe)) (cons _value153960_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155654
                                                         __tmp155653))))
                                            (declare (not safe))
                                            (cons _object153958_
                                                  __tmp155652))))
                                     (declare (not safe))
                                     (cons __tmp155657 __tmp155651))))
                              (declare (not safe))
                              (cons '%#call __tmp155650))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155649 _stx153901_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153912153934_
                                       _hd153909153926_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153904153918_ _g153905153921_)))))
                              (let ()
                                (declare (not safe))
                                (_g153904153918_ _g153905153921_)))))
                      (let ()
                        (declare (not safe))
                        (_g153904153918_ _g153905153921_))))))
          (declare (not safe))
          (_g153903153970_ _args153902_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154777 __method-table154778)
        (let ((__checked?154779
               (let ((__slot154782
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154777 'checked?))))
                 (if __slot154782
                     __slot154782
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154780
               (let ((__slot154783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154777 'slot))))
                 (if __slot154783
                     __slot154783
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id154781
               (let ((__slot154784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154777 'id))))
                 (if __slot154784
                     __slot154784
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153899_ _ctx153900_ _stx153901_ _args153902_)
            (let* ((_g153904153918_
                    (lambda (_g153905153915_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153905153915_))))
                   (_g153903153970_
                    (lambda (_g153905153921_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153905153921_))
                          (let ((_e153910153923_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153905153921_))))
                            (let ((_hd153909153926_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153910153923_)))
                                  (_tl153908153928_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153910153923_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153908153928_))
                                  (let ((_e153913153931_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153908153928_))))
                                    (let ((_hd153912153934_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153913153931_)))
                                          (_tl153911153936_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153913153931_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153911153936_))
                                          ((lambda (_L153939_ _L153940_)
                                             (let* ((_klass153954_
                                                     (let ((__tmp155740
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153899_
                                                               __id154781
                                                               __klass154777
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153901_
                                                        __tmp155740)))
                                                    (_field153956_
                                                     (let ((__tmp155741
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153899_
                                                               __slot154780
                                                               __klass154777
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153954_
                                                        __tmp155741)))
                                                    (_object153958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153900_
                                                        _L153940_)))
                                                    (_value153960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153900_
                                                        _L153939_))))
                                               (if (##structure-ref
                                                    _klass153954_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155823
                                                          (let ((__tmp155833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153899_
                                __checked?154779
                                __klass154777
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155824
                         (let ((__tmp155830
                                (let ((__tmp155831
                                       (let ((__tmp155832
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153899_
                                                 __id154781
                                                 __klass154777
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155832 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155831)))
                               (__tmp155825
                                (let ((__tmp155828
                                       (let ((__tmp155829
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153956_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155829)))
                                      (__tmp155826
                                       (let ((__tmp155827
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153960_ '()))))
                                         (declare (not safe))
                                         (cons _object153958_ __tmp155827))))
                                  (declare (not safe))
                                  (cons __tmp155828 __tmp155826))))
                           (declare (not safe))
                           (cons __tmp155830 __tmp155825))))
                    (declare (not safe))
                    (cons __tmp155833 __tmp155824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155823
                                                      _stx153901_))
                                                   (if (##structure-ref
                                                        _klass153954_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155812
                                                              (let ((__tmp155822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153899_
                                    __checked?154779
                                    __klass154777
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155813
                             (let ((__tmp155819
                                    (let ((__tmp155820
                                           (let ((__tmp155821
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153899_
                                                     __id154781
                                                     __klass154777
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155821 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155820)))
                                   (__tmp155814
                                    (let ((__tmp155817
                                           (let ((__tmp155818
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153956_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155818)))
                                          (__tmp155815
                                           (let ((__tmp155816
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153960_ '()))))
                                             (declare (not safe))
                                             (cons _object153958_
                                                   __tmp155816))))
                                      (declare (not safe))
                                      (cons __tmp155817 __tmp155815))))
                               (declare (not safe))
                               (cons __tmp155819 __tmp155814))))
                        (declare (not safe))
                        (cons __tmp155822 __tmp155813))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155812 _stx153901_))
               (let ((_$e153963_
                      (let ((__tmp155742
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153899_
                                __slot154780
                                __klass154777
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153954_
                         __tmp155742))))
                 (if _$e153963_
                     ((lambda (_klass153966_)
                        (let ((__tmp155801
                               (let ((__tmp155811
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153899_
                                             __checked?154779
                                             __klass154777
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155802
                                      (let ((__tmp155808
                                             (let ((__tmp155809
                                                    (let ((__tmp155810
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153899_
                                                              __id154781
                                                              __klass154777
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155810 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155809)))
                                            (__tmp155803
                                             (let ((__tmp155806
                                                    (let ((__tmp155807
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155807)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155804
                                                    (let ((__tmp155805
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153958_ __tmp155805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155806
                                                     __tmp155804))))
                                        (declare (not safe))
                                        (cons __tmp155808 __tmp155803))))
                                 (declare (not safe))
                                 (cons __tmp155811 __tmp155802))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155801 _stx153901_)))
                      _$e153963_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153899_
                            __checked?154779
                            __klass154777
                            '#f))
                         (let ((__tmp155753
                                (let* ((_$obj153968_
                                        (let ((__tmp155754 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155754)))
                                       (__tmp155755
                                        (let ((__tmp155797
                                               (let ((__tmp155798
                                                      (let ((__tmp155800
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153968_ '())))
                    (__tmp155799
                     (let () (declare (not safe)) (cons _object153958_ '()))))
                (declare (not safe))
                (cons __tmp155800 __tmp155799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155798 '())))
                                              (__tmp155756
                                               (let ((__tmp155757
                                                      (let ((__tmp155758
                                                             (let ((__tmp155789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155790
                                   (let ((__tmp155794
                                          (let ((__tmp155795
                                                 (let ((__tmp155796
                                                        (##structure-ref
                                                         _klass153954_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155796 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155795)))
                                         (__tmp155791
                                          (let ((__tmp155792
                                                 (let ((__tmp155793
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153968_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155793))))
                                            (declare (not safe))
                                            (cons __tmp155792 '()))))
                                     (declare (not safe))
                                     (cons __tmp155794 __tmp155791))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155790)))
                           (__tmp155759
                            (let ((__tmp155777
                                   (let ((__tmp155778
                                          (let ((__tmp155786
                                                 (let ((__tmp155787
                                                        (let ((__tmp155788
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153899_
                          __id154781
                          __klass154777
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155788 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155787)))
                                                (__tmp155779
                                                 (let ((__tmp155784
                                                        (let ((__tmp155785
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153956_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155785)))
               (__tmp155780
                (let ((__tmp155782
                       (let ((__tmp155783
                              (let ()
                                (declare (not safe))
                                (cons _$obj153968_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155783)))
                      (__tmp155781
                       (let () (declare (not safe)) (cons _value153960_ '()))))
                  (declare (not safe))
                  (cons __tmp155782 __tmp155781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155784
                                                         __tmp155780))))
                                            (declare (not safe))
                                            (cons __tmp155786 __tmp155779))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155778)))
                                  (__tmp155760
                                   (let ((__tmp155761
                                          (let ((__tmp155762
                                                 (let ((__tmp155775
                                                        (let ((__tmp155776
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155776)))
               (__tmp155763
                (let ((__tmp155772
                       (let ((__tmp155773
                              (let ((__tmp155774
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153899_
                                        __id154781
                                        __klass154777
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155774 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155773)))
                      (__tmp155764
                       (let ((__tmp155770
                              (let ((__tmp155771
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153968_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155771)))
                             (__tmp155765
                              (let ((__tmp155767
                                     (let ((__tmp155768
                                            (let ((__tmp155769
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153899_
                                                      __slot154780
                                                      __klass154777
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155769 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155768)))
                                    (__tmp155766
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153960_ '()))))
                                (declare (not safe))
                                (cons __tmp155767 __tmp155766))))
                         (declare (not safe))
                         (cons __tmp155770 __tmp155765))))
                  (declare (not safe))
                  (cons __tmp155772 __tmp155764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155775
                                                         __tmp155763))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155762))))
                                     (declare (not safe))
                                     (cons __tmp155761 '()))))
                              (declare (not safe))
                              (cons __tmp155777 __tmp155760))))
                       (declare (not safe))
                       (cons __tmp155789 __tmp155759))))
                (declare (not safe))
                (cons '%#if __tmp155758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155757 '()))))
                                          (declare (not safe))
                                          (cons __tmp155797 __tmp155756))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155755))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155753 _stx153901_))
                         (let ((__tmp155743
                                (let ((__tmp155744
                                       (let ((__tmp155751
                                              (let ((__tmp155752
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155752)))
                                             (__tmp155745
                                              (let ((__tmp155746
                                                     (let ((__tmp155748
                                                            (let ((__tmp155749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155750
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153899_
                                     __slot154780
                                     __klass154777
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155750 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155749)))
                   (__tmp155747
                    (let () (declare (not safe)) (cons _value153960_ '()))))
               (declare (not safe))
               (cons __tmp155748 __tmp155747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153958_
                                                      __tmp155746))))
                                         (declare (not safe))
                                         (cons __tmp155751 __tmp155745))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155744))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155743
                            _stx153901_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153912153934_
                                           _hd153909153926_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153904153918_
                                             _g153905153921_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153904153918_ _g153905153921_)))))
                          (let ()
                            (declare (not safe))
                            (_g153904153918_ _g153905153921_))))))
              (declare (not safe))
              (_g153903153970_ _args153902_))))))
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
      (lambda (_self153732_ _ctx153733_ _stx153734_ _args153735_)
        (let* ((_self153736153745_ _self153732_)
               (_E153738153749_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153736153745_))))
               (_K153739153756_
                (lambda (_inline153752_ _dispatch153753_ _arity153754_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153732_ _args153735_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153734_
                         _arity153754_)))
                  (if _inline153752_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155839
                               (let ((__tmp155840
                                      (_inline153752_ _stx153734_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155840
                                  _stx153734_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153733_ __tmp155839)))
                      (if _dispatch153753_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153753_))
                            (let ((__tmp155834
                                   (let ((__tmp155835
                                          (let ((__tmp155836
                                                 (let ((__tmp155837
                                                        (let ((__tmp155838
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153753_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155837
                                                         _args153735_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155836))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155835
                                      _stx153734_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153733_ __tmp155834)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153733_ _stx153734_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153736153745_ 'gxc#!lambda::t))
              (let* ((_e153740153759_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153736153745_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153741153762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153736153745_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153765_ _e153741153762_)
                     (_e153742153767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153736153745_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153770_ _e153742153767_)
                     (_e153743153772_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153736153745_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153775_ _e153743153772_))
                (declare (not safe))
                (_K153739153756_
                 _inline153775_
                 _dispatch153770_
                 _arity153765_))
              (let () (declare (not safe)) (_E153738153749_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153570_ _ctx153571_ _stx153572_ _args153573_)
        (let* ((_self153574153581_ _self153570_)
               (_E153576153585_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153574153581_))))
               (_K153577153599_
                (lambda (_clauses153588_)
                  (let ((_$e153594_
                         (let ((__tmp155841
                                (lambda (_g153589153591_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153589153591_
                                     _args153573_)))))
                           (declare (not safe))
                           (find __tmp155841 _clauses153588_))))
                    (if _$e153594_
                        ((lambda (_clause153597_)
                           (let ((__method155055
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153597_
                                     'optimize-call))))
                             (if __method155055
                                 (__method155055
                                  _clause153597_
                                  _ctx153571_
                                  _stx153572_
                                  _args153573_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153597_
                                          'optimize-call)))))
                         _$e153594_)
                        (let ((__tmp155842
                               (map gxc#!lambda-arity _clauses153588_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153572_
                           __tmp155842)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153574153581_
                 'gxc#!case-lambda::t))
              (let* ((_e153578153602_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153574153581_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153579153605_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153574153581_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153608_ _e153579153605_))
                (declare (not safe))
                (_K153577153599_ _clauses153608_))
              (let () (declare (not safe)) (_E153576153585_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153384_ _args153385_)
        (let* ((_self153386153393_ _self153384_)
               (_E153388153397_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153386153393_))))
               (_K153389153437_
                (lambda (_arity153400_)
                  (let* ((_arity153401153410_ _arity153400_)
                         (_E153404153414_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153401153410_)))))
                    (let ((_K153408153434_
                           (lambda ()
                             (fx= (length _args153385_) _arity153400_)))
                          (_K153405153420_
                           (lambda (_arity153418_)
                             (fx>= (length _args153385_) _arity153418_))))
                      (let ((_try-match153403153430_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153401153410_))
                                   (let ((_tl153407153425_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153401153410_)))
                                         (_hd153406153423_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153401153410_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153407153425_))
                                         (let ((_arity153428_
                                                _hd153406153423_))
                                           (declare (not safe))
                                           (_K153405153420_ _arity153428_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153404153414_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153404153414_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153401153410_))
                            (let () (declare (not safe)) (_K153408153434_))
                            (let ()
                              (declare (not safe))
                              (_try-match153403153430_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153386153393_ 'gxc#!lambda::t))
              (let* ((_e153390153440_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153386153393_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153391153443_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153386153393_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153446_ _e153391153443_))
                (declare (not safe))
                (_K153389153437_ _arity153446_))
              (let () (declare (not safe)) (_E153388153397_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self153268_ _ctx153269_ _stx153270_ _args153271_)
        (let* ((_self153272153280_ _self153268_)
               (_E153274153284_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153272153280_))))
               (_K153275153368_
                (lambda (_dispatch153287_ _table153288_)
                  (let* ((_g153289153298_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch153287_)))
                         (_else153291153306_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch153287_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx153269_ _stx153270_))))
                         (_K153293153352_
                          (lambda (_main153309_ _keys153310_)
                            (let ((_g155843_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx153270_
                                      _args153271_))))
                              (begin
                                (let ((_g155844_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155843_)
                                             (##vector-length _g155843_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155844_ 2)))
                                      (error "Context expects 2 values"
                                             _g155844_)))
                                (let ((_pargs153312_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155843_ 0)))
                                      (_kwargs153313_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155843_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main153309_))
                                    (if _table153288_
                                        (let ((_xargs153320_
                                               (map (lambda (_key153315_)
                                                      (let ((_$e153317_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key153315_ _kwargs153313_))))
                (if _$e153317_ (values _$e153317_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys153310_)))
                                          (for-each
                                           (lambda (_kw153322_)
                                             (if (memq (car _kw153322_)
                                                       _keys153310_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx153270_
                                                    _keys153310_
                                                    _kw153322_))))
                                           _kwargs153313_)
                                          (let ((__tmp155896
                                                 (let ((__tmp155897
                                                        (let ((__tmp155898
                                                               (let ((__tmp155903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155904
                                     (let ()
                                       (declare (not safe))
                                       (cons _main153309_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155904)))
                             (__tmp155899
                              (let ((__tmp155901
                                     (let ((__tmp155902
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155902)))
                                    (__tmp155900
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs153312_
                                               _xargs153320_))))
                                (declare (not safe))
                                (cons __tmp155901 __tmp155900))))
                         (declare (not safe))
                         (cons __tmp155903 __tmp155899))))
                  (declare (not safe))
                  (cons '%#call __tmp155898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155897
                                                    _stx153270_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153269_
                                             __tmp155896)))
                                        (let* ((_kwt153324_
                                                (let ((__tmp155845
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155845)))
                                               (_kwvars153327_
                                                (map (lambda (_g155846_)
                                                       (let ((__tmp155847
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155847)))
                                                     _kwargs153313_))
                                               (_kwbind153332_
                                                (map (lambda (_kw153329_
                                                              _kwvar153330_)
                                                       (let ((__tmp155850
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153330_ '())))
                     (__tmp155848
                      (let ((__tmp155849 (cdr _kw153329_)))
                        (declare (not safe))
                        (cons __tmp155849 '()))))
                 (declare (not safe))
                 (cons __tmp155850 __tmp155848)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153313_
                                                     _kwvars153327_))
                                               (_kwset153337_
                                                (map (lambda (_kw153334_
                                                              _kwvar153335_)
                                                       (let ((__tmp155851
                                                              (let ((__tmp155852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155860
                                    (let ((__tmp155861
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153324_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155861)))
                                   (__tmp155853
                                    (let ((__tmp155857
                                           (let ((__tmp155858
                                                  (let ((__tmp155859
                                                         (car _kw153334_)))
                                                    (declare (not safe))
                                                    (cons __tmp155859 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155858)))
                                          (__tmp155854
                                           (let ((__tmp155855
                                                  (let ((__tmp155856
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155856))))
                                             (declare (not safe))
                                             (cons __tmp155855 '()))))
                                      (declare (not safe))
                                      (cons __tmp155857 __tmp155854))))
                               (declare (not safe))
                               (cons __tmp155860 __tmp155853))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155852))))
                 (declare (not safe))
                 (cons '%#call __tmp155851)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153313_
                                                     _kwvars153327_))
                                               (_xkwargs153342_
                                                (map (lambda (_kw153339_
                                                              _kwvar153340_)
                                                       (let ((__tmp155864
                                                              (car _kw153339_))
                                                             (__tmp155862
                                                              (let ((__tmp155863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153340_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155863))))
                 (declare (not safe))
                 (cons __tmp155864 __tmp155862)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153313_
                                                     _kwvars153327_))
                                               (_xargs153349_
                                                (map (lambda (_key153344_)
                                                       (let ((_$e153346_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153344_ _xkwargs153342_))))
                 (if _$e153346_ (values _$e153346_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys153310_)))
                                          (let ((__tmp155865
                                                 (let ((__tmp155866
                                                        (let ((__tmp155867
                                                               (let ((__tmp155868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155869
                                     (let ((__tmp155870
                                            (let ((__tmp155884
                                                   (let ((__tmp155885
                                                          (let ((__tmp155895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153324_ '())))
                        (__tmp155886
                         (let ((__tmp155887
                                (let ((__tmp155888
                                       (let ((__tmp155889
                                              (let ((__tmp155890
                                                     (let ((__tmp155892
                                                            (let ((__tmp155893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155894 (length _kwargs153313_)))
                             (declare (not safe))
                             (cons __tmp155894 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155893)))
                   (__tmp155891
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155892 __tmp155891))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155890))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155889))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155888
                                   _stx153270_))))
                           (declare (not safe))
                           (cons __tmp155887 '()))))
                    (declare (not safe))
                    (cons __tmp155895 __tmp155886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155885 '())))
                                                  (__tmp155871
                                                   (let ((__tmp155872
                                                          (let ((__tmp155873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155874
                                (let ((__tmp155875
                                       (let ((__tmp155876
                                              (let ((__tmp155877
                                                     (let ((__tmp155882
                                                            (let ((__tmp155883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main153309_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155883)))
                   (__tmp155878
                    (let ((__tmp155880
                           (let ((__tmp155881
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153324_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155881)))
                          (__tmp155879
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs153312_ _xargs153349_))))
                      (declare (not safe))
                      (cons __tmp155880 __tmp155879))))
               (declare (not safe))
               (cons __tmp155882 __tmp155878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155877))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155876
                                          _stx153270_))))
                                  (declare (not safe))
                                  (cons __tmp155875 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155874 _kwset153337_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155872 '()))))
                                              (declare (not safe))
                                              (cons __tmp155884 __tmp155871))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155870))))
                                (declare (not safe))
                                (cons __tmp155869 '()))))
                         (declare (not safe))
                         (cons _kwbind153332_ __tmp155868))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155866
                                                    _stx153270_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153269_
                                             __tmp155865)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g153289153298_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e153294153355_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153289153298_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e153295153358_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153289153298_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153361_ _e153295153358_)
                               (_e153296153363_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153289153298_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153366_ _e153296153363_))
                          (declare (not safe))
                          (_K153293153352_ _main153366_ _keys153361_))
                        (let () (declare (not safe)) (_else153291153306_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153272153280_
                 'gxc#!kw-lambda::t))
              (let* ((_e153276153371_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153272153280_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153277153374_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153272153280_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153377_ _e153277153374_)
                     (_e153278153379_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153272153280_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153382_ _e153278153379_))
                (declare (not safe))
                (_K153275153368_ _dispatch153382_ _table153377_))
              (let () (declare (not safe)) (_E153274153284_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152881_ _args152882_)
        (let _lp152884_ ((_rest152886_ _args152882_)
                         (_pargs152887_ '())
                         (_kwargs152888_ '()))
          (let* ((___stx154935154936_ _rest152886_)
                 (_g152894152946_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154935154936_)))))
            (let ((___kont154937154938_
                   (lambda (_L153125_ _L153126_)
                     (let ((__tmp155905
                            (let ()
                              (declare (not safe))
                              (cons _L153126_ _pargs152887_))))
                       (declare (not safe))
                       (_lp152884_ _L153125_ __tmp155905 _kwargs152888_))))
                  (___kont154939154940_
                   (lambda (_L153071_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L153071_ _pargs152887_))
                             (reverse _kwargs152888_))))
                  (___kont154941154942_
                   (lambda (_L153018_ _L153019_ _L153020_)
                     (let ((_kw153037_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L153020_))))
                       (if (assq _kw153037_ _kwargs152888_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152881_
                              _kw153037_))
                           (let ((__tmp155906
                                  (let ((__tmp155907
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw153037_ _L153019_))))
                                    (declare (not safe))
                                    (cons __tmp155907 _kwargs152888_))))
                             (declare (not safe))
                             (_lp152884_
                              _L153018_
                              _pargs152887_
                              __tmp155906))))))
                  (___kont154943154944_
                   (lambda (_L152966_ _L152967_)
                     (let ((__tmp155908
                            (let ()
                              (declare (not safe))
                              (cons _L152967_ _pargs152887_))))
                       (declare (not safe))
                       (_lp152884_ _L152966_ __tmp155908 _kwargs152888_))))
                  (___kont154945154946_
                   (lambda ()
                     (values (reverse _pargs152887_)
                             (reverse _kwargs152888_)))))
              (let* ((_g152893152953_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154935154936_))
                            (___kont154945154946_)
                            (let () (declare (not safe)) (_g152894152946_)))))
                     (___match155042155043_
                      (lambda (_e152927152986_
                               _hd152926152989_
                               _tl152925152991_
                               _e152930152994_
                               _hd152929152997_
                               _tl152928152999_
                               _e152933153002_
                               _hd152932153005_
                               _tl152931153007_
                               _e152936153010_
                               _hd152935153013_
                               _tl152934153015_)
                        (let ((_L153018_ _tl152934153015_)
                              (_L153019_ _hd152935153013_)
                              (_L153020_ _hd152932153005_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L153020_))
                              (___kont154941154942_
                               _L153018_
                               _L153019_
                               _L153020_)
                              (___kont154943154944_
                               _tl152925152991_
                               _hd152926152989_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154935154936_))
                    (let ((_e152900153090_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154935154936_))))
                      (let ((_tl152898153095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152900153090_)))
                            (_hd152899153093_
                             (let ()
                               (declare (not safe))
                               (##car _e152900153090_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152899153093_))
                            (let ((_e152903153098_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152899153093_))))
                              (let ((_tl152901153103_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152903153098_)))
                                    (_hd152902153101_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152903153098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152902153101_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152902153101_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152901153103_))
                                            (let ((_e152906153106_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152901153103_))))
                                              (let ((_tl152904153111_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152906153106_)))
                                                    (_hd152905153109_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152906153106_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152905153109_))
                                                    (let ((_e152907153114_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152905153109_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152907153114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152904153111_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152898153095_))
                          (let ((_e152910153117_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152898153095_))))
                            (let ((_tl152908153122_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152910153117_)))
                                  (_hd152909153120_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152910153117_))))
                              (___kont154937154938_
                               _tl152908153122_
                               _hd152909153120_)))
                          (___kont154943154944_
                           _tl152898153095_
                           _hd152899153093_))
                      (___kont154943154944_ _tl152898153095_ _hd152899153093_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152907153114_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152904153111_))
                          (___kont154939154940_ _tl152898153095_)
                          (___kont154943154944_
                           _tl152898153095_
                           _hd152899153093_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152904153111_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152898153095_))
                              (let ((_e152936153010_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152898153095_))))
                                (let ((_tl152934153015_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152936153010_)))
                                      (_hd152935153013_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152936153010_))))
                                  (___match155042155043_
                                   _e152900153090_
                                   _hd152899153093_
                                   _tl152898153095_
                                   _e152903153098_
                                   _hd152902153101_
                                   _tl152901153103_
                                   _e152906153106_
                                   _hd152905153109_
                                   _tl152904153111_
                                   _e152936153010_
                                   _hd152935153013_
                                   _tl152934153015_)))
                              (___kont154943154944_
                               _tl152898153095_
                               _hd152899153093_))
                          (___kont154943154944_
                           _tl152898153095_
                           _hd152899153093_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152904153111_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152898153095_))
                                                            (let ((_e152936153010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152898153095_))))
                      (let ((_tl152934153015_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152936153010_)))
                            (_hd152935153013_
                             (let ()
                               (declare (not safe))
                               (##car _e152936153010_))))
                        (___match155042155043_
                         _e152900153090_
                         _hd152899153093_
                         _tl152898153095_
                         _e152903153098_
                         _hd152902153101_
                         _tl152901153103_
                         _e152906153106_
                         _hd152905153109_
                         _tl152904153111_
                         _e152936153010_
                         _hd152935153013_
                         _tl152934153015_)))
                    (___kont154943154944_ _tl152898153095_ _hd152899153093_))
                (___kont154943154944_ _tl152898153095_ _hd152899153093_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154943154944_
                                             _tl152898153095_
                                             _hd152899153093_))
                                        (___kont154943154944_
                                         _tl152898153095_
                                         _hd152899153093_))
                                    (___kont154943154944_
                                     _tl152898153095_
                                     _hd152899153093_))))
                            (___kont154943154944_
                             _tl152898153095_
                             _hd152899153093_))))
                    (let () (declare (not safe)) (_g152893152953_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152876_ _ctx152877_ _stx152878_ _args152879_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152877_ _stx152878_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
