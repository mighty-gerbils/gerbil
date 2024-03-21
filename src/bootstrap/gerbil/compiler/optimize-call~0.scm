(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710954841)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp155049 (list gxc#::basic-xform::t))
            (__tmp155047
             (let ((__tmp155048
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155048 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp155049
         '()
         __tmp155047
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154750_
        (apply make-instance gxc#::optimize-call::t _$args154750_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx154742_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154745_
                (let ((__obj155044
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj155044))
               (__tmp155050
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154745_ _stx154742_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155050
           gxc#current-compile-method
           _self154745_))))
    (define gxc#optimize-call%
      (lambda (_self154596_ _stx154597_)
        (let* ((___stx154795154796_ _stx154597_)
               (_g154600154620_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154795154796_)))))
          (let ((___kont154797154798_
                 (lambda (_L154664_ _L154665_)
                   (let* ((_rator-id154683_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154665_)))
                          (_rator-type154685_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154683_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154685_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp155051
                                  (##structure-ref
                                   _rator-type154685_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154683_
                              '" => "
                              _rator-type154685_
                              '" "
                              __tmp155051))
                           (let ((_optimized154688_
                                  (let ((__method155045
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154685_
                                            'optimize-call))))
                                    (if __method155045
                                        (__method155045
                                         _rator-type154685_
                                         _self154596_
                                         _stx154597_
                                         _L154664_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154685_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154685_))
                                 _optimized154688_
                                 (let* ((___stx154777154778_ _optimized154688_)
                                        (_g154691154701_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154777154778_)))))
                                   (let ((___kont154779154780_
                                          (lambda (_L154721_)
                                            (let ((__tmp155052
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154721_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp155052
                                               _stx154597_))))
                                         (___kont154781154782_
                                          (lambda () _optimized154688_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154777154778_))
                                         (let ((_e154696154713_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154777154778_))))
                                           (let ((_tl154694154718_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154696154713_)))
                                                 (_hd154695154716_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154696154713_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154695154716_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154695154716_))
                                                     (___kont154779154780_
                                                      _tl154694154718_)
                                                     (___kont154781154782_))
                                                 (___kont154781154782_))))
                                         (___kont154781154782_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154685_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154596_ _stx154597_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154597_
                                _rator-type154685_)))))))
                (___kont154799154800_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154596_ _stx154597_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154795154796_))
                (let ((_e154606154632_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154795154796_))))
                  (let ((_tl154604154637_
                         (let () (declare (not safe)) (##cdr _e154606154632_)))
                        (_hd154605154635_
                         (let ()
                           (declare (not safe))
                           (##car _e154606154632_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154604154637_))
                        (let ((_e154609154640_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154604154637_))))
                          (let ((_tl154607154645_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154609154640_)))
                                (_hd154608154643_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154609154640_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154608154643_))
                                (let ((_e154612154648_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154608154643_))))
                                  (let ((_tl154610154653_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154612154648_)))
                                        (_hd154611154651_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154612154648_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154611154651_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154611154651_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154610154653_))
                                                (let ((_e154615154656_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154610154653_))))
                                                  (let ((_tl154613154661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154615154656_)))
                                                        (_hd154614154659_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154615154656_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154613154661_))
                                                        (___kont154797154798_
                                                         _tl154607154645_
                                                         _hd154614154659_)
                                                        (___kont154799154800_))))
                                                (___kont154799154800_))
                                            (___kont154799154800_))
                                        (___kont154799154800_))))
                                (___kont154799154800_))))
                        (___kont154799154800_))))
                (___kont154799154800_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154549_ _ctx154550_ _stx154551_ _args154552_)
        (let* ((_g154554154564_
                (lambda (_g154555154561_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154555154561_))))
               (_g154553154593_
                (lambda (_g154555154567_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154555154567_))
                      (let ((_e154559154569_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154555154567_))))
                        (let ((_hd154558154572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154559154569_)))
                              (_tl154557154574_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154559154569_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154557154574_))
                              ((lambda (_L154577_)
                                 (let* ((_klass154588_
                                         (let ((__tmp155053
                                                (##structure-ref
                                                 _self154549_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154551_
                                            __tmp155053)))
                                        (_object154590_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154550_
                                            _L154577_))))
                                   (if (##structure-ref
                                        _klass154588_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155069
                                              (let ((__tmp155070
                                                     (let ((__tmp155072
                                                            (let ((__tmp155073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155074
                                  (##structure-ref
                                   _klass154588_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155074 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155073)))
                   (__tmp155071
                    (let () (declare (not safe)) (cons _object154590_ '()))))
               (declare (not safe))
               (cons __tmp155072 __tmp155071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp155070))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155069
                                          _stx154551_))
                                       (if (##structure-ref
                                            _klass154588_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155063
                                                  (let ((__tmp155064
                                                         (let ((__tmp155066
                                                                (let ((__tmp155067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155068
                                      (##structure-ref
                                       _klass154588_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155068 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155067)))
                       (__tmp155065
                        (let ()
                          (declare (not safe))
                          (cons _object154590_ '()))))
                   (declare (not safe))
                   (cons __tmp155066 __tmp155065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp155064))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155063
                                              _stx154551_))
                                           (let ((__tmp155054
                                                  (let ((__tmp155055
                                                         (let ((__tmp155061
                                                                (let ((__tmp155062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155062)))
                       (__tmp155056
                        (let ((__tmp155058
                               (let ((__tmp155059
                                      (let ((__tmp155060
                                             (##structure-ref
                                              _self154549_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp155060 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp155059)))
                              (__tmp155057
                               (let ()
                                 (declare (not safe))
                                 (cons _object154590_ '()))))
                          (declare (not safe))
                          (cons __tmp155058 __tmp155057))))
                   (declare (not safe))
                   (cons __tmp155061 __tmp155056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp155055))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155054
                                              _stx154551_))))))
                               _hd154558154572_)
                              (let ()
                                (declare (not safe))
                                (_g154554154564_ _g154555154567_)))))
                      (let ()
                        (declare (not safe))
                        (_g154554154564_ _g154555154567_))))))
          (declare (not safe))
          (_g154553154593_ _args154552_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154752 __method-table154753)
        (let ((__id154754
               (let ((__slot154755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154752 'id))))
                 (if __slot154755
                     __slot154755
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154549_ _ctx154550_ _stx154551_ _args154552_)
            (let* ((_g154554154564_
                    (lambda (_g154555154561_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154555154561_))))
                   (_g154553154593_
                    (lambda (_g154555154567_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154555154567_))
                          (let ((_e154559154569_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154555154567_))))
                            (let ((_hd154558154572_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154559154569_)))
                                  (_tl154557154574_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154559154569_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154557154574_))
                                  ((lambda (_L154577_)
                                     (let* ((_klass154588_
                                             (let ((__tmp155075
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154549_
                                                       __id154754
                                                       __klass154752
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154551_
                                                __tmp155075)))
                                            (_object154590_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154550_
                                                _L154577_))))
                                       (if (##structure-ref
                                            _klass154588_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155091
                                                  (let ((__tmp155092
                                                         (let ((__tmp155094
                                                                (let ((__tmp155095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155096
                                      (##structure-ref
                                       _klass154588_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155096 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155095)))
                       (__tmp155093
                        (let ()
                          (declare (not safe))
                          (cons _object154590_ '()))))
                   (declare (not safe))
                   (cons __tmp155094 __tmp155093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp155092))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155091
                                              _stx154551_))
                                           (if (##structure-ref
                                                _klass154588_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155085
                                                      (let ((__tmp155086
                                                             (let ((__tmp155088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155089
                                   (let ((__tmp155090
                                          (##structure-ref
                                           _klass154588_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155090 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp155089)))
                           (__tmp155087
                            (let ()
                              (declare (not safe))
                              (cons _object154590_ '()))))
                       (declare (not safe))
                       (cons __tmp155088 __tmp155087))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp155086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155085
                                                  _stx154551_))
                                               (let ((__tmp155076
                                                      (let ((__tmp155077
                                                             (let ((__tmp155083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155084
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155084)))
                           (__tmp155078
                            (let ((__tmp155080
                                   (let ((__tmp155081
                                          (let ((__tmp155082
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154549_
                                                    __id154754
                                                    __klass154752
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp155082 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp155081)))
                                  (__tmp155079
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154590_ '()))))
                              (declare (not safe))
                              (cons __tmp155080 __tmp155079))))
                       (declare (not safe))
                       (cons __tmp155083 __tmp155078))))
                (declare (not safe))
                (cons '%#call __tmp155077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155076
                                                  _stx154551_))))))
                                   _hd154558154572_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154554154564_ _g154555154567_)))))
                          (let ()
                            (declare (not safe))
                            (_g154554154564_ _g154555154567_))))))
              (declare (not safe))
              (_g154553154593_ _args154552_))))))
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
      (lambda (_self154264_ _ctx154265_ _stx154266_ _args154267_)
        (let* ((_klass154269_
                (let ((__tmp155097
                       (##structure-ref _self154264_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx154266_ __tmp155097)))
               (_fields154271_
                (length (##structure-ref _klass154269_ '5 gxc#!class::t '#f)))
               (_args154277_
                (map (lambda (_g154272154274_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx154265_ _g154272154274_)))
                     _args154267_))
               (_inline-make-object154279_
                (let ((__tmp155098
                       (let ((__tmp155104
                              (let ((__tmp155105
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155105)))
                             (__tmp155099
                              (let ((__tmp155101
                                     (let ((__tmp155102
                                            (let ((__tmp155103
                                                   (##structure-ref
                                                    _self154264_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155103 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155102)))
                                    (__tmp155100
                                     (make-list _fields154271_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp155101 __tmp155100))))
                         (declare (not safe))
                         (cons __tmp155104 __tmp155099))))
                  (declare (not safe))
                  (cons '%#call __tmp155098))))
          (let ((_$e154282_
                 (##structure-ref _klass154269_ '6 gxc#!class::t '#f)))
            (if _$e154282_
                ((lambda (_ctor154285_)
                   (let ((_$obj154287_
                          (let ((__tmp155205 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp155205)))
                         (_ctor-impl154288_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass154269_
                             _ctor154285_))))
                     (let ((__tmp155206
                            (let ((__tmp155207
                                   (let ((__tmp155275
                                          (let ((__tmp155276
                                                 (let ((__tmp155278
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj154287_
                                                                '())))
                                                       (__tmp155277
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object154279_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155278
                                                         __tmp155277))))
                                            (declare (not safe))
                                            (cons __tmp155276 '())))
                                         (__tmp155208
                                          (let ((__tmp155209
                                                 (let ((__tmp155210
                                                        (let ((__tmp155214
                                                               (if _ctor-impl154288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155269
                                  (let ((__tmp155273
                                         (let ((__tmp155274
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl154288_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155274)))
                                        (__tmp155270
                                         (let ((__tmp155271
                                                (let ((__tmp155272
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj154287_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155272))))
                                           (declare (not safe))
                                           (cons __tmp155271 _args154277_))))
                                    (declare (not safe))
                                    (cons __tmp155273 __tmp155270))))
                             (declare (not safe))
                             (cons '%#call __tmp155269))
                           (let* ((_$ctor154290_
                                   (let ((__tmp155215 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp155215)))
                                  (__tmp155216
                                   (let ((__tmp155251
                                          (let ((__tmp155252
                                                 (let ((__tmp155268
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor154290_
                                                                '())))
                                                       (__tmp155253
                                                        (let ((__tmp155254
                                                               (let ((__tmp155255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155266
                                     (let ((__tmp155267
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155267)))
                                    (__tmp155256
                                     (let ((__tmp155263
                                            (let ((__tmp155264
                                                   (let ((__tmp155265
                                                          (##structure-ref
                                                           _self154264_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp155265 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155264)))
                                           (__tmp155257
                                            (let ((__tmp155261
                                                   (let ((__tmp155262
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155262)))
                                                  (__tmp155258
                                                   (let ((__tmp155259
                                                          (let ((__tmp155260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor154285_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155259 '()))))
                                              (declare (not safe))
                                              (cons __tmp155261 __tmp155258))))
                                       (declare (not safe))
                                       (cons __tmp155263 __tmp155257))))
                                (declare (not safe))
                                (cons __tmp155266 __tmp155256))))
                         (declare (not safe))
                         (cons '%#call __tmp155255))))
                  (declare (not safe))
                  (cons __tmp155254 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155268
                                                         __tmp155253))))
                                            (declare (not safe))
                                            (cons __tmp155252 '())))
                                         (__tmp155217
                                          (let ((__tmp155218
                                                 (let ((__tmp155219
                                                        (let ((__tmp155249
                                                               (let ((__tmp155250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor154290_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155250)))
                      (__tmp155220
                       (let ((__tmp155242
                              (let ((__tmp155243
                                     (let ((__tmp155247
                                            (let ((__tmp155248
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor154290_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155248)))
                                           (__tmp155244
                                            (let ((__tmp155245
                                                   (let ((__tmp155246
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155246))))
                                              (declare (not safe))
                                              (cons __tmp155245
                                                    _args154277_))))
                                       (declare (not safe))
                                       (cons __tmp155247 __tmp155244))))
                                (declare (not safe))
                                (cons '%#call __tmp155243)))
                             (__tmp155221
                              (let ((__tmp155222
                                     (let ((__tmp155223
                                            (let ((__tmp155240
                                                   (let ((__tmp155241
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155241)))
                                                  (__tmp155224
                                                   (let ((__tmp155238
                                                          (let ((__tmp155239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155239)))
                 (__tmp155225
                  (let ((__tmp155236
                         (let ((__tmp155237
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155237)))
                        (__tmp155226
                         (let ((__tmp155233
                                (let ((__tmp155234
                                       (let ((__tmp155235
                                              (##structure-ref
                                               _self154264_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155235 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155234)))
                               (__tmp155227
                                (let ((__tmp155231
                                       (let ((__tmp155232
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155232)))
                                      (__tmp155228
                                       (let ((__tmp155229
                                              (let ((__tmp155230
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor154285_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp155230))))
                                         (declare (not safe))
                                         (cons __tmp155229 '()))))
                                  (declare (not safe))
                                  (cons __tmp155231 __tmp155228))))
                           (declare (not safe))
                           (cons __tmp155233 __tmp155227))))
                    (declare (not safe))
                    (cons __tmp155236 __tmp155226))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155238
                                                           __tmp155225))))
                                              (declare (not safe))
                                              (cons __tmp155240 __tmp155224))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155223))))
                                (declare (not safe))
                                (cons __tmp155222 '()))))
                         (declare (not safe))
                         (cons __tmp155242 __tmp155221))))
                  (declare (not safe))
                  (cons __tmp155249 __tmp155220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp155219))))
                                            (declare (not safe))
                                            (cons __tmp155218 '()))))
                                     (declare (not safe))
                                     (cons __tmp155251 __tmp155217))))
                             (declare (not safe))
                             (cons '%#let-values __tmp155216))))
                      (__tmp155211
                       (let ((__tmp155212
                              (let ((__tmp155213
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj154287_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155213))))
                         (declare (not safe))
                         (cons __tmp155212 '()))))
                  (declare (not safe))
                  (cons __tmp155214 __tmp155211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp155210))))
                                            (declare (not safe))
                                            (cons __tmp155209 '()))))
                                     (declare (not safe))
                                     (cons __tmp155275 __tmp155208))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155207))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155206 _stx154266_))))
                 _$e154282_)
                (let ((_$e154292_
                       (##structure-ref _klass154269_ '10 gxc#!class::t '#f)))
                  (if _$e154292_
                      ((lambda (_metaclass154295_)
                         (let* ((_$obj154297_
                                 (let ((__tmp155167 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155167)))
                                (_metakons154299_
                                 (let ((__tmp155168
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx154266_
                                           _metaclass154295_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp155168
                                    'instance-init!))))
                           (let ((__tmp155169
                                  (let ((__tmp155170
                                         (let ((__tmp155201
                                                (let ((__tmp155202
                                                       (let ((__tmp155204
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154297_ '())))
                     (__tmp155203
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object154279_ '()))))
                 (declare (not safe))
                 (cons __tmp155204 __tmp155203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155202 '())))
                                               (__tmp155171
                                                (let ((__tmp155172
                                                       (let ((__tmp155173
                                                              (let ((__tmp155177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons154299_
                                 (let ((__tmp155191
                                        (let ((__tmp155199
                                               (let ((__tmp155200
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons154299_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155200)))
                                              (__tmp155192
                                               (let ((__tmp155196
                                                      (let ((__tmp155197
                                                             (let ((__tmp155198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154264_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155198 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155197)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155193
                                                      (let ((__tmp155194
                                                             (let ((__tmp155195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj154297_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155195))))
                (declare (not safe))
                (cons __tmp155194 _args154277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155196
                                                       __tmp155193))))
                                          (declare (not safe))
                                          (cons __tmp155199 __tmp155192))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155191))
                                 (let ((__tmp155178
                                        (let ((__tmp155189
                                               (let ((__tmp155190
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155190)))
                                              (__tmp155179
                                               (let ((__tmp155186
                                                      (let ((__tmp155187
                                                             (let ((__tmp155188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154264_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155188 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155187)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155180
                                                      (let ((__tmp155184
                                                             (let ((__tmp155185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp155185)))
                    (__tmp155181
                     (let ((__tmp155182
                            (let ((__tmp155183
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154297_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155183))))
                       (declare (not safe))
                       (cons __tmp155182 _args154277_))))
                (declare (not safe))
                (cons __tmp155184 __tmp155181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155186
                                                       __tmp155180))))
                                          (declare (not safe))
                                          (cons __tmp155189 __tmp155179))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155178))))
                            (__tmp155174
                             (let ((__tmp155175
                                    (let ((__tmp155176
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj154297_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155176))))
                               (declare (not safe))
                               (cons __tmp155175 '()))))
                        (declare (not safe))
                        (cons __tmp155177 __tmp155174))))
                 (declare (not safe))
                 (cons '%#begin __tmp155173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155172 '()))))
                                           (declare (not safe))
                                           (cons __tmp155201 __tmp155171))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp155170))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp155169 _stx154266_))))
                       _$e154292_)
                      (if (##structure-ref _klass154269_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args154277_) _fields154271_)
                              (let ((__tmp155159
                                     (let ((__tmp155160
                                            (let ((__tmp155165
                                                   (let ((__tmp155166
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155166)))
                                                  (__tmp155161
                                                   (let ((__tmp155162
                                                          (let ((__tmp155163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155164
                                (##structure-ref
                                 _self154264_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp155164 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155162
                                                           _args154277_))))
                                              (declare (not safe))
                                              (cons __tmp155165 __tmp155161))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155160))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp155159
                                 _stx154266_))
                              (let ((__tmp155158
                                     (##structure-ref
                                      _self154264_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp155157
                                     (length (##structure-ref
                                              _klass154269_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx154266_
                                 __tmp155158
                                 __tmp155157)))
                          (let ((_$obj154302_
                                 (let ((__tmp155106 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155106))))
                            (let _lp154304_ ((_rest154306_ _args154277_)
                                             (_initializers154307_ '()))
                              (let* ((___stx154833154834_ _rest154306_)
                                     (_g154311154332_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154833154834_)))))
                                (let ((___kont154835154836_
                                       (lambda (_L154386_ _L154387_ _L154388_)
                                         (let* ((_slot154419_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L154388_))))
                                                (_off154421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass154269_
                                                    _slot154419_))))
                                           (if _off154421_
                                               (let ((__tmp155108
                                                      (let ((__tmp155109
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154421_ _L154387_))))
                (declare (not safe))
                (cons __tmp155109 _initializers154307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp154304_
                                                  _L154386_
                                                  __tmp155108))
                                               (let ((__tmp155107
                                                      (##structure-ref
                                                       _self154264_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx154266_
                                                  __tmp155107
                                                  _slot154419_))))))
                                      (___kont154837154838_
                                       (lambda ()
                                         (let ((__tmp155110
                                                (let ((__tmp155111
                                                       (let ((__tmp155134
                                                              (let ((__tmp155135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155137
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154302_ '())))
                                   (__tmp155136
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154279_ '()))))
                               (declare (not safe))
                               (cons __tmp155137 __tmp155136))))
                        (declare (not safe))
                        (cons __tmp155135 '())))
                     (__tmp155112
                      (let ((__tmp155113
                             (let ((__tmp155114
                                    (let ((__tmp155131
                                           (let ((__tmp155132
                                                  (let ((__tmp155133
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155133))))
                                             (declare (not safe))
                                             (cons __tmp155132 '())))
                                          (__tmp155115
                                           (let ((__tmp155116
                                                  (lambda (_i154346_ _r154347_)
                                                    (let ((__tmp155117
                                                           (let ((__tmp155118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155128
                                 (let ((__tmp155129
                                        (let ((__tmp155130
                                               (##structure-ref
                                                _self154264_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155130 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155129)))
                                (__tmp155119
                                 (let ((__tmp155125
                                        (let ((__tmp155126
                                               (let ((__tmp155127
                                                      (car _i154346_)))
                                                 (declare (not safe))
                                                 (cons __tmp155127 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155126)))
                                       (__tmp155120
                                        (let ((__tmp155123
                                               (let ((__tmp155124
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj154302_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155124)))
                                              (__tmp155121
                                               (let ((__tmp155122
                                                      (cdr _i154346_)))
                                                 (declare (not safe))
                                                 (cons __tmp155122 '()))))
                                          (declare (not safe))
                                          (cons __tmp155123 __tmp155121))))
                                   (declare (not safe))
                                   (cons __tmp155125 __tmp155120))))
                            (declare (not safe))
                            (cons __tmp155128 __tmp155119))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp155118))))
              (declare (not safe))
              (cons __tmp155117 _r154347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp155116
                                                     '()
                                                     _initializers154307_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp155131 __tmp155115))))
                               (declare (not safe))
                               (cons '%#begin __tmp155114))))
                        (declare (not safe))
                        (cons __tmp155113 '()))))
                 (declare (not safe))
                 (cons __tmp155134 __tmp155112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155111))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155110
                                            _stx154266_))))
                                      (___kont154839154840_
                                       (lambda ()
                                         (let ((__tmp155138
                                                (let ((__tmp155139
                                                       (let ((__tmp155153
                                                              (let ((__tmp155154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155156
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154302_ '())))
                                   (__tmp155155
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154279_ '()))))
                               (declare (not safe))
                               (cons __tmp155156 __tmp155155))))
                        (declare (not safe))
                        (cons __tmp155154 '())))
                     (__tmp155140
                      (let ((__tmp155141
                             (let ((__tmp155142
                                    (let ((__tmp155146
                                           (let ((__tmp155147
                                                  (let ((__tmp155151
                                                         (let ((__tmp155152
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp155152)))
                (__tmp155148
                 (let ((__tmp155149
                        (let ((__tmp155150
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj154302_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155150))))
                   (declare (not safe))
                   (cons __tmp155149 _args154277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155151
                                                          __tmp155148))))
                                             (declare (not safe))
                                             (cons '%#call __tmp155147)))
                                          (__tmp155143
                                           (let ((__tmp155144
                                                  (let ((__tmp155145
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155145))))
                                             (declare (not safe))
                                             (cons __tmp155144 '()))))
                                      (declare (not safe))
                                      (cons __tmp155146 __tmp155143))))
                               (declare (not safe))
                               (cons '%#begin __tmp155142))))
                        (declare (not safe))
                        (cons __tmp155141 '()))))
                 (declare (not safe))
                 (cons __tmp155153 __tmp155140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155139))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155138
                                            _stx154266_)))))
                                  (let* ((_g154309154349_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154833154834_))
                                                (___kont154837154838_)
                                                (___kont154839154840_))))
                                         (___match154870154871_
                                          (lambda (_e154318154354_
                                                   _hd154317154357_
                                                   _tl154316154359_
                                                   _e154321154362_
                                                   _hd154320154365_
                                                   _tl154319154367_
                                                   _e154324154370_
                                                   _hd154323154373_
                                                   _tl154322154375_
                                                   _e154327154378_
                                                   _hd154326154381_
                                                   _tl154325154383_)
                                            (let ((_L154386_ _tl154325154383_)
                                                  (_L154387_ _hd154326154381_)
                                                  (_L154388_ _hd154323154373_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154388_))
                                                  (___kont154835154836_
                                                   _L154386_
                                                   _L154387_
                                                   _L154388_)
                                                  (___kont154839154840_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154833154834_))
                                        (let ((_e154318154354_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154833154834_))))
                                          (let ((_tl154316154359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154318154354_)))
                                                (_hd154317154357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154318154354_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154317154357_))
                                                (let ((_e154321154362_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154317154357_))))
                                                  (let ((_tl154319154367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154321154362_)))
                                                        (_hd154320154365_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154321154362_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154320154365_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154320154365_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154319154367_))
                        (let ((_e154324154370_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154319154367_))))
                          (let ((_tl154322154375_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154324154370_)))
                                (_hd154323154373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154324154370_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154322154375_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154316154359_))
                                    (let ((_e154327154378_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154316154359_))))
                                      (let ((_tl154325154383_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154327154378_)))
                                            (_hd154326154381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154327154378_))))
                                        (___match154870154871_
                                         _e154318154354_
                                         _hd154317154357_
                                         _tl154316154359_
                                         _e154321154362_
                                         _hd154320154365_
                                         _tl154319154367_
                                         _e154324154370_
                                         _hd154323154373_
                                         _tl154322154375_
                                         _e154327154378_
                                         _hd154326154381_
                                         _tl154325154383_)))
                                    (___kont154839154840_))
                                (___kont154839154840_))))
                        (___kont154839154840_))
                    (___kont154839154840_))
                (___kont154839154840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154839154840_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154309154349_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154756 __method-table154757)
        (let ((__id154758
               (let ((__slot154759
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154756 'id))))
                 (if __slot154759
                     __slot154759
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154264_ _ctx154265_ _stx154266_ _args154267_)
            (let* ((_klass154269_
                    (let ((__tmp155279
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self154264_
                              __id154758
                              __klass154756
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx154266_ __tmp155279)))
                   (_fields154271_
                    (length (##structure-ref
                             _klass154269_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args154277_
                    (map (lambda (_g154272154274_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx154265_ _g154272154274_)))
                         _args154267_))
                   (_inline-make-object154279_
                    (let ((__tmp155280
                           (let ((__tmp155286
                                  (let ((__tmp155287
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155287)))
                                 (__tmp155281
                                  (let ((__tmp155283
                                         (let ((__tmp155284
                                                (let ((__tmp155285
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154264_
                                                          __id154758
                                                          __klass154756
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155285 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155284)))
                                        (__tmp155282
                                         (make-list
                                          _fields154271_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp155283 __tmp155282))))
                             (declare (not safe))
                             (cons __tmp155286 __tmp155281))))
                      (declare (not safe))
                      (cons '%#call __tmp155280))))
              (let ((_$e154282_
                     (##structure-ref _klass154269_ '6 gxc#!class::t '#f)))
                (if _$e154282_
                    ((lambda (_ctor154285_)
                       (let ((_$obj154287_
                              (let ((__tmp155387 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155387)))
                             (_ctor-impl154288_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass154269_
                                 _ctor154285_))))
                         (let ((__tmp155388
                                (let ((__tmp155389
                                       (let ((__tmp155457
                                              (let ((__tmp155458
                                                     (let ((__tmp155460
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj154287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155459
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object154279_ '()))))
               (declare (not safe))
               (cons __tmp155460 __tmp155459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155458 '())))
                                             (__tmp155390
                                              (let ((__tmp155391
                                                     (let ((__tmp155392
                                                            (let ((__tmp155396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl154288_
                               (let ((__tmp155451
                                      (let ((__tmp155455
                                             (let ((__tmp155456
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl154288_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155456)))
                                            (__tmp155452
                                             (let ((__tmp155453
                                                    (let ((__tmp155454
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj154287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155454))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155453
                                                     _args154277_))))
                                        (declare (not safe))
                                        (cons __tmp155455 __tmp155452))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155451))
                               (let* ((_$ctor154290_
                                       (let ((__tmp155397
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155397)))
                                      (__tmp155398
                                       (let ((__tmp155433
                                              (let ((__tmp155434
                                                     (let ((__tmp155450
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor154290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155435
                    (let ((__tmp155436
                           (let ((__tmp155437
                                  (let ((__tmp155448
                                         (let ((__tmp155449
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155449)))
                                        (__tmp155438
                                         (let ((__tmp155445
                                                (let ((__tmp155446
                                                       (let ((__tmp155447
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self154264_
                         __id154758
                         __klass154756
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155447 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155446)))
                                               (__tmp155439
                                                (let ((__tmp155443
                                                       (let ((__tmp155444
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154287_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155444)))
              (__tmp155440
               (let ((__tmp155441
                      (let ((__tmp155442
                             (let ()
                               (declare (not safe))
                               (cons _ctor154285_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155442))))
                 (declare (not safe))
                 (cons __tmp155441 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155443
                                                        __tmp155440))))
                                           (declare (not safe))
                                           (cons __tmp155445 __tmp155439))))
                                    (declare (not safe))
                                    (cons __tmp155448 __tmp155438))))
                             (declare (not safe))
                             (cons '%#call __tmp155437))))
                      (declare (not safe))
                      (cons __tmp155436 '()))))
               (declare (not safe))
               (cons __tmp155450 __tmp155435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155434 '())))
                                             (__tmp155399
                                              (let ((__tmp155400
                                                     (let ((__tmp155401
                                                            (let ((__tmp155431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155432
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor154290_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155432)))
                          (__tmp155402
                           (let ((__tmp155424
                                  (let ((__tmp155425
                                         (let ((__tmp155429
                                                (let ((__tmp155430
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor154290_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155430)))
                                               (__tmp155426
                                                (let ((__tmp155427
                                                       (let ((__tmp155428
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154287_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155427
                                                        _args154277_))))
                                           (declare (not safe))
                                           (cons __tmp155429 __tmp155426))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155425)))
                                 (__tmp155403
                                  (let ((__tmp155404
                                         (let ((__tmp155405
                                                (let ((__tmp155422
                                                       (let ((__tmp155423
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155423)))
              (__tmp155406
               (let ((__tmp155420
                      (let ((__tmp155421
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155421)))
                     (__tmp155407
                      (let ((__tmp155418
                             (let ((__tmp155419
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155419)))
                            (__tmp155408
                             (let ((__tmp155415
                                    (let ((__tmp155416
                                           (let ((__tmp155417
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self154264_
                                                     __id154758
                                                     __klass154756
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155417 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155416)))
                                   (__tmp155409
                                    (let ((__tmp155413
                                           (let ((__tmp155414
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155414)))
                                          (__tmp155410
                                           (let ((__tmp155411
                                                  (let ((__tmp155412
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor154285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155412))))
                                             (declare (not safe))
                                             (cons __tmp155411 '()))))
                                      (declare (not safe))
                                      (cons __tmp155413 __tmp155410))))
                               (declare (not safe))
                               (cons __tmp155415 __tmp155409))))
                        (declare (not safe))
                        (cons __tmp155418 __tmp155408))))
                 (declare (not safe))
                 (cons __tmp155420 __tmp155407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155422
                                                        __tmp155406))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155405))))
                                    (declare (not safe))
                                    (cons __tmp155404 '()))))
                             (declare (not safe))
                             (cons __tmp155424 __tmp155403))))
                      (declare (not safe))
                      (cons __tmp155431 __tmp155402))))
               (declare (not safe))
               (cons '%#if __tmp155401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155400 '()))))
                                         (declare (not safe))
                                         (cons __tmp155433 __tmp155399))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155398))))
                          (__tmp155393
                           (let ((__tmp155394
                                  (let ((__tmp155395
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj154287_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155395))))
                             (declare (not safe))
                             (cons __tmp155394 '()))))
                      (declare (not safe))
                      (cons __tmp155396 __tmp155393))))
               (declare (not safe))
               (cons '%#begin __tmp155392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155391 '()))))
                                         (declare (not safe))
                                         (cons __tmp155457 __tmp155390))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155389))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155388 _stx154266_))))
                     _$e154282_)
                    (let ((_$e154292_
                           (##structure-ref
                            _klass154269_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e154292_
                          ((lambda (_metaclass154295_)
                             (let* ((_$obj154297_
                                     (let ((__tmp155349 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155349)))
                                    (_metakons154299_
                                     (let ((__tmp155350
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx154266_
                                               _metaclass154295_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155350
                                        'instance-init!))))
                               (let ((__tmp155351
                                      (let ((__tmp155352
                                             (let ((__tmp155383
                                                    (let ((__tmp155384
                                                           (let ((__tmp155386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj154297_ '())))
                         (__tmp155385
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object154279_ '()))))
                     (declare (not safe))
                     (cons __tmp155386 __tmp155385))))
              (declare (not safe))
              (cons __tmp155384 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155353
                                                    (let ((__tmp155354
                                                           (let ((__tmp155355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155359
                                 (if _metakons154299_
                                     (let ((__tmp155373
                                            (let ((__tmp155381
                                                   (let ((__tmp155382
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons154299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155382)))
                                                  (__tmp155374
                                                   (let ((__tmp155378
                                                          (let ((__tmp155379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155380
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154264_
                                   __id154758
                                   __klass154756
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155380 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155379)))
                 (__tmp155375
                  (let ((__tmp155376
                         (let ((__tmp155377
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj154297_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155377))))
                    (declare (not safe))
                    (cons __tmp155376 _args154277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155378
                                                           __tmp155375))))
                                              (declare (not safe))
                                              (cons __tmp155381 __tmp155374))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155373))
                                     (let ((__tmp155360
                                            (let ((__tmp155371
                                                   (let ((__tmp155372
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155372)))
                                                  (__tmp155361
                                                   (let ((__tmp155368
                                                          (let ((__tmp155369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155370
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154264_
                                   __id154758
                                   __klass154756
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155370 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155369)))
                 (__tmp155362
                  (let ((__tmp155366
                         (let ((__tmp155367
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155367)))
                        (__tmp155363
                         (let ((__tmp155364
                                (let ((__tmp155365
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj154297_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155365))))
                           (declare (not safe))
                           (cons __tmp155364 _args154277_))))
                    (declare (not safe))
                    (cons __tmp155366 __tmp155363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155368
                                                           __tmp155362))))
                                              (declare (not safe))
                                              (cons __tmp155371 __tmp155361))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155360))))
                                (__tmp155356
                                 (let ((__tmp155357
                                        (let ((__tmp155358
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj154297_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155358))))
                                   (declare (not safe))
                                   (cons __tmp155357 '()))))
                            (declare (not safe))
                            (cons __tmp155359 __tmp155356))))
                     (declare (not safe))
                     (cons '%#begin __tmp155355))))
              (declare (not safe))
              (cons __tmp155354 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155383
                                                     __tmp155353))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155352))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155351
                                  _stx154266_))))
                           _$e154292_)
                          (if (##structure-ref
                               _klass154269_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args154277_) _fields154271_)
                                  (let ((__tmp155341
                                         (let ((__tmp155342
                                                (let ((__tmp155347
                                                       (let ((__tmp155348
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155348)))
              (__tmp155343
               (let ((__tmp155344
                      (let ((__tmp155345
                             (let ((__tmp155346
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self154264_
                                       __id154758
                                       __klass154756
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155346 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155345))))
                 (declare (not safe))
                 (cons __tmp155344 _args154277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155347
                                                        __tmp155343))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155342))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155341
                                     _stx154266_))
                                  (let ((__tmp155340
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self154264_
                                            __id154758
                                            __klass154756
                                            '#f)))
                                        (__tmp155339
                                         (length (##structure-ref
                                                  _klass154269_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx154266_
                                     __tmp155340
                                     __tmp155339)))
                              (let ((_$obj154302_
                                     (let ((__tmp155288 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155288))))
                                (let _lp154304_ ((_rest154306_ _args154277_)
                                                 (_initializers154307_ '()))
                                  (let* ((___stx154875154876_ _rest154306_)
                                         (_g154311154332_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154875154876_)))))
                                    (let ((___kont154877154878_
                                           (lambda (_L154386_
                                                    _L154387_
                                                    _L154388_)
                                             (let* ((_slot154419_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154388_))))
                                                    (_off154421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass154269_
                                                        _slot154419_))))
                                               (if _off154421_
                                                   (let ((__tmp155290
                                                          (let ((__tmp155291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154421_ _L154387_))))
                    (declare (not safe))
                    (cons __tmp155291 _initializers154307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp154304_
                                                      _L154386_
                                                      __tmp155290))
                                                   (let ((__tmp155289
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self154264_
                                                             __id154758
                                                             __klass154756
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx154266_
                                                      __tmp155289
                                                      _slot154419_))))))
                                          (___kont154879154880_
                                           (lambda ()
                                             (let ((__tmp155292
                                                    (let ((__tmp155293
                                                           (let ((__tmp155316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155317
                                 (let ((__tmp155319
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154302_ '())))
                                       (__tmp155318
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154279_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155319 __tmp155318))))
                            (declare (not safe))
                            (cons __tmp155317 '())))
                         (__tmp155294
                          (let ((__tmp155295
                                 (let ((__tmp155296
                                        (let ((__tmp155313
                                               (let ((__tmp155314
                                                      (let ((__tmp155315
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154302_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155314 '())))
                                              (__tmp155297
                                               (let ((__tmp155298
                                                      (lambda (_i154346_
                                                               _r154347_)
                                                        (let ((__tmp155299
                                                               (let ((__tmp155300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155310
                                     (let ((__tmp155311
                                            (let ((__tmp155312
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154264_
                                                      __id154758
                                                      __klass154756
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155312 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155311)))
                                    (__tmp155301
                                     (let ((__tmp155307
                                            (let ((__tmp155308
                                                   (let ((__tmp155309
                                                          (car _i154346_)))
                                                     (declare (not safe))
                                                     (cons __tmp155309 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155308)))
                                           (__tmp155302
                                            (let ((__tmp155305
                                                   (let ((__tmp155306
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155306)))
                                                  (__tmp155303
                                                   (let ((__tmp155304
                                                          (cdr _i154346_)))
                                                     (declare (not safe))
                                                     (cons __tmp155304 '()))))
                                              (declare (not safe))
                                              (cons __tmp155305 __tmp155303))))
                                       (declare (not safe))
                                       (cons __tmp155307 __tmp155302))))
                                (declare (not safe))
                                (cons __tmp155310 __tmp155301))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp155300))))
                  (declare (not safe))
                  (cons __tmp155299 _r154347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp155298
                                                         '()
                                                         _initializers154307_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155313
                                                  __tmp155297))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155296))))
                            (declare (not safe))
                            (cons __tmp155295 '()))))
                     (declare (not safe))
                     (cons __tmp155316 __tmp155294))))
              (declare (not safe))
              (cons '%#let-values __tmp155293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155292
                                                _stx154266_))))
                                          (___kont154881154882_
                                           (lambda ()
                                             (let ((__tmp155320
                                                    (let ((__tmp155321
                                                           (let ((__tmp155335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155336
                                 (let ((__tmp155338
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154302_ '())))
                                       (__tmp155337
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154279_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155338 __tmp155337))))
                            (declare (not safe))
                            (cons __tmp155336 '())))
                         (__tmp155322
                          (let ((__tmp155323
                                 (let ((__tmp155324
                                        (let ((__tmp155328
                                               (let ((__tmp155329
                                                      (let ((__tmp155333
                                                             (let ((__tmp155334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155334)))
                    (__tmp155330
                     (let ((__tmp155331
                            (let ((__tmp155332
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154302_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155332))))
                       (declare (not safe))
                       (cons __tmp155331 _args154277_))))
                (declare (not safe))
                (cons __tmp155333 __tmp155330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155329)))
                                              (__tmp155325
                                               (let ((__tmp155326
                                                      (let ((__tmp155327
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154302_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155326 '()))))
                                          (declare (not safe))
                                          (cons __tmp155328 __tmp155325))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155324))))
                            (declare (not safe))
                            (cons __tmp155323 '()))))
                     (declare (not safe))
                     (cons __tmp155335 __tmp155322))))
              (declare (not safe))
              (cons '%#let-values __tmp155321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155320
                                                _stx154266_)))))
                                      (let* ((_g154309154349_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154875154876_))
                                                    (___kont154879154880_)
                                                    (___kont154881154882_))))
                                             (___match154912154913_
                                              (lambda (_e154318154354_
                                                       _hd154317154357_
                                                       _tl154316154359_
                                                       _e154321154362_
                                                       _hd154320154365_
                                                       _tl154319154367_
                                                       _e154324154370_
                                                       _hd154323154373_
                                                       _tl154322154375_
                                                       _e154327154378_
                                                       _hd154326154381_
                                                       _tl154325154383_)
                                                (let ((_L154386_
                                                       _tl154325154383_)
                                                      (_L154387_
                                                       _hd154326154381_)
                                                      (_L154388_
                                                       _hd154323154373_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154388_))
                                                      (___kont154877154878_
                                                       _L154386_
                                                       _L154387_
                                                       _L154388_)
                                                      (___kont154881154882_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154875154876_))
                                            (let ((_e154318154354_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154875154876_))))
                                              (let ((_tl154316154359_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154318154354_)))
                                                    (_hd154317154357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154318154354_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154317154357_))
                                                    (let ((_e154321154362_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154317154357_))))
                                                      (let ((_tl154319154367_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154321154362_)))
                    (_hd154320154365_
                     (let () (declare (not safe)) (##car _e154321154362_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154320154365_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154320154365_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154319154367_))
                            (let ((_e154324154370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154319154367_))))
                              (let ((_tl154322154375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154324154370_)))
                                    (_hd154323154373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154324154370_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154322154375_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154316154359_))
                                        (let ((_e154327154378_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154316154359_))))
                                          (let ((_tl154325154383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154327154378_)))
                                                (_hd154326154381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154327154378_))))
                                            (___match154912154913_
                                             _e154318154354_
                                             _hd154317154357_
                                             _tl154316154359_
                                             _e154321154362_
                                             _hd154320154365_
                                             _tl154319154367_
                                             _e154324154370_
                                             _hd154323154373_
                                             _tl154322154375_
                                             _e154327154378_
                                             _hd154326154381_
                                             _tl154325154383_)))
                                        (___kont154881154882_))
                                    (___kont154881154882_))))
                            (___kont154881154882_))
                        (___kont154881154882_))
                    (___kont154881154882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154881154882_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154309154349_))))))))))))))))))
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
      (lambda (_self154086_ _ctx154087_ _stx154088_ _args154089_)
        (let* ((_g154091154101_
                (lambda (_g154092154098_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154092154098_))))
               (_g154090154139_
                (lambda (_g154092154104_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154092154104_))
                      (let ((_e154096154106_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154092154104_))))
                        (let ((_hd154095154109_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154096154106_)))
                              (_tl154094154111_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154096154106_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154094154111_))
                              ((lambda (_L154114_)
                                 (let* ((_klass154125_
                                         (let ((__tmp155461
                                                (##structure-ref
                                                 _self154086_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154088_
                                            __tmp155461)))
                                        (_field154127_
                                         (let ((__tmp155462
                                                (##structure-ref
                                                 _self154086_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass154125_
                                            __tmp155462)))
                                        (_object154129_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154087_
                                            _L154114_))))
                                   (if (##structure-ref
                                        _klass154125_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155539
                                              (let ((__tmp155548
                                                     (if (##structure-ref
                                                          _self154086_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155540
                                                     (let ((__tmp155545
                                                            (let ((__tmp155546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155547
                                  (##structure-ref
                                   _self154086_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155547 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155546)))
                   (__tmp155541
                    (let ((__tmp155543
                           (let ((__tmp155544
                                  (let ()
                                    (declare (not safe))
                                    (cons _field154127_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155544)))
                          (__tmp155542
                           (let ()
                             (declare (not safe))
                             (cons _object154129_ '()))))
                      (declare (not safe))
                      (cons __tmp155543 __tmp155542))))
               (declare (not safe))
               (cons __tmp155545 __tmp155541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155548
                                                      __tmp155540))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155539
                                          _stx154088_))
                                       (if (##structure-ref
                                            _klass154125_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155529
                                                  (let ((__tmp155538
                                                         (if (##structure-ref
                                                              _self154086_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155530
                                                         (let ((__tmp155535
                                                                (let ((__tmp155536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155537
                                      (##structure-ref
                                       _self154086_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155537 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155536)))
                       (__tmp155531
                        (let ((__tmp155533
                               (let ((__tmp155534
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154127_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155534)))
                              (__tmp155532
                               (let ()
                                 (declare (not safe))
                                 (cons _object154129_ '()))))
                          (declare (not safe))
                          (cons __tmp155533 __tmp155532))))
                   (declare (not safe))
                   (cons __tmp155535 __tmp155531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155538
                                                          __tmp155530))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155529
                                              _stx154088_))
                                           (let ((_$e154132_
                                                  (let ((__tmp155463
                                                         (##structure-ref
                                                          _self154086_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass154125_
                                                     __tmp155463))))
                                             (if _$e154132_
                                                 ((lambda (_klass154135_)
                                                    (let ((__tmp155519
                                                           (let ((__tmp155528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self154086_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155520
                          (let ((__tmp155525
                                 (let ((__tmp155526
                                        (let ((__tmp155527
                                               (##structure-ref
                                                _self154086_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155527 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155526)))
                                (__tmp155521
                                 (let ((__tmp155523
                                        (let ((__tmp155524
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field154127_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155524)))
                                       (__tmp155522
                                        (let ()
                                          (declare (not safe))
                                          (cons _object154129_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155523 __tmp155522))))
                            (declare (not safe))
                            (cons __tmp155525 __tmp155521))))
                     (declare (not safe))
                     (cons __tmp155528 __tmp155520))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155519 _stx154088_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e154132_)
                                                 (if (##structure-ref
                                                      _self154086_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155473
                                                            (let* ((_$obj154137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155474 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155474)))
                           (__tmp155475
                            (let ((__tmp155515
                                   (let ((__tmp155516
                                          (let ((__tmp155518
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj154137_ '())))
                                                (__tmp155517
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object154129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155518 __tmp155517))))
                                     (declare (not safe))
                                     (cons __tmp155516 '())))
                                  (__tmp155476
                                   (let ((__tmp155477
                                          (let ((__tmp155478
                                                 (let ((__tmp155507
                                                        (let ((__tmp155508
                                                               (let ((__tmp155512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155513
                                     (let ((__tmp155514
                                            (##structure-ref
                                             _klass154125_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155514 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155513)))
                             (__tmp155509
                              (let ((__tmp155510
                                     (let ((__tmp155511
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj154137_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155511))))
                                (declare (not safe))
                                (cons __tmp155510 '()))))
                         (declare (not safe))
                         (cons __tmp155512 __tmp155509))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155508)))
               (__tmp155479
                (let ((__tmp155496
                       (let ((__tmp155497
                              (let ((__tmp155504
                                     (let ((__tmp155505
                                            (let ((__tmp155506
                                                   (##structure-ref
                                                    _self154086_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155506 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155505)))
                                    (__tmp155498
                                     (let ((__tmp155502
                                            (let ((__tmp155503
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154127_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155503)))
                                           (__tmp155499
                                            (let ((__tmp155500
                                                   (let ((__tmp155501
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155501))))
                                              (declare (not safe))
                                              (cons __tmp155500 '()))))
                                       (declare (not safe))
                                       (cons __tmp155502 __tmp155499))))
                                (declare (not safe))
                                (cons __tmp155504 __tmp155498))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155497)))
                      (__tmp155480
                       (let ((__tmp155481
                              (let ((__tmp155482
                                     (let ((__tmp155494
                                            (let ((__tmp155495
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155495)))
                                           (__tmp155483
                                            (let ((__tmp155491
                                                   (let ((__tmp155492
                                                          (let ((__tmp155493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self154086_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155493 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155492)))
                                                  (__tmp155484
                                                   (let ((__tmp155489
                                                          (let ((__tmp155490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj154137_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155490)))
                 (__tmp155485
                  (let ((__tmp155486
                         (let ((__tmp155487
                                (let ((__tmp155488
                                       (##structure-ref
                                        _self154086_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155488 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155487))))
                    (declare (not safe))
                    (cons __tmp155486 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155489
                                                           __tmp155485))))
                                              (declare (not safe))
                                              (cons __tmp155491 __tmp155484))))
                                       (declare (not safe))
                                       (cons __tmp155494 __tmp155483))))
                                (declare (not safe))
                                (cons '%#call __tmp155482))))
                         (declare (not safe))
                         (cons __tmp155481 '()))))
                  (declare (not safe))
                  (cons __tmp155496 __tmp155480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155507
                                                         __tmp155479))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155478))))
                                     (declare (not safe))
                                     (cons __tmp155477 '()))))
                              (declare (not safe))
                              (cons __tmp155515 __tmp155476))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155475))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155473 _stx154088_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155464
                                                            (let ((__tmp155465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155471
                                  (let ((__tmp155472
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155472)))
                                 (__tmp155466
                                  (let ((__tmp155467
                                         (let ((__tmp155468
                                                (let ((__tmp155469
                                                       (let ((__tmp155470
                                                              (##structure-ref
                                                               _self154086_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155470
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155469))))
                                           (declare (not safe))
                                           (cons __tmp155468 '()))))
                                    (declare (not safe))
                                    (cons _object154129_ __tmp155467))))
                             (declare (not safe))
                             (cons __tmp155471 __tmp155466))))
                      (declare (not safe))
                      (cons '%#call __tmp155465))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155464 _stx154088_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd154095154109_)
                              (let ()
                                (declare (not safe))
                                (_g154091154101_ _g154092154104_)))))
                      (let ()
                        (declare (not safe))
                        (_g154091154101_ _g154092154104_))))))
          (declare (not safe))
          (_g154090154139_ _args154089_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154760 __method-table154761)
        (let ((__id154762
               (let ((__slot154765
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154760 'id))))
                 (if __slot154765
                     __slot154765
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot154763
               (let ((__slot154766
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154760 'slot))))
                 (if __slot154766
                     __slot154766
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?154764
               (let ((__slot154767
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154760 'checked?))))
                 (if __slot154767
                     __slot154767
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self154086_ _ctx154087_ _stx154088_ _args154089_)
            (let* ((_g154091154101_
                    (lambda (_g154092154098_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154092154098_))))
                   (_g154090154139_
                    (lambda (_g154092154104_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154092154104_))
                          (let ((_e154096154106_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154092154104_))))
                            (let ((_hd154095154109_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154096154106_)))
                                  (_tl154094154111_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154096154106_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154094154111_))
                                  ((lambda (_L154114_)
                                     (let* ((_klass154125_
                                             (let ((__tmp155549
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154086_
                                                       __id154762
                                                       __klass154760
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154088_
                                                __tmp155549)))
                                            (_field154127_
                                             (let ((__tmp155550
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154086_
                                                       __slot154763
                                                       __klass154760
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass154125_
                                                __tmp155550)))
                                            (_object154129_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154087_
                                                _L154114_))))
                                       (if (##structure-ref
                                            _klass154125_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155627
                                                  (let ((__tmp155636
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154086_
                        __checked?154764
                        __klass154760
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155628
                 (let ((__tmp155633
                        (let ((__tmp155634
                               (let ((__tmp155635
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self154086_
                                         __id154762
                                         __klass154760
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155635 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155634)))
                       (__tmp155629
                        (let ((__tmp155631
                               (let ((__tmp155632
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154127_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155632)))
                              (__tmp155630
                               (let ()
                                 (declare (not safe))
                                 (cons _object154129_ '()))))
                          (declare (not safe))
                          (cons __tmp155631 __tmp155630))))
                   (declare (not safe))
                   (cons __tmp155633 __tmp155629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155636
                                                          __tmp155628))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155627
                                              _stx154088_))
                                           (if (##structure-ref
                                                _klass154125_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155617
                                                      (let ((__tmp155626
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self154086_
                            __checked?154764
                            __klass154760
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155618
                     (let ((__tmp155623
                            (let ((__tmp155624
                                   (let ((__tmp155625
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self154086_
                                             __id154762
                                             __klass154760
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp155625 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155624)))
                           (__tmp155619
                            (let ((__tmp155621
                                   (let ((__tmp155622
                                          (let ()
                                            (declare (not safe))
                                            (cons _field154127_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155622)))
                                  (__tmp155620
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154129_ '()))))
                              (declare (not safe))
                              (cons __tmp155621 __tmp155620))))
                       (declare (not safe))
                       (cons __tmp155623 __tmp155619))))
                (declare (not safe))
                (cons __tmp155626 __tmp155618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155617
                                                  _stx154088_))
                                               (let ((_$e154132_
                                                      (let ((__tmp155551
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154086_
                        __slot154763
                        __klass154760
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass154125_ __tmp155551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e154132_
                                                     ((lambda (_klass154135_)
                                                        (let ((__tmp155607
                                                               (let ((__tmp155616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self154086_
                                     __checked?154764
                                     __klass154760
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155608
                              (let ((__tmp155613
                                     (let ((__tmp155614
                                            (let ((__tmp155615
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154086_
                                                      __id154762
                                                      __klass154760
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155615 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155614)))
                                    (__tmp155609
                                     (let ((__tmp155611
                                            (let ((__tmp155612
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154127_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155612)))
                                           (__tmp155610
                                            (let ()
                                              (declare (not safe))
                                              (cons _object154129_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155611 __tmp155610))))
                                (declare (not safe))
                                (cons __tmp155613 __tmp155609))))
                         (declare (not safe))
                         (cons __tmp155616 __tmp155608))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155607 _stx154088_)))
              _$e154132_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self154086_
                                                            __checked?154764
                                                            __klass154760
                                                            '#f))
                                                         (let ((__tmp155561
                                                                (let* ((_$obj154137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155562 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155562)))
                               (__tmp155563
                                (let ((__tmp155603
                                       (let ((__tmp155604
                                              (let ((__tmp155606
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj154137_
                                                             '())))
                                                    (__tmp155605
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object154129_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155606
                                                      __tmp155605))))
                                         (declare (not safe))
                                         (cons __tmp155604 '())))
                                      (__tmp155564
                                       (let ((__tmp155565
                                              (let ((__tmp155566
                                                     (let ((__tmp155595
                                                            (let ((__tmp155596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155600
                                  (let ((__tmp155601
                                         (let ((__tmp155602
                                                (##structure-ref
                                                 _klass154125_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155602 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155601)))
                                 (__tmp155597
                                  (let ((__tmp155598
                                         (let ((__tmp155599
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj154137_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155599))))
                                    (declare (not safe))
                                    (cons __tmp155598 '()))))
                             (declare (not safe))
                             (cons __tmp155600 __tmp155597))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155596)))
                   (__tmp155567
                    (let ((__tmp155584
                           (let ((__tmp155585
                                  (let ((__tmp155592
                                         (let ((__tmp155593
                                                (let ((__tmp155594
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154086_
                                                          __id154762
                                                          __klass154760
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155594 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155593)))
                                        (__tmp155586
                                         (let ((__tmp155590
                                                (let ((__tmp155591
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field154127_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155591)))
                                               (__tmp155587
                                                (let ((__tmp155588
                                                       (let ((__tmp155589
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154137_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155588 '()))))
                                           (declare (not safe))
                                           (cons __tmp155590 __tmp155587))))
                                    (declare (not safe))
                                    (cons __tmp155592 __tmp155586))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155585)))
                          (__tmp155568
                           (let ((__tmp155569
                                  (let ((__tmp155570
                                         (let ((__tmp155582
                                                (let ((__tmp155583
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155583)))
                                               (__tmp155571
                                                (let ((__tmp155579
                                                       (let ((__tmp155580
                                                              (let ((__tmp155581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self154086_
                                __id154762
                                __klass154760
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155581 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155580)))
              (__tmp155572
               (let ((__tmp155577
                      (let ((__tmp155578
                             (let ()
                               (declare (not safe))
                               (cons _$obj154137_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155578)))
                     (__tmp155573
                      (let ((__tmp155574
                             (let ((__tmp155575
                                    (let ((__tmp155576
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self154086_
                                              __slot154763
                                              __klass154760
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155576 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155575))))
                        (declare (not safe))
                        (cons __tmp155574 '()))))
                 (declare (not safe))
                 (cons __tmp155577 __tmp155573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155579
                                                        __tmp155572))))
                                           (declare (not safe))
                                           (cons __tmp155582 __tmp155571))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155570))))
                             (declare (not safe))
                             (cons __tmp155569 '()))))
                      (declare (not safe))
                      (cons __tmp155584 __tmp155568))))
               (declare (not safe))
               (cons __tmp155595 __tmp155567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155566))))
                                         (declare (not safe))
                                         (cons __tmp155565 '()))))
                                  (declare (not safe))
                                  (cons __tmp155603 __tmp155564))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155563))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155561 _stx154088_))
                 (let ((__tmp155552
                        (let ((__tmp155553
                               (let ((__tmp155559
                                      (let ((__tmp155560
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155560)))
                                     (__tmp155554
                                      (let ((__tmp155555
                                             (let ((__tmp155556
                                                    (let ((__tmp155557
                                                           (let ((__tmp155558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self154086_
                             __slot154763
                             __klass154760
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155558 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155556 '()))))
                                        (declare (not safe))
                                        (cons _object154129_ __tmp155555))))
                                 (declare (not safe))
                                 (cons __tmp155559 __tmp155554))))
                          (declare (not safe))
                          (cons '%#call __tmp155553))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155552 _stx154088_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd154095154109_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154091154101_ _g154092154104_)))))
                          (let ()
                            (declare (not safe))
                            (_g154091154101_ _g154092154104_))))))
              (declare (not safe))
              (_g154090154139_ _args154089_))))))
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
      (lambda (_self153890_ _ctx153891_ _stx153892_ _args153893_)
        (let* ((_g153895153909_
                (lambda (_g153896153906_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153896153906_))))
               (_g153894153961_
                (lambda (_g153896153912_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153896153912_))
                      (let ((_e153901153914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153896153912_))))
                        (let ((_hd153900153917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153901153914_)))
                              (_tl153899153919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153901153914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153899153919_))
                              (let ((_e153904153922_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153899153919_))))
                                (let ((_hd153903153925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153904153922_)))
                                      (_tl153902153927_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153904153922_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153902153927_))
                                      ((lambda (_L153930_ _L153931_)
                                         (let* ((_klass153945_
                                                 (let ((__tmp155637
                                                        (##structure-ref
                                                         _self153890_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153892_
                                                    __tmp155637)))
                                                (_field153947_
                                                 (let ((__tmp155638
                                                        (##structure-ref
                                                         _self153890_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153945_
                                                    __tmp155638)))
                                                (_object153949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153891_
                                                    _L153931_)))
                                                (_value153951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153891_
                                                    _L153930_))))
                                           (if (##structure-ref
                                                _klass153945_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155720
                                                      (let ((__tmp155730
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153890_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155721
                     (let ((__tmp155727
                            (let ((__tmp155728
                                   (let ((__tmp155729
                                          (##structure-ref
                                           _self153890_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155729 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155728)))
                           (__tmp155722
                            (let ((__tmp155725
                                   (let ((__tmp155726
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153947_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155726)))
                                  (__tmp155723
                                   (let ((__tmp155724
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153951_ '()))))
                                     (declare (not safe))
                                     (cons _object153949_ __tmp155724))))
                              (declare (not safe))
                              (cons __tmp155725 __tmp155723))))
                       (declare (not safe))
                       (cons __tmp155727 __tmp155722))))
                (declare (not safe))
                (cons __tmp155730 __tmp155721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155720
                                                  _stx153892_))
                                               (if (##structure-ref
                                                    _klass153945_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155709
                                                          (let ((__tmp155719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153890_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155710
                         (let ((__tmp155716
                                (let ((__tmp155717
                                       (let ((__tmp155718
                                              (##structure-ref
                                               _self153890_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155718 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155717)))
                               (__tmp155711
                                (let ((__tmp155714
                                       (let ((__tmp155715
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153947_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155715)))
                                      (__tmp155712
                                       (let ((__tmp155713
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153951_ '()))))
                                         (declare (not safe))
                                         (cons _object153949_ __tmp155713))))
                                  (declare (not safe))
                                  (cons __tmp155714 __tmp155712))))
                           (declare (not safe))
                           (cons __tmp155716 __tmp155711))))
                    (declare (not safe))
                    (cons __tmp155719 __tmp155710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155709
                                                      _stx153892_))
                                                   (let ((_$e153954_
                                                          (let ((__tmp155639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153890_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153945_ __tmp155639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153954_
                                                         ((lambda (_klass153957_)
                                                            (let ((__tmp155698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155708
                                  (if (##structure-ref
                                       _self153890_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155699
                                  (let ((__tmp155705
                                         (let ((__tmp155706
                                                (let ((__tmp155707
                                                       (##structure-ref
                                                        _self153890_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155707 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155706)))
                                        (__tmp155700
                                         (let ((__tmp155703
                                                (let ((__tmp155704
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153947_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155704)))
                                               (__tmp155701
                                                (let ((__tmp155702
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153951_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153949_
                                                        __tmp155702))))
                                           (declare (not safe))
                                           (cons __tmp155703 __tmp155701))))
                                    (declare (not safe))
                                    (cons __tmp155705 __tmp155700))))
                             (declare (not safe))
                             (cons __tmp155708 __tmp155699))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155698 _stx153892_)))
                  _$e153954_)
                 (if (##structure-ref _self153890_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155650
                            (let* ((_$obj153959_
                                    (let ((__tmp155651 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155651)))
                                   (__tmp155652
                                    (let ((__tmp155694
                                           (let ((__tmp155695
                                                  (let ((__tmp155697
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155696
                 (let () (declare (not safe)) (cons _object153949_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155697
                                                          __tmp155696))))
                                             (declare (not safe))
                                             (cons __tmp155695 '())))
                                          (__tmp155653
                                           (let ((__tmp155654
                                                  (let ((__tmp155655
                                                         (let ((__tmp155686
                                                                (let ((__tmp155687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155691
                                      (let ((__tmp155692
                                             (let ((__tmp155693
                                                    (##structure-ref
                                                     _klass153945_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155693 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155692)))
                                     (__tmp155688
                                      (let ((__tmp155689
                                             (let ((__tmp155690
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153959_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155690))))
                                        (declare (not safe))
                                        (cons __tmp155689 '()))))
                                 (declare (not safe))
                                 (cons __tmp155691 __tmp155688))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155687)))
                       (__tmp155656
                        (let ((__tmp155674
                               (let ((__tmp155675
                                      (let ((__tmp155683
                                             (let ((__tmp155684
                                                    (let ((__tmp155685
                                                           (##structure-ref
                                                            _self153890_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155685 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155684)))
                                            (__tmp155676
                                             (let ((__tmp155681
                                                    (let ((__tmp155682
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155682)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155677
                                                    (let ((__tmp155679
                                                           (let ((__tmp155680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153959_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155680)))
                  (__tmp155678
                   (let () (declare (not safe)) (cons _value153951_ '()))))
              (declare (not safe))
              (cons __tmp155679 __tmp155678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155681
                                                     __tmp155677))))
                                        (declare (not safe))
                                        (cons __tmp155683 __tmp155676))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155675)))
                              (__tmp155657
                               (let ((__tmp155658
                                      (let ((__tmp155659
                                             (let ((__tmp155672
                                                    (let ((__tmp155673
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155673)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155660
                                                    (let ((__tmp155669
                                                           (let ((__tmp155670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155671
                                 (##structure-ref
                                  _self153890_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155671 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155670)))
                  (__tmp155661
                   (let ((__tmp155667
                          (let ((__tmp155668
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153959_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155668)))
                         (__tmp155662
                          (let ((__tmp155664
                                 (let ((__tmp155665
                                        (let ((__tmp155666
                                               (##structure-ref
                                                _self153890_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155666 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155665)))
                                (__tmp155663
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153951_ '()))))
                            (declare (not safe))
                            (cons __tmp155664 __tmp155663))))
                     (declare (not safe))
                     (cons __tmp155667 __tmp155662))))
              (declare (not safe))
              (cons __tmp155669 __tmp155661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155672
                                                     __tmp155660))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155659))))
                                 (declare (not safe))
                                 (cons __tmp155658 '()))))
                          (declare (not safe))
                          (cons __tmp155674 __tmp155657))))
                   (declare (not safe))
                   (cons __tmp155686 __tmp155656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155655))))
                                             (declare (not safe))
                                             (cons __tmp155654 '()))))
                                      (declare (not safe))
                                      (cons __tmp155694 __tmp155653))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155652))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155650 _stx153892_))
                     (let ((__tmp155640
                            (let ((__tmp155641
                                   (let ((__tmp155648
                                          (let ((__tmp155649
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155649)))
                                         (__tmp155642
                                          (let ((__tmp155643
                                                 (let ((__tmp155645
                                                        (let ((__tmp155646
                                                               (let ((__tmp155647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153890_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155647 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155646)))
               (__tmp155644
                (let () (declare (not safe)) (cons _value153951_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155645
                                                         __tmp155644))))
                                            (declare (not safe))
                                            (cons _object153949_
                                                  __tmp155643))))
                                     (declare (not safe))
                                     (cons __tmp155648 __tmp155642))))
                              (declare (not safe))
                              (cons '%#call __tmp155641))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155640 _stx153892_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153903153925_
                                       _hd153900153917_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153895153909_ _g153896153912_)))))
                              (let ()
                                (declare (not safe))
                                (_g153895153909_ _g153896153912_)))))
                      (let ()
                        (declare (not safe))
                        (_g153895153909_ _g153896153912_))))))
          (declare (not safe))
          (_g153894153961_ _args153893_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154768 __method-table154769)
        (let ((__id154770
               (let ((__slot154773
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154768 'id))))
                 (if __slot154773
                     __slot154773
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot154771
               (let ((__slot154774
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154768 'slot))))
                 (if __slot154774
                     __slot154774
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?154772
               (let ((__slot154775
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154768 'checked?))))
                 (if __slot154775
                     __slot154775
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self153890_ _ctx153891_ _stx153892_ _args153893_)
            (let* ((_g153895153909_
                    (lambda (_g153896153906_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153896153906_))))
                   (_g153894153961_
                    (lambda (_g153896153912_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153896153912_))
                          (let ((_e153901153914_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153896153912_))))
                            (let ((_hd153900153917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153901153914_)))
                                  (_tl153899153919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153901153914_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153899153919_))
                                  (let ((_e153904153922_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153899153919_))))
                                    (let ((_hd153903153925_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153904153922_)))
                                          (_tl153902153927_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153904153922_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153902153927_))
                                          ((lambda (_L153930_ _L153931_)
                                             (let* ((_klass153945_
                                                     (let ((__tmp155731
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153890_
                                                               __id154770
                                                               __klass154768
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153892_
                                                        __tmp155731)))
                                                    (_field153947_
                                                     (let ((__tmp155732
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153890_
                                                               __slot154771
                                                               __klass154768
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153945_
                                                        __tmp155732)))
                                                    (_object153949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153891_
                                                        _L153931_)))
                                                    (_value153951_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153891_
                                                        _L153930_))))
                                               (if (##structure-ref
                                                    _klass153945_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155814
                                                          (let ((__tmp155824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153890_
                                __checked?154772
                                __klass154768
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155815
                         (let ((__tmp155821
                                (let ((__tmp155822
                                       (let ((__tmp155823
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153890_
                                                 __id154770
                                                 __klass154768
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155823 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155822)))
                               (__tmp155816
                                (let ((__tmp155819
                                       (let ((__tmp155820
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153947_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155820)))
                                      (__tmp155817
                                       (let ((__tmp155818
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153951_ '()))))
                                         (declare (not safe))
                                         (cons _object153949_ __tmp155818))))
                                  (declare (not safe))
                                  (cons __tmp155819 __tmp155817))))
                           (declare (not safe))
                           (cons __tmp155821 __tmp155816))))
                    (declare (not safe))
                    (cons __tmp155824 __tmp155815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155814
                                                      _stx153892_))
                                                   (if (##structure-ref
                                                        _klass153945_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155803
                                                              (let ((__tmp155813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153890_
                                    __checked?154772
                                    __klass154768
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155804
                             (let ((__tmp155810
                                    (let ((__tmp155811
                                           (let ((__tmp155812
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153890_
                                                     __id154770
                                                     __klass154768
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155812 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155811)))
                                   (__tmp155805
                                    (let ((__tmp155808
                                           (let ((__tmp155809
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153947_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155809)))
                                          (__tmp155806
                                           (let ((__tmp155807
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153951_ '()))))
                                             (declare (not safe))
                                             (cons _object153949_
                                                   __tmp155807))))
                                      (declare (not safe))
                                      (cons __tmp155808 __tmp155806))))
                               (declare (not safe))
                               (cons __tmp155810 __tmp155805))))
                        (declare (not safe))
                        (cons __tmp155813 __tmp155804))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155803 _stx153892_))
               (let ((_$e153954_
                      (let ((__tmp155733
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153890_
                                __slot154771
                                __klass154768
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153945_
                         __tmp155733))))
                 (if _$e153954_
                     ((lambda (_klass153957_)
                        (let ((__tmp155792
                               (let ((__tmp155802
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153890_
                                             __checked?154772
                                             __klass154768
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155793
                                      (let ((__tmp155799
                                             (let ((__tmp155800
                                                    (let ((__tmp155801
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153890_
                                                              __id154770
                                                              __klass154768
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155801 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155800)))
                                            (__tmp155794
                                             (let ((__tmp155797
                                                    (let ((__tmp155798
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155798)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155795
                                                    (let ((__tmp155796
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153949_ __tmp155796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155797
                                                     __tmp155795))))
                                        (declare (not safe))
                                        (cons __tmp155799 __tmp155794))))
                                 (declare (not safe))
                                 (cons __tmp155802 __tmp155793))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155792 _stx153892_)))
                      _$e153954_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153890_
                            __checked?154772
                            __klass154768
                            '#f))
                         (let ((__tmp155744
                                (let* ((_$obj153959_
                                        (let ((__tmp155745 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155745)))
                                       (__tmp155746
                                        (let ((__tmp155788
                                               (let ((__tmp155789
                                                      (let ((__tmp155791
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153959_ '())))
                    (__tmp155790
                     (let () (declare (not safe)) (cons _object153949_ '()))))
                (declare (not safe))
                (cons __tmp155791 __tmp155790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155789 '())))
                                              (__tmp155747
                                               (let ((__tmp155748
                                                      (let ((__tmp155749
                                                             (let ((__tmp155780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155781
                                   (let ((__tmp155785
                                          (let ((__tmp155786
                                                 (let ((__tmp155787
                                                        (##structure-ref
                                                         _klass153945_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155787 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155786)))
                                         (__tmp155782
                                          (let ((__tmp155783
                                                 (let ((__tmp155784
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153959_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155784))))
                                            (declare (not safe))
                                            (cons __tmp155783 '()))))
                                     (declare (not safe))
                                     (cons __tmp155785 __tmp155782))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155781)))
                           (__tmp155750
                            (let ((__tmp155768
                                   (let ((__tmp155769
                                          (let ((__tmp155777
                                                 (let ((__tmp155778
                                                        (let ((__tmp155779
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153890_
                          __id154770
                          __klass154768
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155779 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155778)))
                                                (__tmp155770
                                                 (let ((__tmp155775
                                                        (let ((__tmp155776
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153947_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155776)))
               (__tmp155771
                (let ((__tmp155773
                       (let ((__tmp155774
                              (let ()
                                (declare (not safe))
                                (cons _$obj153959_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155774)))
                      (__tmp155772
                       (let () (declare (not safe)) (cons _value153951_ '()))))
                  (declare (not safe))
                  (cons __tmp155773 __tmp155772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155775
                                                         __tmp155771))))
                                            (declare (not safe))
                                            (cons __tmp155777 __tmp155770))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155769)))
                                  (__tmp155751
                                   (let ((__tmp155752
                                          (let ((__tmp155753
                                                 (let ((__tmp155766
                                                        (let ((__tmp155767
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155767)))
               (__tmp155754
                (let ((__tmp155763
                       (let ((__tmp155764
                              (let ((__tmp155765
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153890_
                                        __id154770
                                        __klass154768
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155765 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155764)))
                      (__tmp155755
                       (let ((__tmp155761
                              (let ((__tmp155762
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153959_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155762)))
                             (__tmp155756
                              (let ((__tmp155758
                                     (let ((__tmp155759
                                            (let ((__tmp155760
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153890_
                                                      __slot154771
                                                      __klass154768
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155760 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155759)))
                                    (__tmp155757
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153951_ '()))))
                                (declare (not safe))
                                (cons __tmp155758 __tmp155757))))
                         (declare (not safe))
                         (cons __tmp155761 __tmp155756))))
                  (declare (not safe))
                  (cons __tmp155763 __tmp155755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155766
                                                         __tmp155754))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155753))))
                                     (declare (not safe))
                                     (cons __tmp155752 '()))))
                              (declare (not safe))
                              (cons __tmp155768 __tmp155751))))
                       (declare (not safe))
                       (cons __tmp155780 __tmp155750))))
                (declare (not safe))
                (cons '%#if __tmp155749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155748 '()))))
                                          (declare (not safe))
                                          (cons __tmp155788 __tmp155747))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155746))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155744 _stx153892_))
                         (let ((__tmp155734
                                (let ((__tmp155735
                                       (let ((__tmp155742
                                              (let ((__tmp155743
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155743)))
                                             (__tmp155736
                                              (let ((__tmp155737
                                                     (let ((__tmp155739
                                                            (let ((__tmp155740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155741
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153890_
                                     __slot154771
                                     __klass154768
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155741 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155740)))
                   (__tmp155738
                    (let () (declare (not safe)) (cons _value153951_ '()))))
               (declare (not safe))
               (cons __tmp155739 __tmp155738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153949_
                                                      __tmp155737))))
                                         (declare (not safe))
                                         (cons __tmp155742 __tmp155736))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155735))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155734
                            _stx153892_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153903153925_
                                           _hd153900153917_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153895153909_
                                             _g153896153912_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153895153909_ _g153896153912_)))))
                          (let ()
                            (declare (not safe))
                            (_g153895153909_ _g153896153912_))))))
              (declare (not safe))
              (_g153894153961_ _args153893_))))))
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
      (lambda (_self153723_ _ctx153724_ _stx153725_ _args153726_)
        (let* ((_self153727153736_ _self153723_)
               (_E153729153740_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153727153736_))))
               (_K153730153747_
                (lambda (_inline153743_ _dispatch153744_ _arity153745_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153723_ _args153726_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153725_
                         _arity153745_)))
                  (if _inline153743_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155830
                               (let ((__tmp155831
                                      (_inline153743_ _stx153725_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155831
                                  _stx153725_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153724_ __tmp155830)))
                      (if _dispatch153744_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153744_))
                            (let ((__tmp155825
                                   (let ((__tmp155826
                                          (let ((__tmp155827
                                                 (let ((__tmp155828
                                                        (let ((__tmp155829
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153744_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155828
                                                         _args153726_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155827))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155826
                                      _stx153725_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153724_ __tmp155825)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153724_ _stx153725_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153727153736_ 'gxc#!lambda::t))
              (let* ((_e153731153750_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153727153736_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153732153753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153727153736_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153756_ _e153732153753_)
                     (_e153733153758_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153727153736_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153761_ _e153733153758_)
                     (_e153734153763_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153727153736_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153766_ _e153734153763_))
                (declare (not safe))
                (_K153730153747_
                 _inline153766_
                 _dispatch153761_
                 _arity153756_))
              (let () (declare (not safe)) (_E153729153740_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153561_ _ctx153562_ _stx153563_ _args153564_)
        (let* ((_self153565153572_ _self153561_)
               (_E153567153576_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153565153572_))))
               (_K153568153590_
                (lambda (_clauses153579_)
                  (let ((_$e153585_
                         (let ((__tmp155832
                                (lambda (_g153580153582_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153580153582_
                                     _args153564_)))))
                           (declare (not safe))
                           (find __tmp155832 _clauses153579_))))
                    (if _$e153585_
                        ((lambda (_clause153588_)
                           (let ((__method155046
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153588_
                                     'optimize-call))))
                             (if __method155046
                                 (__method155046
                                  _clause153588_
                                  _ctx153562_
                                  _stx153563_
                                  _args153564_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153588_
                                          'optimize-call)))))
                         _$e153585_)
                        (let ((__tmp155833
                               (map gxc#!lambda-arity _clauses153579_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153563_
                           __tmp155833)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153565153572_
                 'gxc#!case-lambda::t))
              (let* ((_e153569153593_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153565153572_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153570153596_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153565153572_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153599_ _e153570153596_))
                (declare (not safe))
                (_K153568153590_ _clauses153599_))
              (let () (declare (not safe)) (_E153567153576_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153375_ _args153376_)
        (let* ((_self153377153384_ _self153375_)
               (_E153379153388_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153377153384_))))
               (_K153380153428_
                (lambda (_arity153391_)
                  (let* ((_arity153392153401_ _arity153391_)
                         (_E153395153405_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153392153401_)))))
                    (let ((_K153399153425_
                           (lambda ()
                             (fx= (length _args153376_) _arity153391_)))
                          (_K153396153411_
                           (lambda (_arity153409_)
                             (fx>= (length _args153376_) _arity153409_))))
                      (let ((_try-match153394153421_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153392153401_))
                                   (let ((_tl153398153416_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153392153401_)))
                                         (_hd153397153414_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153392153401_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153398153416_))
                                         (let ((_arity153419_
                                                _hd153397153414_))
                                           (declare (not safe))
                                           (_K153396153411_ _arity153419_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153395153405_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153395153405_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153392153401_))
                            (let () (declare (not safe)) (_K153399153425_))
                            (let ()
                              (declare (not safe))
                              (_try-match153394153421_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153377153384_ 'gxc#!lambda::t))
              (let* ((_e153381153431_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153377153384_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153382153434_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153377153384_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153437_ _e153382153434_))
                (declare (not safe))
                (_K153380153428_ _arity153437_))
              (let () (declare (not safe)) (_E153379153388_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self153259_ _ctx153260_ _stx153261_ _args153262_)
        (let* ((_self153263153271_ _self153259_)
               (_E153265153275_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153263153271_))))
               (_K153266153359_
                (lambda (_dispatch153278_ _table153279_)
                  (let* ((_g153280153289_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch153278_)))
                         (_else153282153297_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch153278_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx153260_ _stx153261_))))
                         (_K153284153343_
                          (lambda (_main153300_ _keys153301_)
                            (let ((_g155834_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx153261_
                                      _args153262_))))
                              (begin
                                (let ((_g155835_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155834_)
                                             (##vector-length _g155834_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155835_ 2)))
                                      (error "Context expects 2 values"
                                             _g155835_)))
                                (let ((_pargs153303_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155834_ 0)))
                                      (_kwargs153304_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155834_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main153300_))
                                    (if _table153279_
                                        (let ((_xargs153311_
                                               (map (lambda (_key153306_)
                                                      (let ((_$e153308_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key153306_ _kwargs153304_))))
                (if _$e153308_ (values _$e153308_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys153301_)))
                                          (for-each
                                           (lambda (_kw153313_)
                                             (if (memq (car _kw153313_)
                                                       _keys153301_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx153261_
                                                    _keys153301_
                                                    _kw153313_))))
                                           _kwargs153304_)
                                          (let ((__tmp155887
                                                 (let ((__tmp155888
                                                        (let ((__tmp155889
                                                               (let ((__tmp155894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155895
                                     (let ()
                                       (declare (not safe))
                                       (cons _main153300_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155895)))
                             (__tmp155890
                              (let ((__tmp155892
                                     (let ((__tmp155893
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155893)))
                                    (__tmp155891
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs153303_
                                               _xargs153311_))))
                                (declare (not safe))
                                (cons __tmp155892 __tmp155891))))
                         (declare (not safe))
                         (cons __tmp155894 __tmp155890))))
                  (declare (not safe))
                  (cons '%#call __tmp155889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155888
                                                    _stx153261_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153260_
                                             __tmp155887)))
                                        (let* ((_kwt153315_
                                                (let ((__tmp155836
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155836)))
                                               (_kwvars153318_
                                                (map (lambda (_g155837_)
                                                       (let ((__tmp155838
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155838)))
                                                     _kwargs153304_))
                                               (_kwbind153323_
                                                (map (lambda (_kw153320_
                                                              _kwvar153321_)
                                                       (let ((__tmp155841
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153321_ '())))
                     (__tmp155839
                      (let ((__tmp155840 (cdr _kw153320_)))
                        (declare (not safe))
                        (cons __tmp155840 '()))))
                 (declare (not safe))
                 (cons __tmp155841 __tmp155839)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153304_
                                                     _kwvars153318_))
                                               (_kwset153328_
                                                (map (lambda (_kw153325_
                                                              _kwvar153326_)
                                                       (let ((__tmp155842
                                                              (let ((__tmp155843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155851
                                    (let ((__tmp155852
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153315_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155852)))
                                   (__tmp155844
                                    (let ((__tmp155848
                                           (let ((__tmp155849
                                                  (let ((__tmp155850
                                                         (car _kw153325_)))
                                                    (declare (not safe))
                                                    (cons __tmp155850 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155849)))
                                          (__tmp155845
                                           (let ((__tmp155846
                                                  (let ((__tmp155847
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155847))))
                                             (declare (not safe))
                                             (cons __tmp155846 '()))))
                                      (declare (not safe))
                                      (cons __tmp155848 __tmp155845))))
                               (declare (not safe))
                               (cons __tmp155851 __tmp155844))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155843))))
                 (declare (not safe))
                 (cons '%#call __tmp155842)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153304_
                                                     _kwvars153318_))
                                               (_xkwargs153333_
                                                (map (lambda (_kw153330_
                                                              _kwvar153331_)
                                                       (let ((__tmp155855
                                                              (car _kw153330_))
                                                             (__tmp155853
                                                              (let ((__tmp155854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153331_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155854))))
                 (declare (not safe))
                 (cons __tmp155855 __tmp155853)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153304_
                                                     _kwvars153318_))
                                               (_xargs153340_
                                                (map (lambda (_key153335_)
                                                       (let ((_$e153337_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153335_ _xkwargs153333_))))
                 (if _$e153337_ (values _$e153337_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys153301_)))
                                          (let ((__tmp155856
                                                 (let ((__tmp155857
                                                        (let ((__tmp155858
                                                               (let ((__tmp155859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155860
                                     (let ((__tmp155861
                                            (let ((__tmp155875
                                                   (let ((__tmp155876
                                                          (let ((__tmp155886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153315_ '())))
                        (__tmp155877
                         (let ((__tmp155878
                                (let ((__tmp155879
                                       (let ((__tmp155880
                                              (let ((__tmp155881
                                                     (let ((__tmp155883
                                                            (let ((__tmp155884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155885 (length _kwargs153304_)))
                             (declare (not safe))
                             (cons __tmp155885 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155884)))
                   (__tmp155882
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155883 __tmp155882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155881))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155880))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155879
                                   _stx153261_))))
                           (declare (not safe))
                           (cons __tmp155878 '()))))
                    (declare (not safe))
                    (cons __tmp155886 __tmp155877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155876 '())))
                                                  (__tmp155862
                                                   (let ((__tmp155863
                                                          (let ((__tmp155864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155865
                                (let ((__tmp155866
                                       (let ((__tmp155867
                                              (let ((__tmp155868
                                                     (let ((__tmp155873
                                                            (let ((__tmp155874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main153300_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155874)))
                   (__tmp155869
                    (let ((__tmp155871
                           (let ((__tmp155872
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153315_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155872)))
                          (__tmp155870
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs153303_ _xargs153340_))))
                      (declare (not safe))
                      (cons __tmp155871 __tmp155870))))
               (declare (not safe))
               (cons __tmp155873 __tmp155869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155868))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155867
                                          _stx153261_))))
                                  (declare (not safe))
                                  (cons __tmp155866 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155865 _kwset153328_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155863 '()))))
                                              (declare (not safe))
                                              (cons __tmp155875 __tmp155862))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155861))))
                                (declare (not safe))
                                (cons __tmp155860 '()))))
                         (declare (not safe))
                         (cons _kwbind153323_ __tmp155859))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155857
                                                    _stx153261_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153260_
                                             __tmp155856)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g153280153289_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e153285153346_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153280153289_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e153286153349_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153280153289_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153352_ _e153286153349_)
                               (_e153287153354_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153280153289_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153357_ _e153287153354_))
                          (declare (not safe))
                          (_K153284153343_ _main153357_ _keys153352_))
                        (let () (declare (not safe)) (_else153282153297_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153263153271_
                 'gxc#!kw-lambda::t))
              (let* ((_e153267153362_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153263153271_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153268153365_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153263153271_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153368_ _e153268153365_)
                     (_e153269153370_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153263153271_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153373_ _e153269153370_))
                (declare (not safe))
                (_K153266153359_ _dispatch153373_ _table153368_))
              (let () (declare (not safe)) (_E153265153275_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152872_ _args152873_)
        (let _lp152875_ ((_rest152877_ _args152873_)
                         (_pargs152878_ '())
                         (_kwargs152879_ '()))
          (let* ((___stx154926154927_ _rest152877_)
                 (_g152885152937_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154926154927_)))))
            (let ((___kont154928154929_
                   (lambda (_L153116_ _L153117_)
                     (let ((__tmp155896
                            (let ()
                              (declare (not safe))
                              (cons _L153117_ _pargs152878_))))
                       (declare (not safe))
                       (_lp152875_ _L153116_ __tmp155896 _kwargs152879_))))
                  (___kont154930154931_
                   (lambda (_L153062_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L153062_ _pargs152878_))
                             (reverse _kwargs152879_))))
                  (___kont154932154933_
                   (lambda (_L153009_ _L153010_ _L153011_)
                     (let ((_kw153028_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L153011_))))
                       (if (assq _kw153028_ _kwargs152879_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152872_
                              _kw153028_))
                           (let ((__tmp155897
                                  (let ((__tmp155898
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw153028_ _L153010_))))
                                    (declare (not safe))
                                    (cons __tmp155898 _kwargs152879_))))
                             (declare (not safe))
                             (_lp152875_
                              _L153009_
                              _pargs152878_
                              __tmp155897))))))
                  (___kont154934154935_
                   (lambda (_L152957_ _L152958_)
                     (let ((__tmp155899
                            (let ()
                              (declare (not safe))
                              (cons _L152958_ _pargs152878_))))
                       (declare (not safe))
                       (_lp152875_ _L152957_ __tmp155899 _kwargs152879_))))
                  (___kont154936154937_
                   (lambda ()
                     (values (reverse _pargs152878_)
                             (reverse _kwargs152879_)))))
              (let* ((_g152884152944_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154926154927_))
                            (___kont154936154937_)
                            (let () (declare (not safe)) (_g152885152937_)))))
                     (___match155033155034_
                      (lambda (_e152918152977_
                               _hd152917152980_
                               _tl152916152982_
                               _e152921152985_
                               _hd152920152988_
                               _tl152919152990_
                               _e152924152993_
                               _hd152923152996_
                               _tl152922152998_
                               _e152927153001_
                               _hd152926153004_
                               _tl152925153006_)
                        (let ((_L153009_ _tl152925153006_)
                              (_L153010_ _hd152926153004_)
                              (_L153011_ _hd152923152996_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L153011_))
                              (___kont154932154933_
                               _L153009_
                               _L153010_
                               _L153011_)
                              (___kont154934154935_
                               _tl152916152982_
                               _hd152917152980_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154926154927_))
                    (let ((_e152891153081_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154926154927_))))
                      (let ((_tl152889153086_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152891153081_)))
                            (_hd152890153084_
                             (let ()
                               (declare (not safe))
                               (##car _e152891153081_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152890153084_))
                            (let ((_e152894153089_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152890153084_))))
                              (let ((_tl152892153094_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152894153089_)))
                                    (_hd152893153092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152894153089_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152893153092_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152893153092_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152892153094_))
                                            (let ((_e152897153097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152892153094_))))
                                              (let ((_tl152895153102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152897153097_)))
                                                    (_hd152896153100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152897153097_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152896153100_))
                                                    (let ((_e152898153105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152896153100_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152898153105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152895153102_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152889153086_))
                          (let ((_e152901153108_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152889153086_))))
                            (let ((_tl152899153113_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152901153108_)))
                                  (_hd152900153111_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152901153108_))))
                              (___kont154928154929_
                               _tl152899153113_
                               _hd152900153111_)))
                          (___kont154934154935_
                           _tl152889153086_
                           _hd152890153084_))
                      (___kont154934154935_ _tl152889153086_ _hd152890153084_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152898153105_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152895153102_))
                          (___kont154930154931_ _tl152889153086_)
                          (___kont154934154935_
                           _tl152889153086_
                           _hd152890153084_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152895153102_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152889153086_))
                              (let ((_e152927153001_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152889153086_))))
                                (let ((_tl152925153006_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152927153001_)))
                                      (_hd152926153004_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152927153001_))))
                                  (___match155033155034_
                                   _e152891153081_
                                   _hd152890153084_
                                   _tl152889153086_
                                   _e152894153089_
                                   _hd152893153092_
                                   _tl152892153094_
                                   _e152897153097_
                                   _hd152896153100_
                                   _tl152895153102_
                                   _e152927153001_
                                   _hd152926153004_
                                   _tl152925153006_)))
                              (___kont154934154935_
                               _tl152889153086_
                               _hd152890153084_))
                          (___kont154934154935_
                           _tl152889153086_
                           _hd152890153084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152895153102_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152889153086_))
                                                            (let ((_e152927153001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152889153086_))))
                      (let ((_tl152925153006_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152927153001_)))
                            (_hd152926153004_
                             (let ()
                               (declare (not safe))
                               (##car _e152927153001_))))
                        (___match155033155034_
                         _e152891153081_
                         _hd152890153084_
                         _tl152889153086_
                         _e152894153089_
                         _hd152893153092_
                         _tl152892153094_
                         _e152897153097_
                         _hd152896153100_
                         _tl152895153102_
                         _e152927153001_
                         _hd152926153004_
                         _tl152925153006_)))
                    (___kont154934154935_ _tl152889153086_ _hd152890153084_))
                (___kont154934154935_ _tl152889153086_ _hd152890153084_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154934154935_
                                             _tl152889153086_
                                             _hd152890153084_))
                                        (___kont154934154935_
                                         _tl152889153086_
                                         _hd152890153084_))
                                    (___kont154934154935_
                                     _tl152889153086_
                                     _hd152890153084_))))
                            (___kont154934154935_
                             _tl152889153086_
                             _hd152890153084_))))
                    (let () (declare (not safe)) (_g152884152944_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152867_ _ctx152868_ _stx152869_ _args152870_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152868_ _stx152869_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
