(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710776836)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp155016 (list gxc#::basic-xform::t))
            (__tmp155014
             (let ((__tmp155015
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp155015 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp155016
         '()
         __tmp155014
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args154717_
        (apply make-instance gxc#::optimize-call::t _$args154717_)))
    (define gxc#::optimize-call-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::optimize-call::t '%#call gxc#optimize-call%))
         (let () (declare (not safe)) (seal-class! gxc#::optimize-call::t)))))
    (define gxc#apply-optimize-call
      (lambda (_stx154709_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self154712_
                (let ((__obj155011
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj155011))
               (__tmp155017
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self154712_ _stx154709_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp155017
           gxc#current-compile-method
           _self154712_))))
    (define gxc#optimize-call%
      (lambda (_self154563_ _stx154564_)
        (let* ((___stx154762154763_ _stx154564_)
               (_g154567154587_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx154762154763_)))))
          (let ((___kont154764154765_
                 (lambda (_L154631_ _L154632_)
                   (let* ((_rator-id154650_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L154632_)))
                          (_rator-type154652_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id154650_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type154652_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp155018
                                  (##structure-ref
                                   _rator-type154652_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id154650_
                              '" => "
                              _rator-type154652_
                              '" "
                              __tmp155018))
                           (let ((_optimized154655_
                                  (let ((__method155012
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type154652_
                                            'optimize-call))))
                                    (if __method155012
                                        (__method155012
                                         _rator-type154652_
                                         _self154563_
                                         _stx154564_
                                         _L154631_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type154652_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type154652_))
                                 _optimized154655_
                                 (let* ((___stx154744154745_ _optimized154655_)
                                        (_g154658154668_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx154744154745_)))))
                                   (let ((___kont154746154747_
                                          (lambda (_L154688_)
                                            (let ((__tmp155019
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L154688_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp155019
                                               _stx154564_))))
                                         (___kont154748154749_
                                          (lambda () _optimized154655_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx154744154745_))
                                         (let ((_e154663154680_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx154744154745_))))
                                           (let ((_tl154661154685_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e154663154680_)))
                                                 (_hd154662154683_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e154663154680_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd154662154683_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd154662154683_))
                                                     (___kont154746154747_
                                                      _tl154661154685_)
                                                     (___kont154748154749_))
                                                 (___kont154748154749_))))
                                         (___kont154748154749_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type154652_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self154563_ _stx154564_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx154564_
                                _rator-type154652_)))))))
                (___kont154766154767_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self154563_ _stx154564_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx154762154763_))
                (let ((_e154573154599_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx154762154763_))))
                  (let ((_tl154571154604_
                         (let () (declare (not safe)) (##cdr _e154573154599_)))
                        (_hd154572154602_
                         (let ()
                           (declare (not safe))
                           (##car _e154573154599_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl154571154604_))
                        (let ((_e154576154607_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154571154604_))))
                          (let ((_tl154574154612_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154576154607_)))
                                (_hd154575154610_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154576154607_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd154575154610_))
                                (let ((_e154579154615_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd154575154610_))))
                                  (let ((_tl154577154620_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e154579154615_)))
                                        (_hd154578154618_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e154579154615_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd154578154618_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd154578154618_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl154577154620_))
                                                (let ((_e154582154623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl154577154620_))))
                                                  (let ((_tl154580154628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154582154623_)))
                                                        (_hd154581154626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154582154623_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl154580154628_))
                                                        (___kont154764154765_
                                                         _tl154574154612_
                                                         _hd154581154626_)
                                                        (___kont154766154767_))))
                                                (___kont154766154767_))
                                            (___kont154766154767_))
                                        (___kont154766154767_))))
                                (___kont154766154767_))))
                        (___kont154766154767_))))
                (___kont154766154767_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self154516_ _ctx154517_ _stx154518_ _args154519_)
        (let* ((_g154521154531_
                (lambda (_g154522154528_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154522154528_))))
               (_g154520154560_
                (lambda (_g154522154534_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154522154534_))
                      (let ((_e154526154536_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154522154534_))))
                        (let ((_hd154525154539_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154526154536_)))
                              (_tl154524154541_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154526154536_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154524154541_))
                              ((lambda (_L154544_)
                                 (let* ((_klass154555_
                                         (let ((__tmp155020
                                                (##structure-ref
                                                 _self154516_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154518_
                                            __tmp155020)))
                                        (_object154557_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154517_
                                            _L154544_))))
                                   (if (##structure-ref
                                        _klass154555_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155036
                                              (let ((__tmp155037
                                                     (let ((__tmp155039
                                                            (let ((__tmp155040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155041
                                  (##structure-ref
                                   _klass154555_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155041 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155040)))
                   (__tmp155038
                    (let () (declare (not safe)) (cons _object154557_ '()))))
               (declare (not safe))
               (cons __tmp155039 __tmp155038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp155037))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155036
                                          _stx154518_))
                                       (if (##structure-ref
                                            _klass154555_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155030
                                                  (let ((__tmp155031
                                                         (let ((__tmp155033
                                                                (let ((__tmp155034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155035
                                      (##structure-ref
                                       _klass154555_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155035 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155034)))
                       (__tmp155032
                        (let ()
                          (declare (not safe))
                          (cons _object154557_ '()))))
                   (declare (not safe))
                   (cons __tmp155033 __tmp155032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp155031))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155030
                                              _stx154518_))
                                           (let ((__tmp155021
                                                  (let ((__tmp155022
                                                         (let ((__tmp155028
                                                                (let ((__tmp155029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155029)))
                       (__tmp155023
                        (let ((__tmp155025
                               (let ((__tmp155026
                                      (let ((__tmp155027
                                             (##structure-ref
                                              _self154516_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp155027 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp155026)))
                              (__tmp155024
                               (let ()
                                 (declare (not safe))
                                 (cons _object154557_ '()))))
                          (declare (not safe))
                          (cons __tmp155025 __tmp155024))))
                   (declare (not safe))
                   (cons __tmp155028 __tmp155023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp155022))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155021
                                              _stx154518_))))))
                               _hd154525154539_)
                              (let ()
                                (declare (not safe))
                                (_g154521154531_ _g154522154534_)))))
                      (let ()
                        (declare (not safe))
                        (_g154521154531_ _g154522154534_))))))
          (declare (not safe))
          (_g154520154560_ _args154519_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass154719 __method-table154720)
        (let ((__id154721
               (let ((__slot154722
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154719 'id))))
                 (if __slot154722
                     __slot154722
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154516_ _ctx154517_ _stx154518_ _args154519_)
            (let* ((_g154521154531_
                    (lambda (_g154522154528_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154522154528_))))
                   (_g154520154560_
                    (lambda (_g154522154534_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154522154534_))
                          (let ((_e154526154536_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154522154534_))))
                            (let ((_hd154525154539_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154526154536_)))
                                  (_tl154524154541_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154526154536_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154524154541_))
                                  ((lambda (_L154544_)
                                     (let* ((_klass154555_
                                             (let ((__tmp155042
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154516_
                                                       __id154721
                                                       __klass154719
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154518_
                                                __tmp155042)))
                                            (_object154557_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154517_
                                                _L154544_))))
                                       (if (##structure-ref
                                            _klass154555_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155058
                                                  (let ((__tmp155059
                                                         (let ((__tmp155061
                                                                (let ((__tmp155062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155063
                                      (##structure-ref
                                       _klass154555_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155063 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp155062)))
                       (__tmp155060
                        (let ()
                          (declare (not safe))
                          (cons _object154557_ '()))))
                   (declare (not safe))
                   (cons __tmp155061 __tmp155060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp155059))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155058
                                              _stx154518_))
                                           (if (##structure-ref
                                                _klass154555_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155052
                                                      (let ((__tmp155053
                                                             (let ((__tmp155055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155056
                                   (let ((__tmp155057
                                          (##structure-ref
                                           _klass154555_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155057 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp155056)))
                           (__tmp155054
                            (let ()
                              (declare (not safe))
                              (cons _object154557_ '()))))
                       (declare (not safe))
                       (cons __tmp155055 __tmp155054))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp155053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155052
                                                  _stx154518_))
                                               (let ((__tmp155043
                                                      (let ((__tmp155044
                                                             (let ((__tmp155050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155051
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155051)))
                           (__tmp155045
                            (let ((__tmp155047
                                   (let ((__tmp155048
                                          (let ((__tmp155049
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self154516_
                                                    __id154721
                                                    __klass154719
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp155049 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp155048)))
                                  (__tmp155046
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154557_ '()))))
                              (declare (not safe))
                              (cons __tmp155047 __tmp155046))))
                       (declare (not safe))
                       (cons __tmp155050 __tmp155045))))
                (declare (not safe))
                (cons '%#call __tmp155044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155043
                                                  _stx154518_))))))
                                   _hd154525154539_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154521154531_ _g154522154534_)))))
                          (let ()
                            (declare (not safe))
                            (_g154521154531_ _g154522154534_))))))
              (declare (not safe))
              (_g154520154560_ _args154519_))))))
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
      (lambda (_self154231_ _ctx154232_ _stx154233_ _args154234_)
        (let* ((_klass154236_
                (let ((__tmp155064
                       (##structure-ref _self154231_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx154233_ __tmp155064)))
               (_fields154238_
                (length (##structure-ref _klass154236_ '5 gxc#!class::t '#f)))
               (_args154244_
                (map (lambda (_g154239154241_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx154232_ _g154239154241_)))
                     _args154234_))
               (_inline-make-object154246_
                (let ((__tmp155065
                       (let ((__tmp155071
                              (let ((__tmp155072
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155072)))
                             (__tmp155066
                              (let ((__tmp155068
                                     (let ((__tmp155069
                                            (let ((__tmp155070
                                                   (##structure-ref
                                                    _self154231_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155070 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155069)))
                                    (__tmp155067
                                     (make-list _fields154238_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp155068 __tmp155067))))
                         (declare (not safe))
                         (cons __tmp155071 __tmp155066))))
                  (declare (not safe))
                  (cons '%#call __tmp155065))))
          (let ((_$e154249_
                 (##structure-ref _klass154236_ '6 gxc#!class::t '#f)))
            (if _$e154249_
                ((lambda (_ctor154252_)
                   (let ((_$obj154254_
                          (let ((__tmp155172 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp155172)))
                         (_ctor-impl154255_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass154236_
                             _ctor154252_))))
                     (let ((__tmp155173
                            (let ((__tmp155174
                                   (let ((__tmp155242
                                          (let ((__tmp155243
                                                 (let ((__tmp155245
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj154254_
                                                                '())))
                                                       (__tmp155244
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object154246_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp155245
                                                         __tmp155244))))
                                            (declare (not safe))
                                            (cons __tmp155243 '())))
                                         (__tmp155175
                                          (let ((__tmp155176
                                                 (let ((__tmp155177
                                                        (let ((__tmp155181
                                                               (if _ctor-impl154255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155236
                                  (let ((__tmp155240
                                         (let ((__tmp155241
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl154255_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155241)))
                                        (__tmp155237
                                         (let ((__tmp155238
                                                (let ((__tmp155239
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj154254_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155239))))
                                           (declare (not safe))
                                           (cons __tmp155238 _args154244_))))
                                    (declare (not safe))
                                    (cons __tmp155240 __tmp155237))))
                             (declare (not safe))
                             (cons '%#call __tmp155236))
                           (let* ((_$ctor154257_
                                   (let ((__tmp155182 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp155182)))
                                  (__tmp155183
                                   (let ((__tmp155218
                                          (let ((__tmp155219
                                                 (let ((__tmp155235
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor154257_
                                                                '())))
                                                       (__tmp155220
                                                        (let ((__tmp155221
                                                               (let ((__tmp155222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155233
                                     (let ((__tmp155234
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155234)))
                                    (__tmp155223
                                     (let ((__tmp155230
                                            (let ((__tmp155231
                                                   (let ((__tmp155232
                                                          (##structure-ref
                                                           _self154231_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp155232 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155231)))
                                           (__tmp155224
                                            (let ((__tmp155228
                                                   (let ((__tmp155229
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155229)))
                                                  (__tmp155225
                                                   (let ((__tmp155226
                                                          (let ((__tmp155227
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor154252_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155226 '()))))
                                              (declare (not safe))
                                              (cons __tmp155228 __tmp155225))))
                                       (declare (not safe))
                                       (cons __tmp155230 __tmp155224))))
                                (declare (not safe))
                                (cons __tmp155233 __tmp155223))))
                         (declare (not safe))
                         (cons '%#call __tmp155222))))
                  (declare (not safe))
                  (cons __tmp155221 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155235
                                                         __tmp155220))))
                                            (declare (not safe))
                                            (cons __tmp155219 '())))
                                         (__tmp155184
                                          (let ((__tmp155185
                                                 (let ((__tmp155186
                                                        (let ((__tmp155216
                                                               (let ((__tmp155217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor154257_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155217)))
                      (__tmp155187
                       (let ((__tmp155209
                              (let ((__tmp155210
                                     (let ((__tmp155214
                                            (let ((__tmp155215
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor154257_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155215)))
                                           (__tmp155211
                                            (let ((__tmp155212
                                                   (let ((__tmp155213
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155213))))
                                              (declare (not safe))
                                              (cons __tmp155212
                                                    _args154244_))))
                                       (declare (not safe))
                                       (cons __tmp155214 __tmp155211))))
                                (declare (not safe))
                                (cons '%#call __tmp155210)))
                             (__tmp155188
                              (let ((__tmp155189
                                     (let ((__tmp155190
                                            (let ((__tmp155207
                                                   (let ((__tmp155208
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155208)))
                                                  (__tmp155191
                                                   (let ((__tmp155205
                                                          (let ((__tmp155206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp155206)))
                 (__tmp155192
                  (let ((__tmp155203
                         (let ((__tmp155204
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155204)))
                        (__tmp155193
                         (let ((__tmp155200
                                (let ((__tmp155201
                                       (let ((__tmp155202
                                              (##structure-ref
                                               _self154231_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155202 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155201)))
                               (__tmp155194
                                (let ((__tmp155198
                                       (let ((__tmp155199
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155199)))
                                      (__tmp155195
                                       (let ((__tmp155196
                                              (let ((__tmp155197
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor154252_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp155197))))
                                         (declare (not safe))
                                         (cons __tmp155196 '()))))
                                  (declare (not safe))
                                  (cons __tmp155198 __tmp155195))))
                           (declare (not safe))
                           (cons __tmp155200 __tmp155194))))
                    (declare (not safe))
                    (cons __tmp155203 __tmp155193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155205
                                                           __tmp155192))))
                                              (declare (not safe))
                                              (cons __tmp155207 __tmp155191))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155190))))
                                (declare (not safe))
                                (cons __tmp155189 '()))))
                         (declare (not safe))
                         (cons __tmp155209 __tmp155188))))
                  (declare (not safe))
                  (cons __tmp155216 __tmp155187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp155186))))
                                            (declare (not safe))
                                            (cons __tmp155185 '()))))
                                     (declare (not safe))
                                     (cons __tmp155218 __tmp155184))))
                             (declare (not safe))
                             (cons '%#let-values __tmp155183))))
                      (__tmp155178
                       (let ((__tmp155179
                              (let ((__tmp155180
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj154254_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155180))))
                         (declare (not safe))
                         (cons __tmp155179 '()))))
                  (declare (not safe))
                  (cons __tmp155181 __tmp155178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp155177))))
                                            (declare (not safe))
                                            (cons __tmp155176 '()))))
                                     (declare (not safe))
                                     (cons __tmp155242 __tmp155175))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155174))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155173 _stx154233_))))
                 _$e154249_)
                (let ((_$e154259_
                       (##structure-ref _klass154236_ '10 gxc#!class::t '#f)))
                  (if _$e154259_
                      ((lambda (_metaclass154262_)
                         (let* ((_$obj154264_
                                 (let ((__tmp155134 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155134)))
                                (_metakons154266_
                                 (let ((__tmp155135
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx154233_
                                           _metaclass154262_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp155135
                                    'instance-init!))))
                           (let ((__tmp155136
                                  (let ((__tmp155137
                                         (let ((__tmp155168
                                                (let ((__tmp155169
                                                       (let ((__tmp155171
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154264_ '())))
                     (__tmp155170
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object154246_ '()))))
                 (declare (not safe))
                 (cons __tmp155171 __tmp155170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155169 '())))
                                               (__tmp155138
                                                (let ((__tmp155139
                                                       (let ((__tmp155140
                                                              (let ((__tmp155144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons154266_
                                 (let ((__tmp155158
                                        (let ((__tmp155166
                                               (let ((__tmp155167
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons154266_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155167)))
                                              (__tmp155159
                                               (let ((__tmp155163
                                                      (let ((__tmp155164
                                                             (let ((__tmp155165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154231_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155165 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155164)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155160
                                                      (let ((__tmp155161
                                                             (let ((__tmp155162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj154264_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155162))))
                (declare (not safe))
                (cons __tmp155161 _args154244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155163
                                                       __tmp155160))))
                                          (declare (not safe))
                                          (cons __tmp155166 __tmp155159))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155158))
                                 (let ((__tmp155145
                                        (let ((__tmp155156
                                               (let ((__tmp155157
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155157)))
                                              (__tmp155146
                                               (let ((__tmp155153
                                                      (let ((__tmp155154
                                                             (let ((__tmp155155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self154231_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp155155 '()))))
                (declare (not safe))
                (cons '%#ref __tmp155154)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp155147
                                                      (let ((__tmp155151
                                                             (let ((__tmp155152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp155152)))
                    (__tmp155148
                     (let ((__tmp155149
                            (let ((__tmp155150
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154264_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155150))))
                       (declare (not safe))
                       (cons __tmp155149 _args154244_))))
                (declare (not safe))
                (cons __tmp155151 __tmp155148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155153
                                                       __tmp155147))))
                                          (declare (not safe))
                                          (cons __tmp155156 __tmp155146))))
                                   (declare (not safe))
                                   (cons '%#call __tmp155145))))
                            (__tmp155141
                             (let ((__tmp155142
                                    (let ((__tmp155143
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj154264_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155143))))
                               (declare (not safe))
                               (cons __tmp155142 '()))))
                        (declare (not safe))
                        (cons __tmp155144 __tmp155141))))
                 (declare (not safe))
                 (cons '%#begin __tmp155140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155139 '()))))
                                           (declare (not safe))
                                           (cons __tmp155168 __tmp155138))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp155137))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp155136 _stx154233_))))
                       _$e154259_)
                      (if (##structure-ref _klass154236_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args154244_) _fields154238_)
                              (let ((__tmp155126
                                     (let ((__tmp155127
                                            (let ((__tmp155132
                                                   (let ((__tmp155133
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155133)))
                                                  (__tmp155128
                                                   (let ((__tmp155129
                                                          (let ((__tmp155130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155131
                                (##structure-ref
                                 _self154231_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp155131 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155129
                                                           _args154244_))))
                                              (declare (not safe))
                                              (cons __tmp155132 __tmp155128))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155127))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp155126
                                 _stx154233_))
                              (let ((__tmp155125
                                     (##structure-ref
                                      _self154231_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp155124
                                     (length (##structure-ref
                                              _klass154236_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx154233_
                                 __tmp155125
                                 __tmp155124)))
                          (let ((_$obj154269_
                                 (let ((__tmp155073 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp155073))))
                            (let _lp154271_ ((_rest154273_ _args154244_)
                                             (_initializers154274_ '()))
                              (let* ((___stx154800154801_ _rest154273_)
                                     (_g154278154299_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx154800154801_)))))
                                (let ((___kont154802154803_
                                       (lambda (_L154353_ _L154354_ _L154355_)
                                         (let* ((_slot154386_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L154355_))))
                                                (_off154388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass154236_
                                                    _slot154386_))))
                                           (if _off154388_
                                               (let ((__tmp155075
                                                      (let ((__tmp155076
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off154388_ _L154354_))))
                (declare (not safe))
                (cons __tmp155076 _initializers154274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp154271_
                                                  _L154353_
                                                  __tmp155075))
                                               (let ((__tmp155074
                                                      (##structure-ref
                                                       _self154231_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx154233_
                                                  __tmp155074
                                                  _slot154386_))))))
                                      (___kont154804154805_
                                       (lambda ()
                                         (let ((__tmp155077
                                                (let ((__tmp155078
                                                       (let ((__tmp155101
                                                              (let ((__tmp155102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155104
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154269_ '())))
                                   (__tmp155103
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154246_ '()))))
                               (declare (not safe))
                               (cons __tmp155104 __tmp155103))))
                        (declare (not safe))
                        (cons __tmp155102 '())))
                     (__tmp155079
                      (let ((__tmp155080
                             (let ((__tmp155081
                                    (let ((__tmp155098
                                           (let ((__tmp155099
                                                  (let ((__tmp155100
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155100))))
                                             (declare (not safe))
                                             (cons __tmp155099 '())))
                                          (__tmp155082
                                           (let ((__tmp155083
                                                  (lambda (_i154313_ _r154314_)
                                                    (let ((__tmp155084
                                                           (let ((__tmp155085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155095
                                 (let ((__tmp155096
                                        (let ((__tmp155097
                                               (##structure-ref
                                                _self154231_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155097 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155096)))
                                (__tmp155086
                                 (let ((__tmp155092
                                        (let ((__tmp155093
                                               (let ((__tmp155094
                                                      (car _i154313_)))
                                                 (declare (not safe))
                                                 (cons __tmp155094 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155093)))
                                       (__tmp155087
                                        (let ((__tmp155090
                                               (let ((__tmp155091
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj154269_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp155091)))
                                              (__tmp155088
                                               (let ((__tmp155089
                                                      (cdr _i154313_)))
                                                 (declare (not safe))
                                                 (cons __tmp155089 '()))))
                                          (declare (not safe))
                                          (cons __tmp155090 __tmp155088))))
                                   (declare (not safe))
                                   (cons __tmp155092 __tmp155087))))
                            (declare (not safe))
                            (cons __tmp155095 __tmp155086))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp155085))))
              (declare (not safe))
              (cons __tmp155084 _r154314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp155083
                                                     '()
                                                     _initializers154274_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp155098 __tmp155082))))
                               (declare (not safe))
                               (cons '%#begin __tmp155081))))
                        (declare (not safe))
                        (cons __tmp155080 '()))))
                 (declare (not safe))
                 (cons __tmp155101 __tmp155079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155078))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155077
                                            _stx154233_))))
                                      (___kont154806154807_
                                       (lambda ()
                                         (let ((__tmp155105
                                                (let ((__tmp155106
                                                       (let ((__tmp155120
                                                              (let ((__tmp155121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155123
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj154269_ '())))
                                   (__tmp155122
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object154246_ '()))))
                               (declare (not safe))
                               (cons __tmp155123 __tmp155122))))
                        (declare (not safe))
                        (cons __tmp155121 '())))
                     (__tmp155107
                      (let ((__tmp155108
                             (let ((__tmp155109
                                    (let ((__tmp155113
                                           (let ((__tmp155114
                                                  (let ((__tmp155118
                                                         (let ((__tmp155119
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp155119)))
                (__tmp155115
                 (let ((__tmp155116
                        (let ((__tmp155117
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj154269_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155117))))
                   (declare (not safe))
                   (cons __tmp155116 _args154244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155118
                                                          __tmp155115))))
                                             (declare (not safe))
                                             (cons '%#call __tmp155114)))
                                          (__tmp155110
                                           (let ((__tmp155111
                                                  (let ((__tmp155112
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj154269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155112))))
                                             (declare (not safe))
                                             (cons __tmp155111 '()))))
                                      (declare (not safe))
                                      (cons __tmp155113 __tmp155110))))
                               (declare (not safe))
                               (cons '%#begin __tmp155109))))
                        (declare (not safe))
                        (cons __tmp155108 '()))))
                 (declare (not safe))
                 (cons __tmp155120 __tmp155107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp155106))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp155105
                                            _stx154233_)))))
                                  (let* ((_g154276154316_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx154800154801_))
                                                (___kont154804154805_)
                                                (___kont154806154807_))))
                                         (___match154837154838_
                                          (lambda (_e154285154321_
                                                   _hd154284154324_
                                                   _tl154283154326_
                                                   _e154288154329_
                                                   _hd154287154332_
                                                   _tl154286154334_
                                                   _e154291154337_
                                                   _hd154290154340_
                                                   _tl154289154342_
                                                   _e154294154345_
                                                   _hd154293154348_
                                                   _tl154292154350_)
                                            (let ((_L154353_ _tl154292154350_)
                                                  (_L154354_ _hd154293154348_)
                                                  (_L154355_ _hd154290154340_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L154355_))
                                                  (___kont154802154803_
                                                   _L154353_
                                                   _L154354_
                                                   _L154355_)
                                                  (___kont154806154807_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx154800154801_))
                                        (let ((_e154285154321_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx154800154801_))))
                                          (let ((_tl154283154326_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154285154321_)))
                                                (_hd154284154324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154285154321_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd154284154324_))
                                                (let ((_e154288154329_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd154284154324_))))
                                                  (let ((_tl154286154334_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e154288154329_)))
                                                        (_hd154287154332_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e154288154329_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd154287154332_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd154287154332_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl154286154334_))
                        (let ((_e154291154337_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl154286154334_))))
                          (let ((_tl154289154342_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e154291154337_)))
                                (_hd154290154340_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e154291154337_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl154289154342_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl154283154326_))
                                    (let ((_e154294154345_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl154283154326_))))
                                      (let ((_tl154292154350_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e154294154345_)))
                                            (_hd154293154348_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e154294154345_))))
                                        (___match154837154838_
                                         _e154285154321_
                                         _hd154284154324_
                                         _tl154283154326_
                                         _e154288154329_
                                         _hd154287154332_
                                         _tl154286154334_
                                         _e154291154337_
                                         _hd154290154340_
                                         _tl154289154342_
                                         _e154294154345_
                                         _hd154293154348_
                                         _tl154292154350_)))
                                    (___kont154806154807_))
                                (___kont154806154807_))))
                        (___kont154806154807_))
                    (___kont154806154807_))
                (___kont154806154807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont154806154807_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g154276154316_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass154723 __method-table154724)
        (let ((__id154725
               (let ((__slot154726
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154723 'id))))
                 (if __slot154726
                     __slot154726
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self154231_ _ctx154232_ _stx154233_ _args154234_)
            (let* ((_klass154236_
                    (let ((__tmp155246
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self154231_
                              __id154725
                              __klass154723
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx154233_ __tmp155246)))
                   (_fields154238_
                    (length (##structure-ref
                             _klass154236_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args154244_
                    (map (lambda (_g154239154241_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx154232_ _g154239154241_)))
                         _args154234_))
                   (_inline-make-object154246_
                    (let ((__tmp155247
                           (let ((__tmp155253
                                  (let ((__tmp155254
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155254)))
                                 (__tmp155248
                                  (let ((__tmp155250
                                         (let ((__tmp155251
                                                (let ((__tmp155252
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154231_
                                                          __id154725
                                                          __klass154723
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155252 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155251)))
                                        (__tmp155249
                                         (make-list
                                          _fields154238_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp155250 __tmp155249))))
                             (declare (not safe))
                             (cons __tmp155253 __tmp155248))))
                      (declare (not safe))
                      (cons '%#call __tmp155247))))
              (let ((_$e154249_
                     (##structure-ref _klass154236_ '6 gxc#!class::t '#f)))
                (if _$e154249_
                    ((lambda (_ctor154252_)
                       (let ((_$obj154254_
                              (let ((__tmp155354 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp155354)))
                             (_ctor-impl154255_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass154236_
                                 _ctor154252_))))
                         (let ((__tmp155355
                                (let ((__tmp155356
                                       (let ((__tmp155424
                                              (let ((__tmp155425
                                                     (let ((__tmp155427
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj154254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155426
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object154246_ '()))))
               (declare (not safe))
               (cons __tmp155427 __tmp155426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155425 '())))
                                             (__tmp155357
                                              (let ((__tmp155358
                                                     (let ((__tmp155359
                                                            (let ((__tmp155363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl154255_
                               (let ((__tmp155418
                                      (let ((__tmp155422
                                             (let ((__tmp155423
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl154255_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155423)))
                                            (__tmp155419
                                             (let ((__tmp155420
                                                    (let ((__tmp155421
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj154254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155420
                                                     _args154244_))))
                                        (declare (not safe))
                                        (cons __tmp155422 __tmp155419))))
                                 (declare (not safe))
                                 (cons '%#call __tmp155418))
                               (let* ((_$ctor154257_
                                       (let ((__tmp155364
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp155364)))
                                      (__tmp155365
                                       (let ((__tmp155400
                                              (let ((__tmp155401
                                                     (let ((__tmp155417
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor154257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp155402
                    (let ((__tmp155403
                           (let ((__tmp155404
                                  (let ((__tmp155415
                                         (let ((__tmp155416
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155416)))
                                        (__tmp155405
                                         (let ((__tmp155412
                                                (let ((__tmp155413
                                                       (let ((__tmp155414
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self154231_
                         __id154725
                         __klass154723
                         '#f))))
                 (declare (not safe))
                 (cons __tmp155414 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155413)))
                                               (__tmp155406
                                                (let ((__tmp155410
                                                       (let ((__tmp155411
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154254_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155411)))
              (__tmp155407
               (let ((__tmp155408
                      (let ((__tmp155409
                             (let ()
                               (declare (not safe))
                               (cons _ctor154252_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155409))))
                 (declare (not safe))
                 (cons __tmp155408 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155410
                                                        __tmp155407))))
                                           (declare (not safe))
                                           (cons __tmp155412 __tmp155406))))
                                    (declare (not safe))
                                    (cons __tmp155415 __tmp155405))))
                             (declare (not safe))
                             (cons '%#call __tmp155404))))
                      (declare (not safe))
                      (cons __tmp155403 '()))))
               (declare (not safe))
               (cons __tmp155417 __tmp155402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155401 '())))
                                             (__tmp155366
                                              (let ((__tmp155367
                                                     (let ((__tmp155368
                                                            (let ((__tmp155398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155399
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor154257_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155399)))
                          (__tmp155369
                           (let ((__tmp155391
                                  (let ((__tmp155392
                                         (let ((__tmp155396
                                                (let ((__tmp155397
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor154257_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155397)))
                                               (__tmp155393
                                                (let ((__tmp155394
                                                       (let ((__tmp155395
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154254_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155394
                                                        _args154244_))))
                                           (declare (not safe))
                                           (cons __tmp155396 __tmp155393))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155392)))
                                 (__tmp155370
                                  (let ((__tmp155371
                                         (let ((__tmp155372
                                                (let ((__tmp155389
                                                       (let ((__tmp155390
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155390)))
              (__tmp155373
               (let ((__tmp155387
                      (let ((__tmp155388
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp155388)))
                     (__tmp155374
                      (let ((__tmp155385
                             (let ((__tmp155386
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155386)))
                            (__tmp155375
                             (let ((__tmp155382
                                    (let ((__tmp155383
                                           (let ((__tmp155384
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self154231_
                                                     __id154725
                                                     __klass154723
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
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155381)))
                                          (__tmp155377
                                           (let ((__tmp155378
                                                  (let ((__tmp155379
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor154252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp155379))))
                                             (declare (not safe))
                                             (cons __tmp155378 '()))))
                                      (declare (not safe))
                                      (cons __tmp155380 __tmp155377))))
                               (declare (not safe))
                               (cons __tmp155382 __tmp155376))))
                        (declare (not safe))
                        (cons __tmp155385 __tmp155375))))
                 (declare (not safe))
                 (cons __tmp155387 __tmp155374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155389
                                                        __tmp155373))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155372))))
                                    (declare (not safe))
                                    (cons __tmp155371 '()))))
                             (declare (not safe))
                             (cons __tmp155391 __tmp155370))))
                      (declare (not safe))
                      (cons __tmp155398 __tmp155369))))
               (declare (not safe))
               (cons '%#if __tmp155368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155367 '()))))
                                         (declare (not safe))
                                         (cons __tmp155400 __tmp155366))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp155365))))
                          (__tmp155360
                           (let ((__tmp155361
                                  (let ((__tmp155362
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj154254_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155362))))
                             (declare (not safe))
                             (cons __tmp155361 '()))))
                      (declare (not safe))
                      (cons __tmp155363 __tmp155360))))
               (declare (not safe))
               (cons '%#begin __tmp155359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155358 '()))))
                                         (declare (not safe))
                                         (cons __tmp155424 __tmp155357))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155356))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155355 _stx154233_))))
                     _$e154249_)
                    (let ((_$e154259_
                           (##structure-ref
                            _klass154236_
                            '10
                            gxc#!class::t
                            '#f)))
                      (if _$e154259_
                          ((lambda (_metaclass154262_)
                             (let* ((_$obj154264_
                                     (let ((__tmp155316 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155316)))
                                    (_metakons154266_
                                     (let ((__tmp155317
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx154233_
                                               _metaclass154262_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp155317
                                        'instance-init!))))
                               (let ((__tmp155318
                                      (let ((__tmp155319
                                             (let ((__tmp155350
                                                    (let ((__tmp155351
                                                           (let ((__tmp155353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj154264_ '())))
                         (__tmp155352
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object154246_ '()))))
                     (declare (not safe))
                     (cons __tmp155353 __tmp155352))))
              (declare (not safe))
              (cons __tmp155351 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155320
                                                    (let ((__tmp155321
                                                           (let ((__tmp155322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155326
                                 (if _metakons154266_
                                     (let ((__tmp155340
                                            (let ((__tmp155348
                                                   (let ((__tmp155349
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons154266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155349)))
                                                  (__tmp155341
                                                   (let ((__tmp155345
                                                          (let ((__tmp155346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155347
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154231_
                                   __id154725
                                   __klass154723
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155347 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155346)))
                 (__tmp155342
                  (let ((__tmp155343
                         (let ((__tmp155344
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj154264_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp155344))))
                    (declare (not safe))
                    (cons __tmp155343 _args154244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155345
                                                           __tmp155342))))
                                              (declare (not safe))
                                              (cons __tmp155348 __tmp155341))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155340))
                                     (let ((__tmp155327
                                            (let ((__tmp155338
                                                   (let ((__tmp155339
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155339)))
                                                  (__tmp155328
                                                   (let ((__tmp155335
                                                          (let ((__tmp155336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155337
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self154231_
                                   __id154725
                                   __klass154723
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp155337 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155336)))
                 (__tmp155329
                  (let ((__tmp155333
                         (let ((__tmp155334
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155334)))
                        (__tmp155330
                         (let ((__tmp155331
                                (let ((__tmp155332
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj154264_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155332))))
                           (declare (not safe))
                           (cons __tmp155331 _args154244_))))
                    (declare (not safe))
                    (cons __tmp155333 __tmp155330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155335
                                                           __tmp155329))))
                                              (declare (not safe))
                                              (cons __tmp155338 __tmp155328))))
                                       (declare (not safe))
                                       (cons '%#call __tmp155327))))
                                (__tmp155323
                                 (let ((__tmp155324
                                        (let ((__tmp155325
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj154264_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp155325))))
                                   (declare (not safe))
                                   (cons __tmp155324 '()))))
                            (declare (not safe))
                            (cons __tmp155326 __tmp155323))))
                     (declare (not safe))
                     (cons '%#begin __tmp155322))))
              (declare (not safe))
              (cons __tmp155321 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155350
                                                     __tmp155320))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp155319))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155318
                                  _stx154233_))))
                           _$e154259_)
                          (if (##structure-ref
                               _klass154236_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args154244_) _fields154238_)
                                  (let ((__tmp155308
                                         (let ((__tmp155309
                                                (let ((__tmp155314
                                                       (let ((__tmp155315
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155315)))
              (__tmp155310
               (let ((__tmp155311
                      (let ((__tmp155312
                             (let ((__tmp155313
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self154231_
                                       __id154725
                                       __klass154723
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp155313 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155312))))
                 (declare (not safe))
                 (cons __tmp155311 _args154244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155314
                                                        __tmp155310))))
                                           (declare (not safe))
                                           (cons '%#call __tmp155309))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp155308
                                     _stx154233_))
                                  (let ((__tmp155307
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self154231_
                                            __id154725
                                            __klass154723
                                            '#f)))
                                        (__tmp155306
                                         (length (##structure-ref
                                                  _klass154236_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx154233_
                                     __tmp155307
                                     __tmp155306)))
                              (let ((_$obj154269_
                                     (let ((__tmp155255 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp155255))))
                                (let _lp154271_ ((_rest154273_ _args154244_)
                                                 (_initializers154274_ '()))
                                  (let* ((___stx154842154843_ _rest154273_)
                                         (_g154278154299_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx154842154843_)))))
                                    (let ((___kont154844154845_
                                           (lambda (_L154353_
                                                    _L154354_
                                                    _L154355_)
                                             (let* ((_slot154386_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L154355_))))
                                                    (_off154388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass154236_
                                                        _slot154386_))))
                                               (if _off154388_
                                                   (let ((__tmp155257
                                                          (let ((__tmp155258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off154388_ _L154354_))))
                    (declare (not safe))
                    (cons __tmp155258 _initializers154274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp154271_
                                                      _L154353_
                                                      __tmp155257))
                                                   (let ((__tmp155256
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self154231_
                                                             __id154725
                                                             __klass154723
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx154233_
                                                      __tmp155256
                                                      _slot154386_))))))
                                          (___kont154846154847_
                                           (lambda ()
                                             (let ((__tmp155259
                                                    (let ((__tmp155260
                                                           (let ((__tmp155283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155284
                                 (let ((__tmp155286
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154269_ '())))
                                       (__tmp155285
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154246_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155286 __tmp155285))))
                            (declare (not safe))
                            (cons __tmp155284 '())))
                         (__tmp155261
                          (let ((__tmp155262
                                 (let ((__tmp155263
                                        (let ((__tmp155280
                                               (let ((__tmp155281
                                                      (let ((__tmp155282
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154269_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155281 '())))
                                              (__tmp155264
                                               (let ((__tmp155265
                                                      (lambda (_i154313_
                                                               _r154314_)
                                                        (let ((__tmp155266
                                                               (let ((__tmp155267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155277
                                     (let ((__tmp155278
                                            (let ((__tmp155279
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154231_
                                                      __id154725
                                                      __klass154723
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155279 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155278)))
                                    (__tmp155268
                                     (let ((__tmp155274
                                            (let ((__tmp155275
                                                   (let ((__tmp155276
                                                          (car _i154313_)))
                                                     (declare (not safe))
                                                     (cons __tmp155276 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155275)))
                                           (__tmp155269
                                            (let ((__tmp155272
                                                   (let ((__tmp155273
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155273)))
                                                  (__tmp155270
                                                   (let ((__tmp155271
                                                          (cdr _i154313_)))
                                                     (declare (not safe))
                                                     (cons __tmp155271 '()))))
                                              (declare (not safe))
                                              (cons __tmp155272 __tmp155270))))
                                       (declare (not safe))
                                       (cons __tmp155274 __tmp155269))))
                                (declare (not safe))
                                (cons __tmp155277 __tmp155268))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp155267))))
                  (declare (not safe))
                  (cons __tmp155266 _r154314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp155265
                                                         '()
                                                         _initializers154274_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp155280
                                                  __tmp155264))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155263))))
                            (declare (not safe))
                            (cons __tmp155262 '()))))
                     (declare (not safe))
                     (cons __tmp155283 __tmp155261))))
              (declare (not safe))
              (cons '%#let-values __tmp155260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155259
                                                _stx154233_))))
                                          (___kont154848154849_
                                           (lambda ()
                                             (let ((__tmp155287
                                                    (let ((__tmp155288
                                                           (let ((__tmp155302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155303
                                 (let ((__tmp155305
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj154269_ '())))
                                       (__tmp155304
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object154246_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp155305 __tmp155304))))
                            (declare (not safe))
                            (cons __tmp155303 '())))
                         (__tmp155289
                          (let ((__tmp155290
                                 (let ((__tmp155291
                                        (let ((__tmp155295
                                               (let ((__tmp155296
                                                      (let ((__tmp155300
                                                             (let ((__tmp155301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp155301)))
                    (__tmp155297
                     (let ((__tmp155298
                            (let ((__tmp155299
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj154269_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155299))))
                       (declare (not safe))
                       (cons __tmp155298 _args154244_))))
                (declare (not safe))
                (cons __tmp155300 __tmp155297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp155296)))
                                              (__tmp155292
                                               (let ((__tmp155293
                                                      (let ((__tmp155294
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj154269_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp155294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155293 '()))))
                                          (declare (not safe))
                                          (cons __tmp155295 __tmp155292))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp155291))))
                            (declare (not safe))
                            (cons __tmp155290 '()))))
                     (declare (not safe))
                     (cons __tmp155302 __tmp155289))))
              (declare (not safe))
              (cons '%#let-values __tmp155288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp155287
                                                _stx154233_)))))
                                      (let* ((_g154276154316_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx154842154843_))
                                                    (___kont154846154847_)
                                                    (___kont154848154849_))))
                                             (___match154879154880_
                                              (lambda (_e154285154321_
                                                       _hd154284154324_
                                                       _tl154283154326_
                                                       _e154288154329_
                                                       _hd154287154332_
                                                       _tl154286154334_
                                                       _e154291154337_
                                                       _hd154290154340_
                                                       _tl154289154342_
                                                       _e154294154345_
                                                       _hd154293154348_
                                                       _tl154292154350_)
                                                (let ((_L154353_
                                                       _tl154292154350_)
                                                      (_L154354_
                                                       _hd154293154348_)
                                                      (_L154355_
                                                       _hd154290154340_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L154355_))
                                                      (___kont154844154845_
                                                       _L154353_
                                                       _L154354_
                                                       _L154355_)
                                                      (___kont154848154849_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx154842154843_))
                                            (let ((_e154285154321_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx154842154843_))))
                                              (let ((_tl154283154326_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e154285154321_)))
                                                    (_hd154284154324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e154285154321_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd154284154324_))
                                                    (let ((_e154288154329_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd154284154324_))))
                                                      (let ((_tl154286154334_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e154288154329_)))
                    (_hd154287154332_
                     (let () (declare (not safe)) (##car _e154288154329_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd154287154332_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd154287154332_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl154286154334_))
                            (let ((_e154291154337_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl154286154334_))))
                              (let ((_tl154289154342_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e154291154337_)))
                                    (_hd154290154340_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e154291154337_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl154289154342_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl154283154326_))
                                        (let ((_e154294154345_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl154283154326_))))
                                          (let ((_tl154292154350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e154294154345_)))
                                                (_hd154293154348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e154294154345_))))
                                            (___match154879154880_
                                             _e154285154321_
                                             _hd154284154324_
                                             _tl154283154326_
                                             _e154288154329_
                                             _hd154287154332_
                                             _tl154286154334_
                                             _e154291154337_
                                             _hd154290154340_
                                             _tl154289154342_
                                             _e154294154345_
                                             _hd154293154348_
                                             _tl154292154350_)))
                                        (___kont154848154849_))
                                    (___kont154848154849_))))
                            (___kont154848154849_))
                        (___kont154848154849_))
                    (___kont154848154849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont154848154849_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g154276154316_))))))))))))))))))
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
      (lambda (_self154053_ _ctx154054_ _stx154055_ _args154056_)
        (let* ((_g154058154068_
                (lambda (_g154059154065_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g154059154065_))))
               (_g154057154106_
                (lambda (_g154059154071_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g154059154071_))
                      (let ((_e154063154073_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g154059154071_))))
                        (let ((_hd154062154076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e154063154073_)))
                              (_tl154061154078_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e154063154073_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl154061154078_))
                              ((lambda (_L154081_)
                                 (let* ((_klass154092_
                                         (let ((__tmp155428
                                                (##structure-ref
                                                 _self154053_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx154055_
                                            __tmp155428)))
                                        (_field154094_
                                         (let ((__tmp155429
                                                (##structure-ref
                                                 _self154053_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass154092_
                                            __tmp155429)))
                                        (_object154096_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx154054_
                                            _L154081_))))
                                   (if (##structure-ref
                                        _klass154092_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp155506
                                              (let ((__tmp155515
                                                     (if (##structure-ref
                                                          _self154053_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp155507
                                                     (let ((__tmp155512
                                                            (let ((__tmp155513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155514
                                  (##structure-ref
                                   _self154053_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp155514 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155513)))
                   (__tmp155508
                    (let ((__tmp155510
                           (let ((__tmp155511
                                  (let ()
                                    (declare (not safe))
                                    (cons _field154094_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp155511)))
                          (__tmp155509
                           (let ()
                             (declare (not safe))
                             (cons _object154096_ '()))))
                      (declare (not safe))
                      (cons __tmp155510 __tmp155509))))
               (declare (not safe))
               (cons __tmp155512 __tmp155508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp155515
                                                      __tmp155507))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155506
                                          _stx154055_))
                                       (if (##structure-ref
                                            _klass154092_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155496
                                                  (let ((__tmp155505
                                                         (if (##structure-ref
                                                              _self154053_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp155497
                                                         (let ((__tmp155502
                                                                (let ((__tmp155503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155504
                                      (##structure-ref
                                       _self154053_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp155504 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155503)))
                       (__tmp155498
                        (let ((__tmp155500
                               (let ((__tmp155501
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154094_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155501)))
                              (__tmp155499
                               (let ()
                                 (declare (not safe))
                                 (cons _object154096_ '()))))
                          (declare (not safe))
                          (cons __tmp155500 __tmp155499))))
                   (declare (not safe))
                   (cons __tmp155502 __tmp155498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155505
                                                          __tmp155497))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155496
                                              _stx154055_))
                                           (let ((_$e154099_
                                                  (let ((__tmp155430
                                                         (##structure-ref
                                                          _self154053_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass154092_
                                                     __tmp155430))))
                                             (if _$e154099_
                                                 ((lambda (_klass154102_)
                                                    (let ((__tmp155486
                                                           (let ((__tmp155495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self154053_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp155487
                          (let ((__tmp155492
                                 (let ((__tmp155493
                                        (let ((__tmp155494
                                               (##structure-ref
                                                _self154053_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155494 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp155493)))
                                (__tmp155488
                                 (let ((__tmp155490
                                        (let ((__tmp155491
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field154094_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp155491)))
                                       (__tmp155489
                                        (let ()
                                          (declare (not safe))
                                          (cons _object154096_ '()))))
                                   (declare (not safe))
                                   (cons __tmp155490 __tmp155489))))
                            (declare (not safe))
                            (cons __tmp155492 __tmp155488))))
                     (declare (not safe))
                     (cons __tmp155495 __tmp155487))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp155486 _stx154055_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e154099_)
                                                 (if (##structure-ref
                                                      _self154053_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp155440
                                                            (let* ((_$obj154104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155441 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp155441)))
                           (__tmp155442
                            (let ((__tmp155482
                                   (let ((__tmp155483
                                          (let ((__tmp155485
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj154104_ '())))
                                                (__tmp155484
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object154096_ '()))))
                                            (declare (not safe))
                                            (cons __tmp155485 __tmp155484))))
                                     (declare (not safe))
                                     (cons __tmp155483 '())))
                                  (__tmp155443
                                   (let ((__tmp155444
                                          (let ((__tmp155445
                                                 (let ((__tmp155474
                                                        (let ((__tmp155475
                                                               (let ((__tmp155479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155480
                                     (let ((__tmp155481
                                            (##structure-ref
                                             _klass154092_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp155481 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp155480)))
                             (__tmp155476
                              (let ((__tmp155477
                                     (let ((__tmp155478
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj154104_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155478))))
                                (declare (not safe))
                                (cons __tmp155477 '()))))
                         (declare (not safe))
                         (cons __tmp155479 __tmp155476))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp155475)))
               (__tmp155446
                (let ((__tmp155463
                       (let ((__tmp155464
                              (let ((__tmp155471
                                     (let ((__tmp155472
                                            (let ((__tmp155473
                                                   (##structure-ref
                                                    _self154053_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp155473 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155472)))
                                    (__tmp155465
                                     (let ((__tmp155469
                                            (let ((__tmp155470
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154094_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155470)))
                                           (__tmp155466
                                            (let ((__tmp155467
                                                   (let ((__tmp155468
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj154104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155468))))
                                              (declare (not safe))
                                              (cons __tmp155467 '()))))
                                       (declare (not safe))
                                       (cons __tmp155469 __tmp155466))))
                                (declare (not safe))
                                (cons __tmp155471 __tmp155465))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp155464)))
                      (__tmp155447
                       (let ((__tmp155448
                              (let ((__tmp155449
                                     (let ((__tmp155461
                                            (let ((__tmp155462
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp155462)))
                                           (__tmp155450
                                            (let ((__tmp155458
                                                   (let ((__tmp155459
                                                          (let ((__tmp155460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self154053_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp155460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp155459)))
                                                  (__tmp155451
                                                   (let ((__tmp155456
                                                          (let ((__tmp155457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj154104_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp155457)))
                 (__tmp155452
                  (let ((__tmp155453
                         (let ((__tmp155454
                                (let ((__tmp155455
                                       (##structure-ref
                                        _self154053_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp155455 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp155454))))
                    (declare (not safe))
                    (cons __tmp155453 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155456
                                                           __tmp155452))))
                                              (declare (not safe))
                                              (cons __tmp155458 __tmp155451))))
                                       (declare (not safe))
                                       (cons __tmp155461 __tmp155450))))
                                (declare (not safe))
                                (cons '%#call __tmp155449))))
                         (declare (not safe))
                         (cons __tmp155448 '()))))
                  (declare (not safe))
                  (cons __tmp155463 __tmp155447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155474
                                                         __tmp155446))))
                                            (declare (not safe))
                                            (cons '%#if __tmp155445))))
                                     (declare (not safe))
                                     (cons __tmp155444 '()))))
                              (declare (not safe))
                              (cons __tmp155482 __tmp155443))))
                      (declare (not safe))
                      (cons '%#let-values __tmp155442))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155440 _stx154055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp155431
                                                            (let ((__tmp155432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155438
                                  (let ((__tmp155439
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp155439)))
                                 (__tmp155433
                                  (let ((__tmp155434
                                         (let ((__tmp155435
                                                (let ((__tmp155436
                                                       (let ((__tmp155437
                                                              (##structure-ref
                                                               _self154053_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp155437
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp155436))))
                                           (declare (not safe))
                                           (cons __tmp155435 '()))))
                                    (declare (not safe))
                                    (cons _object154096_ __tmp155434))))
                             (declare (not safe))
                             (cons __tmp155438 __tmp155433))))
                      (declare (not safe))
                      (cons '%#call __tmp155432))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp155431 _stx154055_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd154062154076_)
                              (let ()
                                (declare (not safe))
                                (_g154058154068_ _g154059154071_)))))
                      (let ()
                        (declare (not safe))
                        (_g154058154068_ _g154059154071_))))))
          (declare (not safe))
          (_g154057154106_ _args154056_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass154727 __method-table154728)
        (let ((__id154729
               (let ((__slot154732
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154727 'id))))
                 (if __slot154732
                     __slot154732
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154730
               (let ((__slot154733
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154727 'checked?))))
                 (if __slot154733
                     __slot154733
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154731
               (let ((__slot154734
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154727 'slot))))
                 (if __slot154734
                     __slot154734
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self154053_ _ctx154054_ _stx154055_ _args154056_)
            (let* ((_g154058154068_
                    (lambda (_g154059154065_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g154059154065_))))
                   (_g154057154106_
                    (lambda (_g154059154071_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g154059154071_))
                          (let ((_e154063154073_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g154059154071_))))
                            (let ((_hd154062154076_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e154063154073_)))
                                  (_tl154061154078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e154063154073_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl154061154078_))
                                  ((lambda (_L154081_)
                                     (let* ((_klass154092_
                                             (let ((__tmp155516
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154053_
                                                       __id154729
                                                       __klass154727
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx154055_
                                                __tmp155516)))
                                            (_field154094_
                                             (let ((__tmp155517
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self154053_
                                                       __slot154731
                                                       __klass154727
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass154092_
                                                __tmp155517)))
                                            (_object154096_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx154054_
                                                _L154081_))))
                                       (if (##structure-ref
                                            _klass154092_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp155594
                                                  (let ((__tmp155603
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154053_
                        __checked?154730
                        __klass154727
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp155595
                 (let ((__tmp155600
                        (let ((__tmp155601
                               (let ((__tmp155602
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self154053_
                                         __id154729
                                         __klass154727
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp155602 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp155601)))
                       (__tmp155596
                        (let ((__tmp155598
                               (let ((__tmp155599
                                      (let ()
                                        (declare (not safe))
                                        (cons _field154094_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp155599)))
                              (__tmp155597
                               (let ()
                                 (declare (not safe))
                                 (cons _object154096_ '()))))
                          (declare (not safe))
                          (cons __tmp155598 __tmp155597))))
                   (declare (not safe))
                   (cons __tmp155600 __tmp155596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155603
                                                          __tmp155595))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp155594
                                              _stx154055_))
                                           (if (##structure-ref
                                                _klass154092_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155584
                                                      (let ((__tmp155593
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self154053_
                            __checked?154730
                            __klass154727
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp155585
                     (let ((__tmp155590
                            (let ((__tmp155591
                                   (let ((__tmp155592
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self154053_
                                             __id154729
                                             __klass154727
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp155592 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155591)))
                           (__tmp155586
                            (let ((__tmp155588
                                   (let ((__tmp155589
                                          (let ()
                                            (declare (not safe))
                                            (cons _field154094_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155589)))
                                  (__tmp155587
                                   (let ()
                                     (declare (not safe))
                                     (cons _object154096_ '()))))
                              (declare (not safe))
                              (cons __tmp155588 __tmp155587))))
                       (declare (not safe))
                       (cons __tmp155590 __tmp155586))))
                (declare (not safe))
                (cons __tmp155593 __tmp155585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155584
                                                  _stx154055_))
                                               (let ((_$e154099_
                                                      (let ((__tmp155518
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self154053_
                        __slot154731
                        __klass154727
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass154092_ __tmp155518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e154099_
                                                     ((lambda (_klass154102_)
                                                        (let ((__tmp155574
                                                               (let ((__tmp155583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self154053_
                                     __checked?154730
                                     __klass154727
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp155575
                              (let ((__tmp155580
                                     (let ((__tmp155581
                                            (let ((__tmp155582
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self154053_
                                                      __id154729
                                                      __klass154727
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155582 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp155581)))
                                    (__tmp155576
                                     (let ((__tmp155578
                                            (let ((__tmp155579
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field154094_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp155579)))
                                           (__tmp155577
                                            (let ()
                                              (declare (not safe))
                                              (cons _object154096_ '()))))
                                       (declare (not safe))
                                       (cons __tmp155578 __tmp155577))))
                                (declare (not safe))
                                (cons __tmp155580 __tmp155576))))
                         (declare (not safe))
                         (cons __tmp155583 __tmp155575))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp155574 _stx154055_)))
              _$e154099_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self154053_
                                                            __checked?154730
                                                            __klass154727
                                                            '#f))
                                                         (let ((__tmp155528
                                                                (let* ((_$obj154104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp155529 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp155529)))
                               (__tmp155530
                                (let ((__tmp155570
                                       (let ((__tmp155571
                                              (let ((__tmp155573
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj154104_
                                                             '())))
                                                    (__tmp155572
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object154096_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp155573
                                                      __tmp155572))))
                                         (declare (not safe))
                                         (cons __tmp155571 '())))
                                      (__tmp155531
                                       (let ((__tmp155532
                                              (let ((__tmp155533
                                                     (let ((__tmp155562
                                                            (let ((__tmp155563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155567
                                  (let ((__tmp155568
                                         (let ((__tmp155569
                                                (##structure-ref
                                                 _klass154092_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp155569 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp155568)))
                                 (__tmp155564
                                  (let ((__tmp155565
                                         (let ((__tmp155566
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj154104_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155566))))
                                    (declare (not safe))
                                    (cons __tmp155565 '()))))
                             (declare (not safe))
                             (cons __tmp155567 __tmp155564))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp155563)))
                   (__tmp155534
                    (let ((__tmp155551
                           (let ((__tmp155552
                                  (let ((__tmp155559
                                         (let ((__tmp155560
                                                (let ((__tmp155561
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self154053_
                                                          __id154729
                                                          __klass154727
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp155561 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155560)))
                                        (__tmp155553
                                         (let ((__tmp155557
                                                (let ((__tmp155558
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field154094_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155558)))
                                               (__tmp155554
                                                (let ((__tmp155555
                                                       (let ((__tmp155556
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj154104_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155555 '()))))
                                           (declare (not safe))
                                           (cons __tmp155557 __tmp155554))))
                                    (declare (not safe))
                                    (cons __tmp155559 __tmp155553))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp155552)))
                          (__tmp155535
                           (let ((__tmp155536
                                  (let ((__tmp155537
                                         (let ((__tmp155549
                                                (let ((__tmp155550
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp155550)))
                                               (__tmp155538
                                                (let ((__tmp155546
                                                       (let ((__tmp155547
                                                              (let ((__tmp155548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self154053_
                                __id154729
                                __klass154727
                                '#f))))
                        (declare (not safe))
                        (cons __tmp155548 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp155547)))
              (__tmp155539
               (let ((__tmp155544
                      (let ((__tmp155545
                             (let ()
                               (declare (not safe))
                               (cons _$obj154104_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155545)))
                     (__tmp155540
                      (let ((__tmp155541
                             (let ((__tmp155542
                                    (let ((__tmp155543
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self154053_
                                              __slot154731
                                              __klass154727
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp155543 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp155542))))
                        (declare (not safe))
                        (cons __tmp155541 '()))))
                 (declare (not safe))
                 (cons __tmp155544 __tmp155540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp155546
                                                        __tmp155539))))
                                           (declare (not safe))
                                           (cons __tmp155549 __tmp155538))))
                                    (declare (not safe))
                                    (cons '%#call __tmp155537))))
                             (declare (not safe))
                             (cons __tmp155536 '()))))
                      (declare (not safe))
                      (cons __tmp155551 __tmp155535))))
               (declare (not safe))
               (cons __tmp155562 __tmp155534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp155533))))
                                         (declare (not safe))
                                         (cons __tmp155532 '()))))
                                  (declare (not safe))
                                  (cons __tmp155570 __tmp155531))))
                          (declare (not safe))
                          (cons '%#let-values __tmp155530))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155528 _stx154055_))
                 (let ((__tmp155519
                        (let ((__tmp155520
                               (let ((__tmp155526
                                      (let ((__tmp155527
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp155527)))
                                     (__tmp155521
                                      (let ((__tmp155522
                                             (let ((__tmp155523
                                                    (let ((__tmp155524
                                                           (let ((__tmp155525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self154053_
                             __slot154731
                             __klass154727
                             '#f))))
                     (declare (not safe))
                     (cons __tmp155525 '()))))
              (declare (not safe))
              (cons '%#quote __tmp155524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155523 '()))))
                                        (declare (not safe))
                                        (cons _object154096_ __tmp155522))))
                                 (declare (not safe))
                                 (cons __tmp155526 __tmp155521))))
                          (declare (not safe))
                          (cons '%#call __tmp155520))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp155519 _stx154055_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd154062154076_)
                                  (let ()
                                    (declare (not safe))
                                    (_g154058154068_ _g154059154071_)))))
                          (let ()
                            (declare (not safe))
                            (_g154058154068_ _g154059154071_))))))
              (declare (not safe))
              (_g154057154106_ _args154056_))))))
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
      (lambda (_self153857_ _ctx153858_ _stx153859_ _args153860_)
        (let* ((_g153862153876_
                (lambda (_g153863153873_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153863153873_))))
               (_g153861153928_
                (lambda (_g153863153879_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153863153879_))
                      (let ((_e153868153881_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153863153879_))))
                        (let ((_hd153867153884_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153868153881_)))
                              (_tl153866153886_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153868153881_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl153866153886_))
                              (let ((_e153871153889_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl153866153886_))))
                                (let ((_hd153870153892_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e153871153889_)))
                                      (_tl153869153894_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e153871153889_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl153869153894_))
                                      ((lambda (_L153897_ _L153898_)
                                         (let* ((_klass153912_
                                                 (let ((__tmp155604
                                                        (##structure-ref
                                                         _self153857_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx153859_
                                                    __tmp155604)))
                                                (_field153914_
                                                 (let ((__tmp155605
                                                        (##structure-ref
                                                         _self153857_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153912_
                                                    __tmp155605)))
                                                (_object153916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153858_
                                                    _L153898_)))
                                                (_value153918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx153858_
                                                    _L153897_))))
                                           (if (##structure-ref
                                                _klass153912_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp155687
                                                      (let ((__tmp155697
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self153857_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp155688
                     (let ((__tmp155694
                            (let ((__tmp155695
                                   (let ((__tmp155696
                                          (##structure-ref
                                           _self153857_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp155696 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp155695)))
                           (__tmp155689
                            (let ((__tmp155692
                                   (let ((__tmp155693
                                          (let ()
                                            (declare (not safe))
                                            (cons _field153914_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp155693)))
                                  (__tmp155690
                                   (let ((__tmp155691
                                          (let ()
                                            (declare (not safe))
                                            (cons _value153918_ '()))))
                                     (declare (not safe))
                                     (cons _object153916_ __tmp155691))))
                              (declare (not safe))
                              (cons __tmp155692 __tmp155690))))
                       (declare (not safe))
                       (cons __tmp155694 __tmp155689))))
                (declare (not safe))
                (cons __tmp155697 __tmp155688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp155687
                                                  _stx153859_))
                                               (if (##structure-ref
                                                    _klass153912_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155676
                                                          (let ((__tmp155686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self153857_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155677
                         (let ((__tmp155683
                                (let ((__tmp155684
                                       (let ((__tmp155685
                                              (##structure-ref
                                               _self153857_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp155685 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155684)))
                               (__tmp155678
                                (let ((__tmp155681
                                       (let ((__tmp155682
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153914_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155682)))
                                      (__tmp155679
                                       (let ((__tmp155680
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153918_ '()))))
                                         (declare (not safe))
                                         (cons _object153916_ __tmp155680))))
                                  (declare (not safe))
                                  (cons __tmp155681 __tmp155679))))
                           (declare (not safe))
                           (cons __tmp155683 __tmp155678))))
                    (declare (not safe))
                    (cons __tmp155686 __tmp155677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155676
                                                      _stx153859_))
                                                   (let ((_$e153921_
                                                          (let ((__tmp155606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self153857_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass153912_ __tmp155606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e153921_
                                                         ((lambda (_klass153924_)
                                                            (let ((__tmp155665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155675
                                  (if (##structure-ref
                                       _self153857_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp155666
                                  (let ((__tmp155672
                                         (let ((__tmp155673
                                                (let ((__tmp155674
                                                       (##structure-ref
                                                        _self153857_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp155674 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp155673)))
                                        (__tmp155667
                                         (let ((__tmp155670
                                                (let ((__tmp155671
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field153914_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp155671)))
                                               (__tmp155668
                                                (let ((__tmp155669
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value153918_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object153916_
                                                        __tmp155669))))
                                           (declare (not safe))
                                           (cons __tmp155670 __tmp155668))))
                                    (declare (not safe))
                                    (cons __tmp155672 __tmp155667))))
                             (declare (not safe))
                             (cons __tmp155675 __tmp155666))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp155665 _stx153859_)))
                  _$e153921_)
                 (if (##structure-ref _self153857_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp155617
                            (let* ((_$obj153926_
                                    (let ((__tmp155618 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp155618)))
                                   (__tmp155619
                                    (let ((__tmp155661
                                           (let ((__tmp155662
                                                  (let ((__tmp155664
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp155663
                 (let () (declare (not safe)) (cons _object153916_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp155664
                                                          __tmp155663))))
                                             (declare (not safe))
                                             (cons __tmp155662 '())))
                                          (__tmp155620
                                           (let ((__tmp155621
                                                  (let ((__tmp155622
                                                         (let ((__tmp155653
                                                                (let ((__tmp155654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp155658
                                      (let ((__tmp155659
                                             (let ((__tmp155660
                                                    (##structure-ref
                                                     _klass153912_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp155660 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp155659)))
                                     (__tmp155655
                                      (let ((__tmp155656
                                             (let ((__tmp155657
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj153926_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155657))))
                                        (declare (not safe))
                                        (cons __tmp155656 '()))))
                                 (declare (not safe))
                                 (cons __tmp155658 __tmp155655))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp155654)))
                       (__tmp155623
                        (let ((__tmp155641
                               (let ((__tmp155642
                                      (let ((__tmp155650
                                             (let ((__tmp155651
                                                    (let ((__tmp155652
                                                           (##structure-ref
                                                            _self153857_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp155652 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155651)))
                                            (__tmp155643
                                             (let ((__tmp155648
                                                    (let ((__tmp155649
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155649)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155644
                                                    (let ((__tmp155646
                                                           (let ((__tmp155647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153926_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155647)))
                  (__tmp155645
                   (let () (declare (not safe)) (cons _value153918_ '()))))
              (declare (not safe))
              (cons __tmp155646 __tmp155645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155648
                                                     __tmp155644))))
                                        (declare (not safe))
                                        (cons __tmp155650 __tmp155643))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp155642)))
                              (__tmp155624
                               (let ((__tmp155625
                                      (let ((__tmp155626
                                             (let ((__tmp155639
                                                    (let ((__tmp155640
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp155640)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155627
                                                    (let ((__tmp155636
                                                           (let ((__tmp155637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp155638
                                 (##structure-ref
                                  _self153857_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp155638 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp155637)))
                  (__tmp155628
                   (let ((__tmp155634
                          (let ((__tmp155635
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj153926_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp155635)))
                         (__tmp155629
                          (let ((__tmp155631
                                 (let ((__tmp155632
                                        (let ((__tmp155633
                                               (##structure-ref
                                                _self153857_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp155633 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp155632)))
                                (__tmp155630
                                 (let ()
                                   (declare (not safe))
                                   (cons _value153918_ '()))))
                            (declare (not safe))
                            (cons __tmp155631 __tmp155630))))
                     (declare (not safe))
                     (cons __tmp155634 __tmp155629))))
              (declare (not safe))
              (cons __tmp155636 __tmp155628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155639
                                                     __tmp155627))))
                                        (declare (not safe))
                                        (cons '%#call __tmp155626))))
                                 (declare (not safe))
                                 (cons __tmp155625 '()))))
                          (declare (not safe))
                          (cons __tmp155641 __tmp155624))))
                   (declare (not safe))
                   (cons __tmp155653 __tmp155623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp155622))))
                                             (declare (not safe))
                                             (cons __tmp155621 '()))))
                                      (declare (not safe))
                                      (cons __tmp155661 __tmp155620))))
                              (declare (not safe))
                              (cons '%#let-values __tmp155619))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155617 _stx153859_))
                     (let ((__tmp155607
                            (let ((__tmp155608
                                   (let ((__tmp155615
                                          (let ((__tmp155616
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp155616)))
                                         (__tmp155609
                                          (let ((__tmp155610
                                                 (let ((__tmp155612
                                                        (let ((__tmp155613
                                                               (let ((__tmp155614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self153857_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp155614 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155613)))
               (__tmp155611
                (let () (declare (not safe)) (cons _value153918_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155612
                                                         __tmp155611))))
                                            (declare (not safe))
                                            (cons _object153916_
                                                  __tmp155610))))
                                     (declare (not safe))
                                     (cons __tmp155615 __tmp155609))))
                              (declare (not safe))
                              (cons '%#call __tmp155608))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp155607 _stx153859_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd153870153892_
                                       _hd153867153884_)
                                      (let ()
                                        (declare (not safe))
                                        (_g153862153876_ _g153863153879_)))))
                              (let ()
                                (declare (not safe))
                                (_g153862153876_ _g153863153879_)))))
                      (let ()
                        (declare (not safe))
                        (_g153862153876_ _g153863153879_))))))
          (declare (not safe))
          (_g153861153928_ _args153860_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass154735 __method-table154736)
        (let ((__id154737
               (let ((__slot154740
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154735 'id))))
                 (if __slot154740
                     __slot154740
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?154738
               (let ((__slot154741
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154735 'checked?))))
                 (if __slot154741
                     __slot154741
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot154739
               (let ((__slot154742
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass154735 'slot))))
                 (if __slot154742
                     __slot154742
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self153857_ _ctx153858_ _stx153859_ _args153860_)
            (let* ((_g153862153876_
                    (lambda (_g153863153873_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153863153873_))))
                   (_g153861153928_
                    (lambda (_g153863153879_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153863153879_))
                          (let ((_e153868153881_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153863153879_))))
                            (let ((_hd153867153884_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153868153881_)))
                                  (_tl153866153886_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153868153881_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl153866153886_))
                                  (let ((_e153871153889_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl153866153886_))))
                                    (let ((_hd153870153892_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e153871153889_)))
                                          (_tl153869153894_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e153871153889_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl153869153894_))
                                          ((lambda (_L153897_ _L153898_)
                                             (let* ((_klass153912_
                                                     (let ((__tmp155698
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153857_
                                                               __id154737
                                                               __klass154735
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx153859_
                                                        __tmp155698)))
                                                    (_field153914_
                                                     (let ((__tmp155699
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self153857_
                                                               __slot154739
                                                               __klass154735
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153912_
                                                        __tmp155699)))
                                                    (_object153916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153858_
                                                        _L153898_)))
                                                    (_value153918_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx153858_
                                                        _L153897_))))
                                               (if (##structure-ref
                                                    _klass153912_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp155781
                                                          (let ((__tmp155791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153857_
                                __checked?154738
                                __klass154735
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp155782
                         (let ((__tmp155788
                                (let ((__tmp155789
                                       (let ((__tmp155790
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self153857_
                                                 __id154737
                                                 __klass154735
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp155790 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp155789)))
                               (__tmp155783
                                (let ((__tmp155786
                                       (let ((__tmp155787
                                              (let ()
                                                (declare (not safe))
                                                (cons _field153914_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp155787)))
                                      (__tmp155784
                                       (let ((__tmp155785
                                              (let ()
                                                (declare (not safe))
                                                (cons _value153918_ '()))))
                                         (declare (not safe))
                                         (cons _object153916_ __tmp155785))))
                                  (declare (not safe))
                                  (cons __tmp155786 __tmp155784))))
                           (declare (not safe))
                           (cons __tmp155788 __tmp155783))))
                    (declare (not safe))
                    (cons __tmp155791 __tmp155782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp155781
                                                      _stx153859_))
                                                   (if (##structure-ref
                                                        _klass153912_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp155770
                                                              (let ((__tmp155780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self153857_
                                    __checked?154738
                                    __klass154735
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp155771
                             (let ((__tmp155777
                                    (let ((__tmp155778
                                           (let ((__tmp155779
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153857_
                                                     __id154737
                                                     __klass154735
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp155779 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155778)))
                                   (__tmp155772
                                    (let ((__tmp155775
                                           (let ((__tmp155776
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field153914_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155776)))
                                          (__tmp155773
                                           (let ((__tmp155774
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value153918_ '()))))
                                             (declare (not safe))
                                             (cons _object153916_
                                                   __tmp155774))))
                                      (declare (not safe))
                                      (cons __tmp155775 __tmp155773))))
                               (declare (not safe))
                               (cons __tmp155777 __tmp155772))))
                        (declare (not safe))
                        (cons __tmp155780 __tmp155771))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp155770 _stx153859_))
               (let ((_$e153921_
                      (let ((__tmp155700
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self153857_
                                __slot154739
                                __klass154735
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass153912_
                         __tmp155700))))
                 (if _$e153921_
                     ((lambda (_klass153924_)
                        (let ((__tmp155759
                               (let ((__tmp155769
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self153857_
                                             __checked?154738
                                             __klass154735
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp155760
                                      (let ((__tmp155766
                                             (let ((__tmp155767
                                                    (let ((__tmp155768
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self153857_
                                                              __id154737
                                                              __klass154735
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp155768 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp155767)))
                                            (__tmp155761
                                             (let ((__tmp155764
                                                    (let ((__tmp155765
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field153914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp155765)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp155762
                                                    (let ((__tmp155763
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value153918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object153916_ __tmp155763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp155764
                                                     __tmp155762))))
                                        (declare (not safe))
                                        (cons __tmp155766 __tmp155761))))
                                 (declare (not safe))
                                 (cons __tmp155769 __tmp155760))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp155759 _stx153859_)))
                      _$e153921_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self153857_
                            __checked?154738
                            __klass154735
                            '#f))
                         (let ((__tmp155711
                                (let* ((_$obj153926_
                                        (let ((__tmp155712 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp155712)))
                                       (__tmp155713
                                        (let ((__tmp155755
                                               (let ((__tmp155756
                                                      (let ((__tmp155758
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153926_ '())))
                    (__tmp155757
                     (let () (declare (not safe)) (cons _object153916_ '()))))
                (declare (not safe))
                (cons __tmp155758 __tmp155757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155756 '())))
                                              (__tmp155714
                                               (let ((__tmp155715
                                                      (let ((__tmp155716
                                                             (let ((__tmp155747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp155748
                                   (let ((__tmp155752
                                          (let ((__tmp155753
                                                 (let ((__tmp155754
                                                        (##structure-ref
                                                         _klass153912_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp155754 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp155753)))
                                         (__tmp155749
                                          (let ((__tmp155750
                                                 (let ((__tmp155751
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153926_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155751))))
                                            (declare (not safe))
                                            (cons __tmp155750 '()))))
                                     (declare (not safe))
                                     (cons __tmp155752 __tmp155749))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp155748)))
                           (__tmp155717
                            (let ((__tmp155735
                                   (let ((__tmp155736
                                          (let ((__tmp155744
                                                 (let ((__tmp155745
                                                        (let ((__tmp155746
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self153857_
                          __id154737
                          __klass154735
                          '#f))))
                  (declare (not safe))
                  (cons __tmp155746 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp155745)))
                                                (__tmp155737
                                                 (let ((__tmp155742
                                                        (let ((__tmp155743
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field153914_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp155743)))
               (__tmp155738
                (let ((__tmp155740
                       (let ((__tmp155741
                              (let ()
                                (declare (not safe))
                                (cons _$obj153926_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155741)))
                      (__tmp155739
                       (let () (declare (not safe)) (cons _value153918_ '()))))
                  (declare (not safe))
                  (cons __tmp155740 __tmp155739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155742
                                                         __tmp155738))))
                                            (declare (not safe))
                                            (cons __tmp155744 __tmp155737))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp155736)))
                                  (__tmp155718
                                   (let ((__tmp155719
                                          (let ((__tmp155720
                                                 (let ((__tmp155733
                                                        (let ((__tmp155734
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155734)))
               (__tmp155721
                (let ((__tmp155730
                       (let ((__tmp155731
                              (let ((__tmp155732
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self153857_
                                        __id154737
                                        __klass154735
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp155732 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp155731)))
                      (__tmp155722
                       (let ((__tmp155728
                              (let ((__tmp155729
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153926_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155729)))
                             (__tmp155723
                              (let ((__tmp155725
                                     (let ((__tmp155726
                                            (let ((__tmp155727
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153857_
                                                      __slot154739
                                                      __klass154735
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp155727 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155726)))
                                    (__tmp155724
                                     (let ()
                                       (declare (not safe))
                                       (cons _value153918_ '()))))
                                (declare (not safe))
                                (cons __tmp155725 __tmp155724))))
                         (declare (not safe))
                         (cons __tmp155728 __tmp155723))))
                  (declare (not safe))
                  (cons __tmp155730 __tmp155722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155733
                                                         __tmp155721))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155720))))
                                     (declare (not safe))
                                     (cons __tmp155719 '()))))
                              (declare (not safe))
                              (cons __tmp155735 __tmp155718))))
                       (declare (not safe))
                       (cons __tmp155747 __tmp155717))))
                (declare (not safe))
                (cons '%#if __tmp155716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp155715 '()))))
                                          (declare (not safe))
                                          (cons __tmp155755 __tmp155714))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp155713))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp155711 _stx153859_))
                         (let ((__tmp155701
                                (let ((__tmp155702
                                       (let ((__tmp155709
                                              (let ((__tmp155710
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp155710)))
                                             (__tmp155703
                                              (let ((__tmp155704
                                                     (let ((__tmp155706
                                                            (let ((__tmp155707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155708
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self153857_
                                     __slot154739
                                     __klass154735
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp155708 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155707)))
                   (__tmp155705
                    (let () (declare (not safe)) (cons _value153918_ '()))))
               (declare (not safe))
               (cons __tmp155706 __tmp155705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object153916_
                                                      __tmp155704))))
                                         (declare (not safe))
                                         (cons __tmp155709 __tmp155703))))
                                  (declare (not safe))
                                  (cons '%#call __tmp155702))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp155701
                            _stx153859_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd153870153892_
                                           _hd153867153884_)
                                          (let ()
                                            (declare (not safe))
                                            (_g153862153876_
                                             _g153863153879_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g153862153876_ _g153863153879_)))))
                          (let ()
                            (declare (not safe))
                            (_g153862153876_ _g153863153879_))))))
              (declare (not safe))
              (_g153861153928_ _args153860_))))))
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
      (lambda (_self153690_ _ctx153691_ _stx153692_ _args153693_)
        (let* ((_self153694153703_ _self153690_)
               (_E153696153707_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153694153703_))))
               (_K153697153714_
                (lambda (_inline153710_ _dispatch153711_ _arity153712_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self153690_ _args153693_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx153692_
                         _arity153712_)))
                  (if _inline153710_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp155797
                               (let ((__tmp155798
                                      (_inline153710_ _stx153692_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp155798
                                  _stx153692_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx153691_ __tmp155797)))
                      (if _dispatch153711_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch153711_))
                            (let ((__tmp155792
                                   (let ((__tmp155793
                                          (let ((__tmp155794
                                                 (let ((__tmp155795
                                                        (let ((__tmp155796
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch153711_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp155796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp155795
                                                         _args153693_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp155794))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp155793
                                      _stx153692_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx153691_ __tmp155792)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx153691_ _stx153692_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153694153703_ 'gxc#!lambda::t))
              (let* ((_e153698153717_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153694153703_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153699153720_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153694153703_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153723_ _e153699153720_)
                     (_e153700153725_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153694153703_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch153728_ _e153700153725_)
                     (_e153701153730_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153694153703_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline153733_ _e153701153730_))
                (declare (not safe))
                (_K153697153714_
                 _inline153733_
                 _dispatch153728_
                 _arity153723_))
              (let () (declare (not safe)) (_E153696153707_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self153528_ _ctx153529_ _stx153530_ _args153531_)
        (let* ((_self153532153539_ _self153528_)
               (_E153534153543_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153532153539_))))
               (_K153535153557_
                (lambda (_clauses153546_)
                  (let ((_$e153552_
                         (let ((__tmp155799
                                (lambda (_g153547153549_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g153547153549_
                                     _args153531_)))))
                           (declare (not safe))
                           (find __tmp155799 _clauses153546_))))
                    (if _$e153552_
                        ((lambda (_clause153555_)
                           (let ((__method155013
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause153555_
                                     'optimize-call))))
                             (if __method155013
                                 (__method155013
                                  _clause153555_
                                  _ctx153529_
                                  _stx153530_
                                  _args153531_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause153555_
                                          'optimize-call)))))
                         _$e153552_)
                        (let ((__tmp155800
                               (map gxc#!lambda-arity _clauses153546_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx153530_
                           __tmp155800)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153532153539_
                 'gxc#!case-lambda::t))
              (let* ((_e153536153560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153532153539_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153537153563_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153532153539_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses153566_ _e153537153563_))
                (declare (not safe))
                (_K153535153557_ _clauses153566_))
              (let () (declare (not safe)) (_E153534153543_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self153342_ _args153343_)
        (let* ((_self153344153351_ _self153342_)
               (_E153346153355_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153344153351_))))
               (_K153347153395_
                (lambda (_arity153358_)
                  (let* ((_arity153359153368_ _arity153358_)
                         (_E153362153372_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity153359153368_)))))
                    (let ((_K153366153392_
                           (lambda ()
                             (fx= (length _args153343_) _arity153358_)))
                          (_K153363153378_
                           (lambda (_arity153376_)
                             (fx>= (length _args153343_) _arity153376_))))
                      (let ((_try-match153361153388_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity153359153368_))
                                   (let ((_tl153365153383_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity153359153368_)))
                                         (_hd153364153381_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity153359153368_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl153365153383_))
                                         (let ((_arity153386_
                                                _hd153364153381_))
                                           (declare (not safe))
                                           (_K153363153378_ _arity153386_))
                                         (let ()
                                           (declare (not safe))
                                           (_E153362153372_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E153362153372_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity153359153368_))
                            (let () (declare (not safe)) (_K153366153392_))
                            (let ()
                              (declare (not safe))
                              (_try-match153361153388_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self153344153351_ 'gxc#!lambda::t))
              (let* ((_e153348153398_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153344153351_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153349153401_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153344153351_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity153404_ _e153349153401_))
                (declare (not safe))
                (_K153347153395_ _arity153404_))
              (let () (declare (not safe)) (_E153346153355_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self153226_ _ctx153227_ _stx153228_ _args153229_)
        (let* ((_self153230153238_ _self153226_)
               (_E153232153242_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self153230153238_))))
               (_K153233153326_
                (lambda (_dispatch153245_ _table153246_)
                  (let* ((_g153247153256_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch153245_)))
                         (_else153249153264_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch153245_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx153227_ _stx153228_))))
                         (_K153251153310_
                          (lambda (_main153267_ _keys153268_)
                            (let ((_g155801_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx153228_
                                      _args153229_))))
                              (begin
                                (let ((_g155802_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g155801_)
                                             (##vector-length _g155801_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g155802_ 2)))
                                      (error "Context expects 2 values"
                                             _g155802_)))
                                (let ((_pargs153270_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155801_ 0)))
                                      (_kwargs153271_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g155801_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main153267_))
                                    (if _table153246_
                                        (let ((_xargs153278_
                                               (map (lambda (_key153273_)
                                                      (let ((_$e153275_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key153273_ _kwargs153271_))))
                (if _$e153275_ (values _$e153275_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys153268_)))
                                          (for-each
                                           (lambda (_kw153280_)
                                             (if (memq (car _kw153280_)
                                                       _keys153268_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx153228_
                                                    _keys153268_
                                                    _kw153280_))))
                                           _kwargs153271_)
                                          (let ((__tmp155854
                                                 (let ((__tmp155855
                                                        (let ((__tmp155856
                                                               (let ((__tmp155861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155862
                                     (let ()
                                       (declare (not safe))
                                       (cons _main153267_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp155862)))
                             (__tmp155857
                              (let ((__tmp155859
                                     (let ((__tmp155860
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp155860)))
                                    (__tmp155858
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs153270_
                                               _xargs153278_))))
                                (declare (not safe))
                                (cons __tmp155859 __tmp155858))))
                         (declare (not safe))
                         (cons __tmp155861 __tmp155857))))
                  (declare (not safe))
                  (cons '%#call __tmp155856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155855
                                                    _stx153228_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153227_
                                             __tmp155854)))
                                        (let* ((_kwt153282_
                                                (let ((__tmp155803
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp155803)))
                                               (_kwvars153285_
                                                (map (lambda (_g155804_)
                                                       (let ((__tmp155805
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp155805)))
                                                     _kwargs153271_))
                                               (_kwbind153290_
                                                (map (lambda (_kw153287_
                                                              _kwvar153288_)
                                                       (let ((__tmp155808
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar153288_ '())))
                     (__tmp155806
                      (let ((__tmp155807 (cdr _kw153287_)))
                        (declare (not safe))
                        (cons __tmp155807 '()))))
                 (declare (not safe))
                 (cons __tmp155808 __tmp155806)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153271_
                                                     _kwvars153285_))
                                               (_kwset153295_
                                                (map (lambda (_kw153292_
                                                              _kwvar153293_)
                                                       (let ((__tmp155809
                                                              (let ((__tmp155810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp155818
                                    (let ((__tmp155819
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt153282_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp155819)))
                                   (__tmp155811
                                    (let ((__tmp155815
                                           (let ((__tmp155816
                                                  (let ((__tmp155817
                                                         (car _kw153292_)))
                                                    (declare (not safe))
                                                    (cons __tmp155817 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp155816)))
                                          (__tmp155812
                                           (let ((__tmp155813
                                                  (let ((__tmp155814
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar153293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp155814))))
                                             (declare (not safe))
                                             (cons __tmp155813 '()))))
                                      (declare (not safe))
                                      (cons __tmp155815 __tmp155812))))
                               (declare (not safe))
                               (cons __tmp155818 __tmp155811))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp155810))))
                 (declare (not safe))
                 (cons '%#call __tmp155809)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153271_
                                                     _kwvars153285_))
                                               (_xkwargs153300_
                                                (map (lambda (_kw153297_
                                                              _kwvar153298_)
                                                       (let ((__tmp155822
                                                              (car _kw153297_))
                                                             (__tmp155820
                                                              (let ((__tmp155821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar153298_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp155821))))
                 (declare (not safe))
                 (cons __tmp155822 __tmp155820)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs153271_
                                                     _kwvars153285_))
                                               (_xargs153307_
                                                (map (lambda (_key153302_)
                                                       (let ((_$e153304_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key153302_ _xkwargs153300_))))
                 (if _$e153304_ (values _$e153304_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys153268_)))
                                          (let ((__tmp155823
                                                 (let ((__tmp155824
                                                        (let ((__tmp155825
                                                               (let ((__tmp155826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp155827
                                     (let ((__tmp155828
                                            (let ((__tmp155842
                                                   (let ((__tmp155843
                                                          (let ((__tmp155853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt153282_ '())))
                        (__tmp155844
                         (let ((__tmp155845
                                (let ((__tmp155846
                                       (let ((__tmp155847
                                              (let ((__tmp155848
                                                     (let ((__tmp155850
                                                            (let ((__tmp155851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp155852 (length _kwargs153271_)))
                             (declare (not safe))
                             (cons __tmp155852 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp155851)))
                   (__tmp155849
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp155850 __tmp155849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp155848))))
                                         (declare (not safe))
                                         (cons '%#call __tmp155847))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp155846
                                   _stx153228_))))
                           (declare (not safe))
                           (cons __tmp155845 '()))))
                    (declare (not safe))
                    (cons __tmp155853 __tmp155844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155843 '())))
                                                  (__tmp155829
                                                   (let ((__tmp155830
                                                          (let ((__tmp155831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp155832
                                (let ((__tmp155833
                                       (let ((__tmp155834
                                              (let ((__tmp155835
                                                     (let ((__tmp155840
                                                            (let ((__tmp155841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main153267_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp155841)))
                   (__tmp155836
                    (let ((__tmp155838
                           (let ((__tmp155839
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt153282_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp155839)))
                          (__tmp155837
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs153270_ _xargs153307_))))
                      (declare (not safe))
                      (cons __tmp155838 __tmp155837))))
               (declare (not safe))
               (cons __tmp155840 __tmp155836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp155835))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp155834
                                          _stx153228_))))
                                  (declare (not safe))
                                  (cons __tmp155833 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp155832 _kwset153295_))))
                    (declare (not safe))
                    (cons '%#begin __tmp155831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp155830 '()))))
                                              (declare (not safe))
                                              (cons __tmp155842 __tmp155829))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp155828))))
                                (declare (not safe))
                                (cons __tmp155827 '()))))
                         (declare (not safe))
                         (cons _kwbind153290_ __tmp155826))))
                  (declare (not safe))
                  (cons '%#let-values __tmp155825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp155824
                                                    _stx153228_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx153227_
                                             __tmp155823)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g153247153256_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e153252153313_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153247153256_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e153253153316_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153247153256_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys153319_ _e153253153316_)
                               (_e153254153321_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g153247153256_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main153324_ _e153254153321_))
                          (declare (not safe))
                          (_K153251153310_ _main153324_ _keys153319_))
                        (let () (declare (not safe)) (_else153249153264_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self153230153238_
                 'gxc#!kw-lambda::t))
              (let* ((_e153234153329_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153230153238_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e153235153332_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153230153238_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table153335_ _e153235153332_)
                     (_e153236153337_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self153230153238_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch153340_ _e153236153337_))
                (declare (not safe))
                (_K153233153326_ _dispatch153340_ _table153335_))
              (let () (declare (not safe)) (_E153232153242_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx152839_ _args152840_)
        (let _lp152842_ ((_rest152844_ _args152840_)
                         (_pargs152845_ '())
                         (_kwargs152846_ '()))
          (let* ((___stx154893154894_ _rest152844_)
                 (_g152852152904_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx154893154894_)))))
            (let ((___kont154895154896_
                   (lambda (_L153083_ _L153084_)
                     (let ((__tmp155863
                            (let ()
                              (declare (not safe))
                              (cons _L153084_ _pargs152845_))))
                       (declare (not safe))
                       (_lp152842_ _L153083_ __tmp155863 _kwargs152846_))))
                  (___kont154897154898_
                   (lambda (_L153029_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L153029_ _pargs152845_))
                             (reverse _kwargs152846_))))
                  (___kont154899154900_
                   (lambda (_L152976_ _L152977_ _L152978_)
                     (let ((_kw152995_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L152978_))))
                       (if (assq _kw152995_ _kwargs152846_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx152839_
                              _kw152995_))
                           (let ((__tmp155864
                                  (let ((__tmp155865
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw152995_ _L152977_))))
                                    (declare (not safe))
                                    (cons __tmp155865 _kwargs152846_))))
                             (declare (not safe))
                             (_lp152842_
                              _L152976_
                              _pargs152845_
                              __tmp155864))))))
                  (___kont154901154902_
                   (lambda (_L152924_ _L152925_)
                     (let ((__tmp155866
                            (let ()
                              (declare (not safe))
                              (cons _L152925_ _pargs152845_))))
                       (declare (not safe))
                       (_lp152842_ _L152924_ __tmp155866 _kwargs152846_))))
                  (___kont154903154904_
                   (lambda ()
                     (values (reverse _pargs152845_)
                             (reverse _kwargs152846_)))))
              (let* ((_g152851152911_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx154893154894_))
                            (___kont154903154904_)
                            (let () (declare (not safe)) (_g152852152904_)))))
                     (___match155000155001_
                      (lambda (_e152885152944_
                               _hd152884152947_
                               _tl152883152949_
                               _e152888152952_
                               _hd152887152955_
                               _tl152886152957_
                               _e152891152960_
                               _hd152890152963_
                               _tl152889152965_
                               _e152894152968_
                               _hd152893152971_
                               _tl152892152973_)
                        (let ((_L152976_ _tl152892152973_)
                              (_L152977_ _hd152893152971_)
                              (_L152978_ _hd152890152963_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L152978_))
                              (___kont154899154900_
                               _L152976_
                               _L152977_
                               _L152978_)
                              (___kont154901154902_
                               _tl152883152949_
                               _hd152884152947_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx154893154894_))
                    (let ((_e152858153048_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx154893154894_))))
                      (let ((_tl152856153053_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152858153048_)))
                            (_hd152857153051_
                             (let ()
                               (declare (not safe))
                               (##car _e152858153048_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd152857153051_))
                            (let ((_e152861153056_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd152857153051_))))
                              (let ((_tl152859153061_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152861153056_)))
                                    (_hd152860153059_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152861153056_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd152860153059_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd152860153059_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl152859153061_))
                                            (let ((_e152864153064_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl152859153061_))))
                                              (let ((_tl152862153069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152864153064_)))
                                                    (_hd152863153067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152864153064_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd152863153067_))
                                                    (let ((_e152865153072_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152863153067_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e152865153072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl152862153069_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl152856153053_))
                          (let ((_e152868153075_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl152856153053_))))
                            (let ((_tl152866153080_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152868153075_)))
                                  (_hd152867153078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152868153075_))))
                              (___kont154895154896_
                               _tl152866153080_
                               _hd152867153078_)))
                          (___kont154901154902_
                           _tl152856153053_
                           _hd152857153051_))
                      (___kont154901154902_ _tl152856153053_ _hd152857153051_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e152865153072_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152862153069_))
                          (___kont154897154898_ _tl152856153053_)
                          (___kont154901154902_
                           _tl152856153053_
                           _hd152857153051_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl152862153069_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152856153053_))
                              (let ((_e152894152968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152856153053_))))
                                (let ((_tl152892152973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152894152968_)))
                                      (_hd152893152971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152894152968_))))
                                  (___match155000155001_
                                   _e152858153048_
                                   _hd152857153051_
                                   _tl152856153053_
                                   _e152861153056_
                                   _hd152860153059_
                                   _tl152859153061_
                                   _e152864153064_
                                   _hd152863153067_
                                   _tl152862153069_
                                   _e152894152968_
                                   _hd152893152971_
                                   _tl152892152973_)))
                              (___kont154901154902_
                               _tl152856153053_
                               _hd152857153051_))
                          (___kont154901154902_
                           _tl152856153053_
                           _hd152857153051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152862153069_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl152856153053_))
                                                            (let ((_e152894152968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl152856153053_))))
                      (let ((_tl152892152973_
                             (let ()
                               (declare (not safe))
                               (##cdr _e152894152968_)))
                            (_hd152893152971_
                             (let ()
                               (declare (not safe))
                               (##car _e152894152968_))))
                        (___match155000155001_
                         _e152858153048_
                         _hd152857153051_
                         _tl152856153053_
                         _e152861153056_
                         _hd152860153059_
                         _tl152859153061_
                         _e152864153064_
                         _hd152863153067_
                         _tl152862153069_
                         _e152894152968_
                         _hd152893152971_
                         _tl152892152973_)))
                    (___kont154901154902_ _tl152856153053_ _hd152857153051_))
                (___kont154901154902_ _tl152856153053_ _hd152857153051_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont154901154902_
                                             _tl152856153053_
                                             _hd152857153051_))
                                        (___kont154901154902_
                                         _tl152856153053_
                                         _hd152857153051_))
                                    (___kont154901154902_
                                     _tl152856153053_
                                     _hd152857153051_))))
                            (___kont154901154902_
                             _tl152856153053_
                             _hd152857153051_))))
                    (let () (declare (not safe)) (_g152851152911_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self152834_ _ctx152835_ _stx152836_ _args152837_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx152835_ _stx152836_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
