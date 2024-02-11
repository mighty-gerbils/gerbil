(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707674937)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl277120_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp281979 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl277120_ __tmp281979))
           (let ()
             (declare (not safe))
             (table-set! _tbl277120_ '%#call gxc#optimize-call%))
           _tbl277120_))))
    (define gxc#apply-optimize-call
      (lambda (_stx277103_ . _args277105_)
        (let ((__tmp281981
               (lambda ()
                 (declare (not safe))
                 (if (null? _args277105_)
                     (gxc#compile-e__0 _stx277103_)
                     (let ((_arg1277110_ (car _args277105_))
                           (_rest277112_ (cdr _args277105_)))
                       (if (null? _rest277112_)
                           (gxc#compile-e__1 _stx277103_ _arg1277110_)
                           (let ((_arg2277115_ (car _rest277112_))
                                 (_rest277117_ (cdr _rest277112_)))
                             (if (null? _rest277117_)
                                 (gxc#compile-e__2
                                  _stx277103_
                                  _arg1277110_
                                  _arg2277115_)
                                 (apply gxc#compile-e
                                        _stx277103_
                                        _arg1277110_
                                        _arg2277115_
                                        _rest277117_))))))))
              (__tmp281980 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp281981
           gxc#current-compile-methods
           __tmp281980))))
    (define gxc#optimize-call%
      (lambda (_stx276958_)
        (let* ((___stx281729281730_ _stx276958_)
               (_g276961276981_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281729281730_)))))
          (let ((___kont281731281732_
                 (lambda (_L277025_ _L277026_)
                   (let* ((_rator-id277044_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L277026_)))
                          (_rator-type277046_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id277044_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type277046_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp281982
                                  (##structure-ref
                                   _rator-type277046_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id277044_
                              '" => "
                              _rator-type277046_
                              '" "
                              __tmp281982))
                           (let ((_optimized277049_
                                  (let ((__method281977
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type277046_
                                            'optimize-call))))
                                    (if __method281977
                                        (__method281977
                                         _rator-type277046_
                                         _stx276958_
                                         _L277025_)
                                        (error '"Missing method"
                                               _rator-type277046_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type277046_))
                                 _optimized277049_
                                 (let* ((___stx281711281712_ _optimized277049_)
                                        (_g277052277062_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx281711281712_)))))
                                   (let ((___kont281713281714_
                                          (lambda (_L277082_)
                                            (let ((__tmp281983
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L277082_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp281983
                                               _stx276958_))))
                                         (___kont281715281716_
                                          (lambda () _optimized277049_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx281711281712_))
                                         (let ((_e277057277074_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx281711281712_))))
                                           (let ((_tl277055277079_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e277057277074_)))
                                                 (_hd277056277077_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e277057277074_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd277056277077_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd277056277077_))
                                                     (___kont281713281714_
                                                      _tl277055277079_)
                                                     (___kont281715281716_))
                                                 (___kont281715281716_))))
                                         (___kont281715281716_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type277046_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx276958_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx276958_
                                _rator-type277046_)))))))
                (___kont281733281734_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx276958_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx281729281730_))
                (let ((_e276967276993_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx281729281730_))))
                  (let ((_tl276965276998_
                         (let () (declare (not safe)) (##cdr _e276967276993_)))
                        (_hd276966276996_
                         (let ()
                           (declare (not safe))
                           (##car _e276967276993_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl276965276998_))
                        (let ((_e276970277001_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl276965276998_))))
                          (let ((_tl276968277006_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e276970277001_)))
                                (_hd276969277004_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e276970277001_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd276969277004_))
                                (let ((_e276973277009_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd276969277004_))))
                                  (let ((_tl276971277014_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e276973277009_)))
                                        (_hd276972277012_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e276973277009_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd276972277012_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd276972277012_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276971277014_))
                                                (let ((_e276976277017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276971277014_))))
                                                  (let ((_tl276974277022_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276976277017_)))
                                                        (_hd276975277020_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276976277017_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276974277022_))
                                                        (___kont281731281732_
                                                         _tl276968277006_
                                                         _hd276975277020_)
                                                        (___kont281733281734_))))
                                                (___kont281733281734_))
                                            (___kont281733281734_))
                                        (___kont281733281734_))))
                                (___kont281733281734_))))
                        (___kont281733281734_))))
                (___kont281733281734_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self276912_ _stx276913_ _args276914_)
        (let* ((_g276916276926_
                (lambda (_g276917276923_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276917276923_))))
               (_g276915276955_
                (lambda (_g276917276929_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276917276929_))
                      (let ((_e276921276931_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276917276929_))))
                        (let ((_hd276920276934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276921276931_)))
                              (_tl276919276936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276921276931_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276919276936_))
                              ((lambda (_L276939_)
                                 (let* ((_klass276950_
                                         (let ((__tmp281984
                                                (##structure-ref
                                                 _self276912_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276913_
                                            __tmp281984)))
                                        (_object276952_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276939_))))
                                   (if (##structure-ref
                                        _klass276950_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282000
                                              (let ((__tmp282001
                                                     (let ((__tmp282003
                                                            (let ((__tmp282004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282005
                                  (##structure-ref
                                   _klass276950_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282005 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282004)))
                   (__tmp282002
                    (let () (declare (not safe)) (cons _object276952_ '()))))
               (declare (not safe))
               (cons __tmp282003 __tmp282002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp282001))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282000
                                          _stx276913_))
                                       (if (##structure-ref
                                            _klass276950_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp281994
                                                  (let ((__tmp281995
                                                         (let ((__tmp281997
                                                                (let ((__tmp281998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp281999
                                      (##structure-ref
                                       _klass276950_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp281999 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp281998)))
                       (__tmp281996
                        (let ()
                          (declare (not safe))
                          (cons _object276952_ '()))))
                   (declare (not safe))
                   (cons __tmp281997 __tmp281996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp281995))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp281994
                                              _stx276913_))
                                           (let ((__tmp281985
                                                  (let ((__tmp281986
                                                         (let ((__tmp281992
                                                                (let ((__tmp281993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp281993)))
                       (__tmp281987
                        (let ((__tmp281989
                               (let ((__tmp281990
                                      (let ((__tmp281991
                                             (##structure-ref
                                              _self276912_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp281991 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp281990)))
                              (__tmp281988
                               (let ()
                                 (declare (not safe))
                                 (cons _object276952_ '()))))
                          (declare (not safe))
                          (cons __tmp281989 __tmp281988))))
                   (declare (not safe))
                   (cons __tmp281992 __tmp281987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp281986))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp281985
                                              _stx276913_))))))
                               _hd276920276934_)
                              (let ()
                                (declare (not safe))
                                (_g276916276926_ _g276917276929_)))))
                      (let ()
                        (declare (not safe))
                        (_g276916276926_ _g276917276929_))))))
          (declare (not safe))
          (_g276915276955_ _args276914_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t281690)
        (let ((__id281691
               (let ((__tmp281692
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281690 'id))))
                 (if __tmp281692 __tmp281692 (error '"Unknown slot" 'id)))))
          (lambda (_self276912_ _stx276913_ _args276914_)
            (let* ((_g276916276926_
                    (lambda (_g276917276923_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276917276923_))))
                   (_g276915276955_
                    (lambda (_g276917276929_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276917276929_))
                          (let ((_e276921276931_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276917276929_))))
                            (let ((_hd276920276934_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276921276931_)))
                                  (_tl276919276936_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276921276931_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276919276936_))
                                  ((lambda (_L276939_)
                                     (let* ((_klass276950_
                                             (let ((__tmp282006
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276912_
                                                       __id281691
                                                       __t281690
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276913_
                                                __tmp282006)))
                                            (_object276952_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276939_))))
                                       (if (##structure-ref
                                            _klass276950_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282022
                                                  (let ((__tmp282023
                                                         (let ((__tmp282025
                                                                (let ((__tmp282026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282027
                                      (##structure-ref
                                       _klass276950_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282027 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282026)))
                       (__tmp282024
                        (let ()
                          (declare (not safe))
                          (cons _object276952_ '()))))
                   (declare (not safe))
                   (cons __tmp282025 __tmp282024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp282023))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282022
                                              _stx276913_))
                                           (if (##structure-ref
                                                _klass276950_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282016
                                                      (let ((__tmp282017
                                                             (let ((__tmp282019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282020
                                   (let ((__tmp282021
                                          (##structure-ref
                                           _klass276950_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282021 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp282020)))
                           (__tmp282018
                            (let ()
                              (declare (not safe))
                              (cons _object276952_ '()))))
                       (declare (not safe))
                       (cons __tmp282019 __tmp282018))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp282017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282016
                                                  _stx276913_))
                                               (let ((__tmp282007
                                                      (let ((__tmp282008
                                                             (let ((__tmp282014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282015
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282015)))
                           (__tmp282009
                            (let ((__tmp282011
                                   (let ((__tmp282012
                                          (let ((__tmp282013
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self276912_
                                                    __id281691
                                                    __t281690
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp282013 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp282012)))
                                  (__tmp282010
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276952_ '()))))
                              (declare (not safe))
                              (cons __tmp282011 __tmp282010))))
                       (declare (not safe))
                       (cons __tmp282014 __tmp282009))))
                (declare (not safe))
                (cons '%#call __tmp282008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282007
                                                  _stx276913_))))))
                                   _hd276920276934_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276916276926_ _g276917276929_)))))
                          (let ()
                            (declare (not safe))
                            (_g276916276926_ _g276917276929_))))))
              (declare (not safe))
              (_g276915276955_ _args276914_))))))
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
      (lambda (_self276643_ _stx276644_ _args276645_)
        (let* ((_klass276647_
                (let ((__tmp282028
                       (##structure-ref _self276643_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx276644_ __tmp282028)))
               (_fields276649_
                (length (##structure-ref _klass276647_ '5 gxc#!class::t '#f)))
               (_args276651_ (map gxc#compile-e _args276645_))
               (_inline-make-object276653_
                (let ((__tmp282029
                       (let ((__tmp282035
                              (let ((__tmp282036
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282036)))
                             (__tmp282030
                              (let ((__tmp282032
                                     (let ((__tmp282033
                                            (let ((__tmp282034
                                                   (##structure-ref
                                                    _self276643_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282034 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282033)))
                                    (__tmp282031
                                     (make-list _fields276649_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp282032 __tmp282031))))
                         (declare (not safe))
                         (cons __tmp282035 __tmp282030))))
                  (declare (not safe))
                  (cons '%#call __tmp282029))))
          (let ((_$e276656_
                 (##structure-ref _klass276647_ '6 gxc#!class::t '#f)))
            (if _$e276656_
                ((lambda (_ctor276659_)
                   (let ((_$obj276661_
                          (let ((__tmp282098 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp282098)))
                         (_ctor-impl276662_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass276647_
                             _ctor276659_))))
                     (let ((__tmp282099
                            (let ((__tmp282100
                                   (let ((__tmp282165
                                          (let ((__tmp282166
                                                 (let ((__tmp282168
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276661_
                                                                '())))
                                                       (__tmp282167
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object276653_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp282168
                                                         __tmp282167))))
                                            (declare (not safe))
                                            (cons __tmp282166 '())))
                                         (__tmp282101
                                          (let ((__tmp282102
                                                 (let ((__tmp282103
                                                        (let ((__tmp282107
                                                               (if _ctor-impl276662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282159
                                  (let ((__tmp282163
                                         (let ((__tmp282164
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl276662_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282164)))
                                        (__tmp282160
                                         (let ((__tmp282161
                                                (let ((__tmp282162
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276661_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282162))))
                                           (declare (not safe))
                                           (cons __tmp282161 _args276651_))))
                                    (declare (not safe))
                                    (cons __tmp282163 __tmp282160))))
                             (declare (not safe))
                             (cons '%#call __tmp282159))
                           (let* ((_$ctor276664_
                                   (let ((__tmp282108 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp282108)))
                                  (__tmp282109
                                   (let ((__tmp282144
                                          (let ((__tmp282145
                                                 (let ((__tmp282158
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor276664_
                                                                '())))
                                                       (__tmp282146
                                                        (let ((__tmp282147
                                                               (let ((__tmp282148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282156
                                     (let ((__tmp282157
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282157)))
                                    (__tmp282149
                                     (let ((__tmp282153
                                            (let ((__tmp282154
                                                   (let ((__tmp282155
                                                          (##structure-ref
                                                           _self276643_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp282155 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282154)))
                                           (__tmp282150
                                            (let ((__tmp282151
                                                   (let ((__tmp282152
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor276659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp282152))))
                                              (declare (not safe))
                                              (cons __tmp282151 '()))))
                                       (declare (not safe))
                                       (cons __tmp282153 __tmp282150))))
                                (declare (not safe))
                                (cons __tmp282156 __tmp282149))))
                         (declare (not safe))
                         (cons '%#call __tmp282148))))
                  (declare (not safe))
                  (cons __tmp282147 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282158
                                                         __tmp282146))))
                                            (declare (not safe))
                                            (cons __tmp282145 '())))
                                         (__tmp282110
                                          (let ((__tmp282111
                                                 (let ((__tmp282112
                                                        (let ((__tmp282142
                                                               (let ((__tmp282143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor276664_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282143)))
                      (__tmp282113
                       (let ((__tmp282135
                              (let ((__tmp282136
                                     (let ((__tmp282140
                                            (let ((__tmp282141
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor276664_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282141)))
                                           (__tmp282137
                                            (let ((__tmp282138
                                                   (let ((__tmp282139
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282139))))
                                              (declare (not safe))
                                              (cons __tmp282138
                                                    _args276651_))))
                                       (declare (not safe))
                                       (cons __tmp282140 __tmp282137))))
                                (declare (not safe))
                                (cons '%#call __tmp282136)))
                             (__tmp282114
                              (let ((__tmp282115
                                     (let ((__tmp282116
                                            (let ((__tmp282133
                                                   (let ((__tmp282134
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282134)))
                                                  (__tmp282117
                                                   (let ((__tmp282131
                                                          (let ((__tmp282132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp282132)))
                 (__tmp282118
                  (let ((__tmp282129
                         (let ((__tmp282130
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282130)))
                        (__tmp282119
                         (let ((__tmp282126
                                (let ((__tmp282127
                                       (let ((__tmp282128
                                              (##structure-ref
                                               _self276643_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282128 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282127)))
                               (__tmp282120
                                (let ((__tmp282124
                                       (let ((__tmp282125
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282125)))
                                      (__tmp282121
                                       (let ((__tmp282122
                                              (let ((__tmp282123
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor276659_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp282123))))
                                         (declare (not safe))
                                         (cons __tmp282122 '()))))
                                  (declare (not safe))
                                  (cons __tmp282124 __tmp282121))))
                           (declare (not safe))
                           (cons __tmp282126 __tmp282120))))
                    (declare (not safe))
                    (cons __tmp282129 __tmp282119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282131
                                                           __tmp282118))))
                                              (declare (not safe))
                                              (cons __tmp282133 __tmp282117))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282116))))
                                (declare (not safe))
                                (cons __tmp282115 '()))))
                         (declare (not safe))
                         (cons __tmp282135 __tmp282114))))
                  (declare (not safe))
                  (cons __tmp282142 __tmp282113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp282112))))
                                            (declare (not safe))
                                            (cons __tmp282111 '()))))
                                     (declare (not safe))
                                     (cons __tmp282144 __tmp282110))))
                             (declare (not safe))
                             (cons '%#let-values __tmp282109))))
                      (__tmp282104
                       (let ((__tmp282105
                              (let ((__tmp282106
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276661_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282106))))
                         (declare (not safe))
                         (cons __tmp282105 '()))))
                  (declare (not safe))
                  (cons __tmp282107 __tmp282104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp282103))))
                                            (declare (not safe))
                                            (cons __tmp282102 '()))))
                                     (declare (not safe))
                                     (cons __tmp282165 __tmp282101))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282100))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282099 _stx276644_))))
                 _$e276656_)
                (if (##structure-ref _klass276647_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args276651_) _fields276649_)
                        (let ((__tmp282090
                               (let ((__tmp282091
                                      (let ((__tmp282096
                                             (let ((__tmp282097
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282097)))
                                            (__tmp282092
                                             (let ((__tmp282093
                                                    (let ((__tmp282094
                                                           (let ((__tmp282095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self276643_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp282095 '()))))
              (declare (not safe))
              (cons '%#ref __tmp282094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282093
                                                     _args276651_))))
                                        (declare (not safe))
                                        (cons __tmp282096 __tmp282092))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282091))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282090 _stx276644_))
                        (let ((__tmp282089
                               (##structure-ref
                                _self276643_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp282088
                               (length (##structure-ref
                                        _klass276647_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx276644_
                           __tmp282089
                           __tmp282088)))
                    (let ((_$obj276666_
                           (let ((__tmp282037 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp282037))))
                      (let _lp276668_ ((_rest276670_ _args276651_)
                                       (_initializers276671_ '()))
                        (let* ((___stx281767281768_ _rest276670_)
                               (_g276675276696_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx281767281768_)))))
                          (let ((___kont281769281770_
                                 (lambda (_L276750_ _L276751_ _L276752_)
                                   (let* ((_slot276782_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L276752_))))
                                          (_off276784_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass276647_
                                              _slot276782_))))
                                     (if _off276784_
                                         (let ((__tmp282039
                                                (let ((__tmp282040
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off276784_
                                                               _L276751_))))
                                                  (declare (not safe))
                                                  (cons __tmp282040
                                                        _initializers276671_))))
                                           (declare (not safe))
                                           (_lp276668_ _L276750_ __tmp282039))
                                         (let ((__tmp282038
                                                (##structure-ref
                                                 _self276643_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx276644_
                                            __tmp282038
                                            _slot276782_))))))
                                (___kont281771281772_
                                 (lambda ()
                                   (let ((__tmp282041
                                          (let ((__tmp282042
                                                 (let ((__tmp282065
                                                        (let ((__tmp282066
                                                               (let ((__tmp282068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276666_ '())))
                             (__tmp282067
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276653_ '()))))
                         (declare (not safe))
                         (cons __tmp282068 __tmp282067))))
                  (declare (not safe))
                  (cons __tmp282066 '())))
               (__tmp282043
                (let ((__tmp282044
                       (let ((__tmp282045
                              (let ((__tmp282062
                                     (let ((__tmp282063
                                            (let ((__tmp282064
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276666_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282064))))
                                       (declare (not safe))
                                       (cons __tmp282063 '())))
                                    (__tmp282046
                                     (let ((__tmp282047
                                            (lambda (_i276710_ _r276711_)
                                              (let ((__tmp282048
                                                     (let ((__tmp282049
                                                            (let ((__tmp282059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282060
                                  (let ((__tmp282061
                                         (##structure-ref
                                          _self276643_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp282061 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282060)))
                          (__tmp282050
                           (let ((__tmp282056
                                  (let ((__tmp282057
                                         (let ((__tmp282058 (car _i276710_)))
                                           (declare (not safe))
                                           (cons __tmp282058 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282057)))
                                 (__tmp282051
                                  (let ((__tmp282054
                                         (let ((__tmp282055
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276666_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282055)))
                                        (__tmp282052
                                         (let ((__tmp282053 (cdr _i276710_)))
                                           (declare (not safe))
                                           (cons __tmp282053 '()))))
                                    (declare (not safe))
                                    (cons __tmp282054 __tmp282052))))
                             (declare (not safe))
                             (cons __tmp282056 __tmp282051))))
                      (declare (not safe))
                      (cons __tmp282059 __tmp282050))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp282049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282048
                                                      _r276711_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp282047
                                               '()
                                               _initializers276671_))))
                                (declare (not safe))
                                (foldr1 cons __tmp282062 __tmp282046))))
                         (declare (not safe))
                         (cons '%#begin __tmp282045))))
                  (declare (not safe))
                  (cons __tmp282044 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282065
                                                         __tmp282043))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282042))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282041
                                      _stx276644_))))
                                (___kont281773281774_
                                 (lambda ()
                                   (let ((__tmp282069
                                          (let ((__tmp282070
                                                 (let ((__tmp282084
                                                        (let ((__tmp282085
                                                               (let ((__tmp282087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276666_ '())))
                             (__tmp282086
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276653_ '()))))
                         (declare (not safe))
                         (cons __tmp282087 __tmp282086))))
                  (declare (not safe))
                  (cons __tmp282085 '())))
               (__tmp282071
                (let ((__tmp282072
                       (let ((__tmp282073
                              (let ((__tmp282077
                                     (let ((__tmp282078
                                            (let ((__tmp282082
                                                   (let ((__tmp282083
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282083)))
                                                  (__tmp282079
                                                   (let ((__tmp282080
                                                          (let ((__tmp282081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276666_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282080
                                                           _args276651_))))
                                              (declare (not safe))
                                              (cons __tmp282082 __tmp282079))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282078)))
                                    (__tmp282074
                                     (let ((__tmp282075
                                            (let ((__tmp282076
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276666_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282076))))
                                       (declare (not safe))
                                       (cons __tmp282075 '()))))
                                (declare (not safe))
                                (cons __tmp282077 __tmp282074))))
                         (declare (not safe))
                         (cons '%#begin __tmp282073))))
                  (declare (not safe))
                  (cons __tmp282072 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282084
                                                         __tmp282071))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282070))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282069
                                      _stx276644_)))))
                            (let* ((_g276673276713_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx281767281768_))
                                          (___kont281771281772_)
                                          (___kont281773281774_))))
                                   (___match281804281805_
                                    (lambda (_e276682276718_
                                             _hd276681276721_
                                             _tl276680276723_
                                             _e276685276726_
                                             _hd276684276729_
                                             _tl276683276731_
                                             _e276688276734_
                                             _hd276687276737_
                                             _tl276686276739_
                                             _e276691276742_
                                             _hd276690276745_
                                             _tl276689276747_)
                                      (let ((_L276750_ _tl276689276747_)
                                            (_L276751_ _hd276690276745_)
                                            (_L276752_ _hd276687276737_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L276752_))
                                            (___kont281769281770_
                                             _L276750_
                                             _L276751_
                                             _L276752_)
                                            (___kont281773281774_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx281767281768_))
                                  (let ((_e276682276718_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx281767281768_))))
                                    (let ((_tl276680276723_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276682276718_)))
                                          (_hd276681276721_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276682276718_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd276681276721_))
                                          (let ((_e276685276726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd276681276721_))))
                                            (let ((_tl276683276731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276685276726_)))
                                                  (_hd276684276729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276685276726_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd276684276729_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd276684276729_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276683276731_))
                                                          (let ((_e276688276734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276683276731_))))
                    (let ((_tl276686276739_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276688276734_)))
                          (_hd276687276737_
                           (let ()
                             (declare (not safe))
                             (##car _e276688276734_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276686276739_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276680276723_))
                              (let ((_e276691276742_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276680276723_))))
                                (let ((_tl276689276747_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276691276742_)))
                                      (_hd276690276745_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276691276742_))))
                                  (___match281804281805_
                                   _e276682276718_
                                   _hd276681276721_
                                   _tl276680276723_
                                   _e276685276726_
                                   _hd276684276729_
                                   _tl276683276731_
                                   _e276688276734_
                                   _hd276687276737_
                                   _tl276686276739_
                                   _e276691276742_
                                   _hd276690276745_
                                   _tl276689276747_)))
                              (___kont281773281774_))
                          (___kont281773281774_))))
                  (___kont281773281774_))
              (___kont281773281774_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281773281774_))))
                                          (___kont281773281774_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276673276713_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t281693)
        (let ((__id281694
               (let ((__tmp281695
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281693 'id))))
                 (if __tmp281695 __tmp281695 (error '"Unknown slot" 'id)))))
          (lambda (_self276643_ _stx276644_ _args276645_)
            (let* ((_klass276647_
                    (let ((__tmp282169
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self276643_
                              __id281694
                              __t281693
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx276644_ __tmp282169)))
                   (_fields276649_
                    (length (##structure-ref
                             _klass276647_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args276651_ (map gxc#compile-e _args276645_))
                   (_inline-make-object276653_
                    (let ((__tmp282170
                           (let ((__tmp282176
                                  (let ((__tmp282177
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282177)))
                                 (__tmp282171
                                  (let ((__tmp282173
                                         (let ((__tmp282174
                                                (let ((__tmp282175
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276643_
                                                          __id281694
                                                          __t281693
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282175 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282174)))
                                        (__tmp282172
                                         (make-list
                                          _fields276649_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp282173 __tmp282172))))
                             (declare (not safe))
                             (cons __tmp282176 __tmp282171))))
                      (declare (not safe))
                      (cons '%#call __tmp282170))))
              (let ((_$e276656_
                     (##structure-ref _klass276647_ '6 gxc#!class::t '#f)))
                (if _$e276656_
                    ((lambda (_ctor276659_)
                       (let ((_$obj276661_
                              (let ((__tmp282239 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp282239)))
                             (_ctor-impl276662_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass276647_
                                 _ctor276659_))))
                         (let ((__tmp282240
                                (let ((__tmp282241
                                       (let ((__tmp282306
                                              (let ((__tmp282307
                                                     (let ((__tmp282309
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj276661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282308
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object276653_ '()))))
               (declare (not safe))
               (cons __tmp282309 __tmp282308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282307 '())))
                                             (__tmp282242
                                              (let ((__tmp282243
                                                     (let ((__tmp282244
                                                            (let ((__tmp282248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl276662_
                               (let ((__tmp282300
                                      (let ((__tmp282304
                                             (let ((__tmp282305
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl276662_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282305)))
                                            (__tmp282301
                                             (let ((__tmp282302
                                                    (let ((__tmp282303
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj276661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282302
                                                     _args276651_))))
                                        (declare (not safe))
                                        (cons __tmp282304 __tmp282301))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282300))
                               (let* ((_$ctor276664_
                                       (let ((__tmp282249
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp282249)))
                                      (__tmp282250
                                       (let ((__tmp282285
                                              (let ((__tmp282286
                                                     (let ((__tmp282299
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor276664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282287
                    (let ((__tmp282288
                           (let ((__tmp282289
                                  (let ((__tmp282297
                                         (let ((__tmp282298
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282298)))
                                        (__tmp282290
                                         (let ((__tmp282294
                                                (let ((__tmp282295
                                                       (let ((__tmp282296
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self276643_
                         __id281694
                         __t281693
                         '#f))))
                 (declare (not safe))
                 (cons __tmp282296 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282295)))
                                               (__tmp282291
                                                (let ((__tmp282292
                                                       (let ((__tmp282293
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor276659_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp282293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282292 '()))))
                                           (declare (not safe))
                                           (cons __tmp282294 __tmp282291))))
                                    (declare (not safe))
                                    (cons __tmp282297 __tmp282290))))
                             (declare (not safe))
                             (cons '%#call __tmp282289))))
                      (declare (not safe))
                      (cons __tmp282288 '()))))
               (declare (not safe))
               (cons __tmp282299 __tmp282287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282286 '())))
                                             (__tmp282251
                                              (let ((__tmp282252
                                                     (let ((__tmp282253
                                                            (let ((__tmp282283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282284
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor276664_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282284)))
                          (__tmp282254
                           (let ((__tmp282276
                                  (let ((__tmp282277
                                         (let ((__tmp282281
                                                (let ((__tmp282282
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor276664_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282282)))
                                               (__tmp282278
                                                (let ((__tmp282279
                                                       (let ((__tmp282280
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276661_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282279
                                                        _args276651_))))
                                           (declare (not safe))
                                           (cons __tmp282281 __tmp282278))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282277)))
                                 (__tmp282255
                                  (let ((__tmp282256
                                         (let ((__tmp282257
                                                (let ((__tmp282274
                                                       (let ((__tmp282275
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282275)))
              (__tmp282258
               (let ((__tmp282272
                      (let ((__tmp282273
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp282273)))
                     (__tmp282259
                      (let ((__tmp282270
                             (let ((__tmp282271
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282271)))
                            (__tmp282260
                             (let ((__tmp282267
                                    (let ((__tmp282268
                                           (let ((__tmp282269
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276643_
                                                     __id281694
                                                     __t281693
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282269 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282268)))
                                   (__tmp282261
                                    (let ((__tmp282265
                                           (let ((__tmp282266
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282266)))
                                          (__tmp282262
                                           (let ((__tmp282263
                                                  (let ((__tmp282264
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor276659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp282264))))
                                             (declare (not safe))
                                             (cons __tmp282263 '()))))
                                      (declare (not safe))
                                      (cons __tmp282265 __tmp282262))))
                               (declare (not safe))
                               (cons __tmp282267 __tmp282261))))
                        (declare (not safe))
                        (cons __tmp282270 __tmp282260))))
                 (declare (not safe))
                 (cons __tmp282272 __tmp282259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282274
                                                        __tmp282258))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282257))))
                                    (declare (not safe))
                                    (cons __tmp282256 '()))))
                             (declare (not safe))
                             (cons __tmp282276 __tmp282255))))
                      (declare (not safe))
                      (cons __tmp282283 __tmp282254))))
               (declare (not safe))
               (cons '%#if __tmp282253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282252 '()))))
                                         (declare (not safe))
                                         (cons __tmp282285 __tmp282251))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp282250))))
                          (__tmp282245
                           (let ((__tmp282246
                                  (let ((__tmp282247
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj276661_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282247))))
                             (declare (not safe))
                             (cons __tmp282246 '()))))
                      (declare (not safe))
                      (cons __tmp282248 __tmp282245))))
               (declare (not safe))
               (cons '%#begin __tmp282244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282243 '()))))
                                         (declare (not safe))
                                         (cons __tmp282306 __tmp282242))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282241))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282240 _stx276644_))))
                     _$e276656_)
                    (if (##structure-ref _klass276647_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args276651_) _fields276649_)
                            (let ((__tmp282231
                                   (let ((__tmp282232
                                          (let ((__tmp282237
                                                 (let ((__tmp282238
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282238)))
                                                (__tmp282233
                                                 (let ((__tmp282234
                                                        (let ((__tmp282235
                                                               (let ((__tmp282236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self276643_
                                 __id281694
                                 __t281693
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp282236 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282234
                                                         _args276651_))))
                                            (declare (not safe))
                                            (cons __tmp282237 __tmp282233))))
                                     (declare (not safe))
                                     (cons '%#call __tmp282232))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp282231 _stx276644_))
                            (let ((__tmp282230
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self276643_
                                      __id281694
                                      __t281693
                                      '#f)))
                                  (__tmp282229
                                   (length (##structure-ref
                                            _klass276647_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx276644_
                               __tmp282230
                               __tmp282229)))
                        (let ((_$obj276666_
                               (let ((__tmp282178 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp282178))))
                          (let _lp276668_ ((_rest276670_ _args276651_)
                                           (_initializers276671_ '()))
                            (let* ((___stx281809281810_ _rest276670_)
                                   (_g276675276696_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx281809281810_)))))
                              (let ((___kont281811281812_
                                     (lambda (_L276750_ _L276751_ _L276752_)
                                       (let* ((_slot276782_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L276752_))))
                                              (_off276784_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass276647_
                                                  _slot276782_))))
                                         (if _off276784_
                                             (let ((__tmp282180
                                                    (let ((__tmp282181
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off276784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L276751_))))
              (declare (not safe))
              (cons __tmp282181 _initializers276671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp276668_
                                                _L276750_
                                                __tmp282180))
                                             (let ((__tmp282179
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276643_
                                                       __id281694
                                                       __t281693
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx276644_
                                                __tmp282179
                                                _slot276782_))))))
                                    (___kont281813281814_
                                     (lambda ()
                                       (let ((__tmp282182
                                              (let ((__tmp282183
                                                     (let ((__tmp282206
                                                            (let ((__tmp282207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282209
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276666_ '())))
                                 (__tmp282208
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276653_ '()))))
                             (declare (not safe))
                             (cons __tmp282209 __tmp282208))))
                      (declare (not safe))
                      (cons __tmp282207 '())))
                   (__tmp282184
                    (let ((__tmp282185
                           (let ((__tmp282186
                                  (let ((__tmp282203
                                         (let ((__tmp282204
                                                (let ((__tmp282205
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276666_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282205))))
                                           (declare (not safe))
                                           (cons __tmp282204 '())))
                                        (__tmp282187
                                         (let ((__tmp282188
                                                (lambda (_i276710_ _r276711_)
                                                  (let ((__tmp282189
                                                         (let ((__tmp282190
                                                                (let ((__tmp282200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282201
                                      (let ((__tmp282202
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self276643_
                                                __id281694
                                                __t281693
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp282202 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282201)))
                              (__tmp282191
                               (let ((__tmp282197
                                      (let ((__tmp282198
                                             (let ((__tmp282199
                                                    (car _i276710_)))
                                               (declare (not safe))
                                               (cons __tmp282199 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282198)))
                                     (__tmp282192
                                      (let ((__tmp282195
                                             (let ((__tmp282196
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276666_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282196)))
                                            (__tmp282193
                                             (let ((__tmp282194
                                                    (cdr _i276710_)))
                                               (declare (not safe))
                                               (cons __tmp282194 '()))))
                                        (declare (not safe))
                                        (cons __tmp282195 __tmp282193))))
                                 (declare (not safe))
                                 (cons __tmp282197 __tmp282192))))
                          (declare (not safe))
                          (cons __tmp282200 __tmp282191))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp282190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282189
                                                          _r276711_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp282188
                                                   '()
                                                   _initializers276671_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp282203 __tmp282187))))
                             (declare (not safe))
                             (cons '%#begin __tmp282186))))
                      (declare (not safe))
                      (cons __tmp282185 '()))))
               (declare (not safe))
               (cons __tmp282206 __tmp282184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282183))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282182
                                          _stx276644_))))
                                    (___kont281815281816_
                                     (lambda ()
                                       (let ((__tmp282210
                                              (let ((__tmp282211
                                                     (let ((__tmp282225
                                                            (let ((__tmp282226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282228
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276666_ '())))
                                 (__tmp282227
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276653_ '()))))
                             (declare (not safe))
                             (cons __tmp282228 __tmp282227))))
                      (declare (not safe))
                      (cons __tmp282226 '())))
                   (__tmp282212
                    (let ((__tmp282213
                           (let ((__tmp282214
                                  (let ((__tmp282218
                                         (let ((__tmp282219
                                                (let ((__tmp282223
                                                       (let ((__tmp282224
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282224)))
              (__tmp282220
               (let ((__tmp282221
                      (let ((__tmp282222
                             (let ()
                               (declare (not safe))
                               (cons _$obj276666_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282222))))
                 (declare (not safe))
                 (cons __tmp282221 _args276651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282223
                                                        __tmp282220))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282219)))
                                        (__tmp282215
                                         (let ((__tmp282216
                                                (let ((__tmp282217
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276666_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282217))))
                                           (declare (not safe))
                                           (cons __tmp282216 '()))))
                                    (declare (not safe))
                                    (cons __tmp282218 __tmp282215))))
                             (declare (not safe))
                             (cons '%#begin __tmp282214))))
                      (declare (not safe))
                      (cons __tmp282213 '()))))
               (declare (not safe))
               (cons __tmp282225 __tmp282212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282211))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282210
                                          _stx276644_)))))
                                (let* ((_g276673276713_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx281809281810_))
                                              (___kont281813281814_)
                                              (___kont281815281816_))))
                                       (___match281846281847_
                                        (lambda (_e276682276718_
                                                 _hd276681276721_
                                                 _tl276680276723_
                                                 _e276685276726_
                                                 _hd276684276729_
                                                 _tl276683276731_
                                                 _e276688276734_
                                                 _hd276687276737_
                                                 _tl276686276739_
                                                 _e276691276742_
                                                 _hd276690276745_
                                                 _tl276689276747_)
                                          (let ((_L276750_ _tl276689276747_)
                                                (_L276751_ _hd276690276745_)
                                                (_L276752_ _hd276687276737_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L276752_))
                                                (___kont281811281812_
                                                 _L276750_
                                                 _L276751_
                                                 _L276752_)
                                                (___kont281815281816_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx281809281810_))
                                      (let ((_e276682276718_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx281809281810_))))
                                        (let ((_tl276680276723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276682276718_)))
                                              (_hd276681276721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276682276718_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd276681276721_))
                                              (let ((_e276685276726_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd276681276721_))))
                                                (let ((_tl276683276731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276685276726_)))
                                                      (_hd276684276729_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276685276726_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd276684276729_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd276684276729_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276683276731_))
                      (let ((_e276688276734_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276683276731_))))
                        (let ((_tl276686276739_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276688276734_)))
                              (_hd276687276737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276688276734_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276686276739_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276680276723_))
                                  (let ((_e276691276742_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276680276723_))))
                                    (let ((_tl276689276747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276691276742_)))
                                          (_hd276690276745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276691276742_))))
                                      (___match281846281847_
                                       _e276682276718_
                                       _hd276681276721_
                                       _tl276680276723_
                                       _e276685276726_
                                       _hd276684276729_
                                       _tl276683276731_
                                       _e276688276734_
                                       _hd276687276737_
                                       _tl276686276739_
                                       _e276691276742_
                                       _hd276690276745_
                                       _tl276689276747_)))
                                  (___kont281815281816_))
                              (___kont281815281816_))))
                      (___kont281815281816_))
                  (___kont281815281816_))
              (___kont281815281816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281815281816_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g276673276713_))))))))))))))))
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
      (lambda (_self276466_ _stx276467_ _args276468_)
        (let* ((_g276470276480_
                (lambda (_g276471276477_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276471276477_))))
               (_g276469276518_
                (lambda (_g276471276483_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276471276483_))
                      (let ((_e276475276485_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276471276483_))))
                        (let ((_hd276474276488_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276475276485_)))
                              (_tl276473276490_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276475276485_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276473276490_))
                              ((lambda (_L276493_)
                                 (let* ((_klass276504_
                                         (let ((__tmp282310
                                                (##structure-ref
                                                 _self276466_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276467_
                                            __tmp282310)))
                                        (_field276506_
                                         (let ((__tmp282311
                                                (##structure-ref
                                                 _self276466_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass276504_
                                            __tmp282311)))
                                        (_object276508_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276493_))))
                                   (if (##structure-ref
                                        _klass276504_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282388
                                              (let ((__tmp282397
                                                     (if (##structure-ref
                                                          _self276466_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp282389
                                                     (let ((__tmp282394
                                                            (let ((__tmp282395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282396
                                  (##structure-ref
                                   _self276466_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282396 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282395)))
                   (__tmp282390
                    (let ((__tmp282392
                           (let ((__tmp282393
                                  (let ()
                                    (declare (not safe))
                                    (cons _field276506_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282393)))
                          (__tmp282391
                           (let ()
                             (declare (not safe))
                             (cons _object276508_ '()))))
                      (declare (not safe))
                      (cons __tmp282392 __tmp282391))))
               (declare (not safe))
               (cons __tmp282394 __tmp282390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282397
                                                      __tmp282389))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282388
                                          _stx276467_))
                                       (if (##structure-ref
                                            _klass276504_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282378
                                                  (let ((__tmp282387
                                                         (if (##structure-ref
                                                              _self276466_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp282379
                                                         (let ((__tmp282384
                                                                (let ((__tmp282385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282386
                                      (##structure-ref
                                       _self276466_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282386 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282385)))
                       (__tmp282380
                        (let ((__tmp282382
                               (let ((__tmp282383
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276506_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282383)))
                              (__tmp282381
                               (let ()
                                 (declare (not safe))
                                 (cons _object276508_ '()))))
                          (declare (not safe))
                          (cons __tmp282382 __tmp282381))))
                   (declare (not safe))
                   (cons __tmp282384 __tmp282380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282387
                                                          __tmp282379))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282378
                                              _stx276467_))
                                           (let ((_$e276511_
                                                  (let ((__tmp282312
                                                         (##structure-ref
                                                          _self276466_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass276504_
                                                     __tmp282312))))
                                             (if _$e276511_
                                                 ((lambda (_klass276514_)
                                                    (let ((__tmp282368
                                                           (let ((__tmp282377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self276466_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp282369
                          (let ((__tmp282374
                                 (let ((__tmp282375
                                        (let ((__tmp282376
                                               (##structure-ref
                                                _self276466_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282376 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp282375)))
                                (__tmp282370
                                 (let ((__tmp282372
                                        (let ((__tmp282373
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field276506_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp282373)))
                                       (__tmp282371
                                        (let ()
                                          (declare (not safe))
                                          (cons _object276508_ '()))))
                                   (declare (not safe))
                                   (cons __tmp282372 __tmp282371))))
                            (declare (not safe))
                            (cons __tmp282374 __tmp282370))))
                     (declare (not safe))
                     (cons __tmp282377 __tmp282369))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp282368 _stx276467_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e276511_)
                                                 (if (##structure-ref
                                                      _self276466_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp282322
                                                            (let* ((_$obj276516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282323 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp282323)))
                           (__tmp282324
                            (let ((__tmp282364
                                   (let ((__tmp282365
                                          (let ((__tmp282367
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj276516_ '())))
                                                (__tmp282366
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object276508_ '()))))
                                            (declare (not safe))
                                            (cons __tmp282367 __tmp282366))))
                                     (declare (not safe))
                                     (cons __tmp282365 '())))
                                  (__tmp282325
                                   (let ((__tmp282326
                                          (let ((__tmp282327
                                                 (let ((__tmp282356
                                                        (let ((__tmp282357
                                                               (let ((__tmp282361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282362
                                     (let ((__tmp282363
                                            (##structure-ref
                                             _klass276504_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp282363 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp282362)))
                             (__tmp282358
                              (let ((__tmp282359
                                     (let ((__tmp282360
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj276516_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282360))))
                                (declare (not safe))
                                (cons __tmp282359 '()))))
                         (declare (not safe))
                         (cons __tmp282361 __tmp282358))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp282357)))
               (__tmp282328
                (let ((__tmp282345
                       (let ((__tmp282346
                              (let ((__tmp282353
                                     (let ((__tmp282354
                                            (let ((__tmp282355
                                                   (##structure-ref
                                                    _self276466_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282355 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282354)))
                                    (__tmp282347
                                     (let ((__tmp282351
                                            (let ((__tmp282352
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276506_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282352)))
                                           (__tmp282348
                                            (let ((__tmp282349
                                                   (let ((__tmp282350
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282350))))
                                              (declare (not safe))
                                              (cons __tmp282349 '()))))
                                       (declare (not safe))
                                       (cons __tmp282351 __tmp282348))))
                                (declare (not safe))
                                (cons __tmp282353 __tmp282347))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp282346)))
                      (__tmp282329
                       (let ((__tmp282330
                              (let ((__tmp282331
                                     (let ((__tmp282343
                                            (let ((__tmp282344
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282344)))
                                           (__tmp282332
                                            (let ((__tmp282340
                                                   (let ((__tmp282341
                                                          (let ((__tmp282342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self276466_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp282342 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282341)))
                                                  (__tmp282333
                                                   (let ((__tmp282338
                                                          (let ((__tmp282339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276516_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282339)))
                 (__tmp282334
                  (let ((__tmp282335
                         (let ((__tmp282336
                                (let ((__tmp282337
                                       (##structure-ref
                                        _self276466_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp282337 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282336))))
                    (declare (not safe))
                    (cons __tmp282335 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282338
                                                           __tmp282334))))
                                              (declare (not safe))
                                              (cons __tmp282340 __tmp282333))))
                                       (declare (not safe))
                                       (cons __tmp282343 __tmp282332))))
                                (declare (not safe))
                                (cons '%#call __tmp282331))))
                         (declare (not safe))
                         (cons __tmp282330 '()))))
                  (declare (not safe))
                  (cons __tmp282345 __tmp282329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282356
                                                         __tmp282328))))
                                            (declare (not safe))
                                            (cons '%#if __tmp282327))))
                                     (declare (not safe))
                                     (cons __tmp282326 '()))))
                              (declare (not safe))
                              (cons __tmp282364 __tmp282325))))
                      (declare (not safe))
                      (cons '%#let-values __tmp282324))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282322 _stx276467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp282313
                                                            (let ((__tmp282314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282320
                                  (let ((__tmp282321
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282321)))
                                 (__tmp282315
                                  (let ((__tmp282316
                                         (let ((__tmp282317
                                                (let ((__tmp282318
                                                       (let ((__tmp282319
                                                              (##structure-ref
                                                               _self276466_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp282319
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp282318))))
                                           (declare (not safe))
                                           (cons __tmp282317 '()))))
                                    (declare (not safe))
                                    (cons _object276508_ __tmp282316))))
                             (declare (not safe))
                             (cons __tmp282320 __tmp282315))))
                      (declare (not safe))
                      (cons '%#call __tmp282314))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282313 _stx276467_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd276474276488_)
                              (let ()
                                (declare (not safe))
                                (_g276470276480_ _g276471276483_)))))
                      (let ()
                        (declare (not safe))
                        (_g276470276480_ _g276471276483_))))))
          (declare (not safe))
          (_g276469276518_ _args276468_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t281696)
        (let ((__id281697
               (let ((__tmp281700
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281696 'id))))
                 (if __tmp281700 __tmp281700 (error '"Unknown slot" 'id))))
              (__slot281698
               (let ((__tmp281701
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281696 'slot))))
                 (if __tmp281701 __tmp281701 (error '"Unknown slot" 'slot))))
              (__checked?281699
               (let ((__tmp281702
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281696 'checked?))))
                 (if __tmp281702
                     __tmp281702
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self276466_ _stx276467_ _args276468_)
            (let* ((_g276470276480_
                    (lambda (_g276471276477_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276471276477_))))
                   (_g276469276518_
                    (lambda (_g276471276483_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276471276483_))
                          (let ((_e276475276485_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276471276483_))))
                            (let ((_hd276474276488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276475276485_)))
                                  (_tl276473276490_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276475276485_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276473276490_))
                                  ((lambda (_L276493_)
                                     (let* ((_klass276504_
                                             (let ((__tmp282398
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276466_
                                                       __id281697
                                                       __t281696
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276467_
                                                __tmp282398)))
                                            (_field276506_
                                             (let ((__tmp282399
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276466_
                                                       __slot281698
                                                       __t281696
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass276504_
                                                __tmp282399)))
                                            (_object276508_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276493_))))
                                       (if (##structure-ref
                                            _klass276504_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282476
                                                  (let ((__tmp282485
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276466_
                        __checked?281699
                        __t281696
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp282477
                 (let ((__tmp282482
                        (let ((__tmp282483
                               (let ((__tmp282484
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self276466_
                                         __id281697
                                         __t281696
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp282484 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282483)))
                       (__tmp282478
                        (let ((__tmp282480
                               (let ((__tmp282481
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276506_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282481)))
                              (__tmp282479
                               (let ()
                                 (declare (not safe))
                                 (cons _object276508_ '()))))
                          (declare (not safe))
                          (cons __tmp282480 __tmp282479))))
                   (declare (not safe))
                   (cons __tmp282482 __tmp282478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282485
                                                          __tmp282477))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282476
                                              _stx276467_))
                                           (if (##structure-ref
                                                _klass276504_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282466
                                                      (let ((__tmp282475
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276466_
                            __checked?281699
                            __t281696
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp282467
                     (let ((__tmp282472
                            (let ((__tmp282473
                                   (let ((__tmp282474
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276466_
                                             __id281697
                                             __t281696
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp282474 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282473)))
                           (__tmp282468
                            (let ((__tmp282470
                                   (let ((__tmp282471
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276506_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282471)))
                                  (__tmp282469
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276508_ '()))))
                              (declare (not safe))
                              (cons __tmp282470 __tmp282469))))
                       (declare (not safe))
                       (cons __tmp282472 __tmp282468))))
                (declare (not safe))
                (cons __tmp282475 __tmp282467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282466
                                                  _stx276467_))
                                               (let ((_$e276511_
                                                      (let ((__tmp282400
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276466_
                        __slot281698
                        __t281696
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass276504_ __tmp282400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e276511_
                                                     ((lambda (_klass276514_)
                                                        (let ((__tmp282456
                                                               (let ((__tmp282465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276466_
                                     __checked?281699
                                     __t281696
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp282457
                              (let ((__tmp282462
                                     (let ((__tmp282463
                                            (let ((__tmp282464
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276466_
                                                      __id281697
                                                      __t281696
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282464 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282463)))
                                    (__tmp282458
                                     (let ((__tmp282460
                                            (let ((__tmp282461
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276506_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282461)))
                                           (__tmp282459
                                            (let ()
                                              (declare (not safe))
                                              (cons _object276508_ '()))))
                                       (declare (not safe))
                                       (cons __tmp282460 __tmp282459))))
                                (declare (not safe))
                                (cons __tmp282462 __tmp282458))))
                         (declare (not safe))
                         (cons __tmp282465 __tmp282457))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp282456 _stx276467_)))
              _$e276511_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self276466_
                                                            __checked?281699
                                                            __t281696
                                                            '#f))
                                                         (let ((__tmp282410
                                                                (let* ((_$obj276516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp282411 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp282411)))
                               (__tmp282412
                                (let ((__tmp282452
                                       (let ((__tmp282453
                                              (let ((__tmp282455
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj276516_
                                                             '())))
                                                    (__tmp282454
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object276508_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp282455
                                                      __tmp282454))))
                                         (declare (not safe))
                                         (cons __tmp282453 '())))
                                      (__tmp282413
                                       (let ((__tmp282414
                                              (let ((__tmp282415
                                                     (let ((__tmp282444
                                                            (let ((__tmp282445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282449
                                  (let ((__tmp282450
                                         (let ((__tmp282451
                                                (##structure-ref
                                                 _klass276504_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp282451 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282450)))
                                 (__tmp282446
                                  (let ((__tmp282447
                                         (let ((__tmp282448
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276516_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282448))))
                                    (declare (not safe))
                                    (cons __tmp282447 '()))))
                             (declare (not safe))
                             (cons __tmp282449 __tmp282446))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp282445)))
                   (__tmp282416
                    (let ((__tmp282433
                           (let ((__tmp282434
                                  (let ((__tmp282441
                                         (let ((__tmp282442
                                                (let ((__tmp282443
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276466_
                                                          __id281697
                                                          __t281696
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282443 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282442)))
                                        (__tmp282435
                                         (let ((__tmp282439
                                                (let ((__tmp282440
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276506_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282440)))
                                               (__tmp282436
                                                (let ((__tmp282437
                                                       (let ((__tmp282438
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276516_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282437 '()))))
                                           (declare (not safe))
                                           (cons __tmp282439 __tmp282436))))
                                    (declare (not safe))
                                    (cons __tmp282441 __tmp282435))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp282434)))
                          (__tmp282417
                           (let ((__tmp282418
                                  (let ((__tmp282419
                                         (let ((__tmp282431
                                                (let ((__tmp282432
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282432)))
                                               (__tmp282420
                                                (let ((__tmp282428
                                                       (let ((__tmp282429
                                                              (let ((__tmp282430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276466_
                                __id281697
                                __t281696
                                '#f))))
                        (declare (not safe))
                        (cons __tmp282430 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282429)))
              (__tmp282421
               (let ((__tmp282426
                      (let ((__tmp282427
                             (let ()
                               (declare (not safe))
                               (cons _$obj276516_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282427)))
                     (__tmp282422
                      (let ((__tmp282423
                             (let ((__tmp282424
                                    (let ((__tmp282425
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self276466_
                                              __slot281698
                                              __t281696
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp282425 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282424))))
                        (declare (not safe))
                        (cons __tmp282423 '()))))
                 (declare (not safe))
                 (cons __tmp282426 __tmp282422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282428
                                                        __tmp282421))))
                                           (declare (not safe))
                                           (cons __tmp282431 __tmp282420))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282419))))
                             (declare (not safe))
                             (cons __tmp282418 '()))))
                      (declare (not safe))
                      (cons __tmp282433 __tmp282417))))
               (declare (not safe))
               (cons __tmp282444 __tmp282416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp282415))))
                                         (declare (not safe))
                                         (cons __tmp282414 '()))))
                                  (declare (not safe))
                                  (cons __tmp282452 __tmp282413))))
                          (declare (not safe))
                          (cons '%#let-values __tmp282412))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282410 _stx276467_))
                 (let ((__tmp282401
                        (let ((__tmp282402
                               (let ((__tmp282408
                                      (let ((__tmp282409
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp282409)))
                                     (__tmp282403
                                      (let ((__tmp282404
                                             (let ((__tmp282405
                                                    (let ((__tmp282406
                                                           (let ((__tmp282407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self276466_
                             __slot281698
                             __t281696
                             '#f))))
                     (declare (not safe))
                     (cons __tmp282407 '()))))
              (declare (not safe))
              (cons '%#quote __tmp282406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282405 '()))))
                                        (declare (not safe))
                                        (cons _object276508_ __tmp282404))))
                                 (declare (not safe))
                                 (cons __tmp282408 __tmp282403))))
                          (declare (not safe))
                          (cons '%#call __tmp282402))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282401 _stx276467_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd276474276488_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276470276480_ _g276471276483_)))))
                          (let ()
                            (declare (not safe))
                            (_g276470276480_ _g276471276483_))))))
              (declare (not safe))
              (_g276469276518_ _args276468_))))))
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
      (lambda (_self276271_ _stx276272_ _args276273_)
        (let* ((_g276275276289_
                (lambda (_g276276276286_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276276276286_))))
               (_g276274276341_
                (lambda (_g276276276292_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276276276292_))
                      (let ((_e276281276294_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276276276292_))))
                        (let ((_hd276280276297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276281276294_)))
                              (_tl276279276299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276281276294_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276279276299_))
                              (let ((_e276284276302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276279276299_))))
                                (let ((_hd276283276305_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276284276302_)))
                                      (_tl276282276307_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276284276302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl276282276307_))
                                      ((lambda (_L276310_ _L276311_)
                                         (let* ((_klass276325_
                                                 (let ((__tmp282486
                                                        (##structure-ref
                                                         _self276271_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx276272_
                                                    __tmp282486)))
                                                (_field276327_
                                                 (let ((__tmp282487
                                                        (##structure-ref
                                                         _self276271_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass276325_
                                                    __tmp282487)))
                                                (_object276329_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276311_)))
                                                (_value276331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276310_))))
                                           (if (##structure-ref
                                                _klass276325_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282569
                                                      (let ((__tmp282579
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self276271_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp282570
                     (let ((__tmp282576
                            (let ((__tmp282577
                                   (let ((__tmp282578
                                          (##structure-ref
                                           _self276271_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282578 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282577)))
                           (__tmp282571
                            (let ((__tmp282574
                                   (let ((__tmp282575
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276327_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282575)))
                                  (__tmp282572
                                   (let ((__tmp282573
                                          (let ()
                                            (declare (not safe))
                                            (cons _value276331_ '()))))
                                     (declare (not safe))
                                     (cons _object276329_ __tmp282573))))
                              (declare (not safe))
                              (cons __tmp282574 __tmp282572))))
                       (declare (not safe))
                       (cons __tmp282576 __tmp282571))))
                (declare (not safe))
                (cons __tmp282579 __tmp282570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282569
                                                  _stx276272_))
                                               (if (##structure-ref
                                                    _klass276325_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282558
                                                          (let ((__tmp282568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self276271_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282559
                         (let ((__tmp282565
                                (let ((__tmp282566
                                       (let ((__tmp282567
                                              (##structure-ref
                                               _self276271_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282567 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282566)))
                               (__tmp282560
                                (let ((__tmp282563
                                       (let ((__tmp282564
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276327_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282564)))
                                      (__tmp282561
                                       (let ((__tmp282562
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276331_ '()))))
                                         (declare (not safe))
                                         (cons _object276329_ __tmp282562))))
                                  (declare (not safe))
                                  (cons __tmp282563 __tmp282561))))
                           (declare (not safe))
                           (cons __tmp282565 __tmp282560))))
                    (declare (not safe))
                    (cons __tmp282568 __tmp282559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282558
                                                      _stx276272_))
                                                   (let ((_$e276334_
                                                          (let ((__tmp282488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self276271_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass276325_ __tmp282488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e276334_
                                                         ((lambda (_klass276337_)
                                                            (let ((__tmp282547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282557
                                  (if (##structure-ref
                                       _self276271_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp282548
                                  (let ((__tmp282554
                                         (let ((__tmp282555
                                                (let ((__tmp282556
                                                       (##structure-ref
                                                        _self276271_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp282556 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282555)))
                                        (__tmp282549
                                         (let ((__tmp282552
                                                (let ((__tmp282553
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276327_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282553)))
                                               (__tmp282550
                                                (let ((__tmp282551
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value276331_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object276329_
                                                        __tmp282551))))
                                           (declare (not safe))
                                           (cons __tmp282552 __tmp282550))))
                                    (declare (not safe))
                                    (cons __tmp282554 __tmp282549))))
                             (declare (not safe))
                             (cons __tmp282557 __tmp282548))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp282547 _stx276272_)))
                  _$e276334_)
                 (if (##structure-ref _self276271_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp282499
                            (let* ((_$obj276339_
                                    (let ((__tmp282500 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp282500)))
                                   (__tmp282501
                                    (let ((__tmp282543
                                           (let ((__tmp282544
                                                  (let ((__tmp282546
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj276339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp282545
                 (let () (declare (not safe)) (cons _object276329_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282546
                                                          __tmp282545))))
                                             (declare (not safe))
                                             (cons __tmp282544 '())))
                                          (__tmp282502
                                           (let ((__tmp282503
                                                  (let ((__tmp282504
                                                         (let ((__tmp282535
                                                                (let ((__tmp282536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282540
                                      (let ((__tmp282541
                                             (let ((__tmp282542
                                                    (##structure-ref
                                                     _klass276325_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp282542 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282541)))
                                     (__tmp282537
                                      (let ((__tmp282538
                                             (let ((__tmp282539
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276339_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282539))))
                                        (declare (not safe))
                                        (cons __tmp282538 '()))))
                                 (declare (not safe))
                                 (cons __tmp282540 __tmp282537))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp282536)))
                       (__tmp282505
                        (let ((__tmp282523
                               (let ((__tmp282524
                                      (let ((__tmp282532
                                             (let ((__tmp282533
                                                    (let ((__tmp282534
                                                           (##structure-ref
                                                            _self276271_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp282534 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282533)))
                                            (__tmp282525
                                             (let ((__tmp282530
                                                    (let ((__tmp282531
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282531)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282526
                                                    (let ((__tmp282528
                                                           (let ((__tmp282529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj276339_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282529)))
                  (__tmp282527
                   (let () (declare (not safe)) (cons _value276331_ '()))))
              (declare (not safe))
              (cons __tmp282528 __tmp282527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282530
                                                     __tmp282526))))
                                        (declare (not safe))
                                        (cons __tmp282532 __tmp282525))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp282524)))
                              (__tmp282506
                               (let ((__tmp282507
                                      (let ((__tmp282508
                                             (let ((__tmp282521
                                                    (let ((__tmp282522
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282522)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282509
                                                    (let ((__tmp282518
                                                           (let ((__tmp282519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp282520
                                 (##structure-ref
                                  _self276271_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp282520 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282519)))
                  (__tmp282510
                   (let ((__tmp282516
                          (let ((__tmp282517
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj276339_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp282517)))
                         (__tmp282511
                          (let ((__tmp282513
                                 (let ((__tmp282514
                                        (let ((__tmp282515
                                               (##structure-ref
                                                _self276271_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282515 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp282514)))
                                (__tmp282512
                                 (let ()
                                   (declare (not safe))
                                   (cons _value276331_ '()))))
                            (declare (not safe))
                            (cons __tmp282513 __tmp282512))))
                     (declare (not safe))
                     (cons __tmp282516 __tmp282511))))
              (declare (not safe))
              (cons __tmp282518 __tmp282510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282521
                                                     __tmp282509))))
                                        (declare (not safe))
                                        (cons '%#call __tmp282508))))
                                 (declare (not safe))
                                 (cons __tmp282507 '()))))
                          (declare (not safe))
                          (cons __tmp282523 __tmp282506))))
                   (declare (not safe))
                   (cons __tmp282535 __tmp282505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp282504))))
                                             (declare (not safe))
                                             (cons __tmp282503 '()))))
                                      (declare (not safe))
                                      (cons __tmp282543 __tmp282502))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282501))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282499 _stx276272_))
                     (let ((__tmp282489
                            (let ((__tmp282490
                                   (let ((__tmp282497
                                          (let ((__tmp282498
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp282498)))
                                         (__tmp282491
                                          (let ((__tmp282492
                                                 (let ((__tmp282494
                                                        (let ((__tmp282495
                                                               (let ((__tmp282496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self276271_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp282496 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282495)))
               (__tmp282493
                (let () (declare (not safe)) (cons _value276331_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282494
                                                         __tmp282493))))
                                            (declare (not safe))
                                            (cons _object276329_
                                                  __tmp282492))))
                                     (declare (not safe))
                                     (cons __tmp282497 __tmp282491))))
                              (declare (not safe))
                              (cons '%#call __tmp282490))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282489 _stx276272_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd276283276305_
                                       _hd276280276297_)
                                      (let ()
                                        (declare (not safe))
                                        (_g276275276289_ _g276276276292_)))))
                              (let ()
                                (declare (not safe))
                                (_g276275276289_ _g276276276292_)))))
                      (let ()
                        (declare (not safe))
                        (_g276275276289_ _g276276276292_))))))
          (declare (not safe))
          (_g276274276341_ _args276273_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t281703)
        (let ((__id281704
               (let ((__tmp281707
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281703 'id))))
                 (if __tmp281707 __tmp281707 (error '"Unknown slot" 'id))))
              (__slot281705
               (let ((__tmp281708
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281703 'slot))))
                 (if __tmp281708 __tmp281708 (error '"Unknown slot" 'slot))))
              (__checked?281706
               (let ((__tmp281709
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281703 'checked?))))
                 (if __tmp281709
                     __tmp281709
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self276271_ _stx276272_ _args276273_)
            (let* ((_g276275276289_
                    (lambda (_g276276276286_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276276276286_))))
                   (_g276274276341_
                    (lambda (_g276276276292_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276276276292_))
                          (let ((_e276281276294_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276276276292_))))
                            (let ((_hd276280276297_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276281276294_)))
                                  (_tl276279276299_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276281276294_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276279276299_))
                                  (let ((_e276284276302_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276279276299_))))
                                    (let ((_hd276283276305_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276284276302_)))
                                          (_tl276282276307_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276284276302_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276282276307_))
                                          ((lambda (_L276310_ _L276311_)
                                             (let* ((_klass276325_
                                                     (let ((__tmp282580
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276271_
                                                               __id281704
                                                               __t281703
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx276272_
                                                        __tmp282580)))
                                                    (_field276327_
                                                     (let ((__tmp282581
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276271_
                                                               __slot281705
                                                               __t281703
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass276325_
                                                        __tmp282581)))
                                                    (_object276329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276311_)))
                                                    (_value276331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276310_))))
                                               (if (##structure-ref
                                                    _klass276325_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282663
                                                          (let ((__tmp282673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276271_
                                __checked?281706
                                __t281703
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282664
                         (let ((__tmp282670
                                (let ((__tmp282671
                                       (let ((__tmp282672
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self276271_
                                                 __id281704
                                                 __t281703
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp282672 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282671)))
                               (__tmp282665
                                (let ((__tmp282668
                                       (let ((__tmp282669
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276327_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282669)))
                                      (__tmp282666
                                       (let ((__tmp282667
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276331_ '()))))
                                         (declare (not safe))
                                         (cons _object276329_ __tmp282667))))
                                  (declare (not safe))
                                  (cons __tmp282668 __tmp282666))))
                           (declare (not safe))
                           (cons __tmp282670 __tmp282665))))
                    (declare (not safe))
                    (cons __tmp282673 __tmp282664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282663
                                                      _stx276272_))
                                                   (if (##structure-ref
                                                        _klass276325_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp282652
                                                              (let ((__tmp282662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self276271_
                                    __checked?281706
                                    __t281703
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp282653
                             (let ((__tmp282659
                                    (let ((__tmp282660
                                           (let ((__tmp282661
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276271_
                                                     __id281704
                                                     __t281703
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282661 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282660)))
                                   (__tmp282654
                                    (let ((__tmp282657
                                           (let ((__tmp282658
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field276327_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282658)))
                                          (__tmp282655
                                           (let ((__tmp282656
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value276331_ '()))))
                                             (declare (not safe))
                                             (cons _object276329_
                                                   __tmp282656))))
                                      (declare (not safe))
                                      (cons __tmp282657 __tmp282655))))
                               (declare (not safe))
                               (cons __tmp282659 __tmp282654))))
                        (declare (not safe))
                        (cons __tmp282662 __tmp282653))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp282652 _stx276272_))
               (let ((_$e276334_
                      (let ((__tmp282582
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276271_
                                __slot281705
                                __t281703
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass276325_
                         __tmp282582))))
                 (if _$e276334_
                     ((lambda (_klass276337_)
                        (let ((__tmp282641
                               (let ((__tmp282651
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276271_
                                             __checked?281706
                                             __t281703
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp282642
                                      (let ((__tmp282648
                                             (let ((__tmp282649
                                                    (let ((__tmp282650
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self276271_
                                                              __id281704
                                                              __t281703
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp282650 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282649)))
                                            (__tmp282643
                                             (let ((__tmp282646
                                                    (let ((__tmp282647
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282647)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282644
                                                    (let ((__tmp282645
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value276331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object276329_ __tmp282645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282646
                                                     __tmp282644))))
                                        (declare (not safe))
                                        (cons __tmp282648 __tmp282643))))
                                 (declare (not safe))
                                 (cons __tmp282651 __tmp282642))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282641 _stx276272_)))
                      _$e276334_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276271_
                            __checked?281706
                            __t281703
                            '#f))
                         (let ((__tmp282593
                                (let* ((_$obj276339_
                                        (let ((__tmp282594 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp282594)))
                                       (__tmp282595
                                        (let ((__tmp282637
                                               (let ((__tmp282638
                                                      (let ((__tmp282640
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj276339_ '())))
                    (__tmp282639
                     (let () (declare (not safe)) (cons _object276329_ '()))))
                (declare (not safe))
                (cons __tmp282640 __tmp282639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282638 '())))
                                              (__tmp282596
                                               (let ((__tmp282597
                                                      (let ((__tmp282598
                                                             (let ((__tmp282629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282630
                                   (let ((__tmp282634
                                          (let ((__tmp282635
                                                 (let ((__tmp282636
                                                        (##structure-ref
                                                         _klass276325_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp282636 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp282635)))
                                         (__tmp282631
                                          (let ((__tmp282632
                                                 (let ((__tmp282633
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276339_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282633))))
                                            (declare (not safe))
                                            (cons __tmp282632 '()))))
                                     (declare (not safe))
                                     (cons __tmp282634 __tmp282631))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp282630)))
                           (__tmp282599
                            (let ((__tmp282617
                                   (let ((__tmp282618
                                          (let ((__tmp282626
                                                 (let ((__tmp282627
                                                        (let ((__tmp282628
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self276271_
                          __id281704
                          __t281703
                          '#f))))
                  (declare (not safe))
                  (cons __tmp282628 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282627)))
                                                (__tmp282619
                                                 (let ((__tmp282624
                                                        (let ((__tmp282625
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field276327_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282625)))
               (__tmp282620
                (let ((__tmp282622
                       (let ((__tmp282623
                              (let ()
                                (declare (not safe))
                                (cons _$obj276339_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282623)))
                      (__tmp282621
                       (let () (declare (not safe)) (cons _value276331_ '()))))
                  (declare (not safe))
                  (cons __tmp282622 __tmp282621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282624
                                                         __tmp282620))))
                                            (declare (not safe))
                                            (cons __tmp282626 __tmp282619))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp282618)))
                                  (__tmp282600
                                   (let ((__tmp282601
                                          (let ((__tmp282602
                                                 (let ((__tmp282615
                                                        (let ((__tmp282616
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282616)))
               (__tmp282603
                (let ((__tmp282612
                       (let ((__tmp282613
                              (let ((__tmp282614
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self276271_
                                        __id281704
                                        __t281703
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp282614 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282613)))
                      (__tmp282604
                       (let ((__tmp282610
                              (let ((__tmp282611
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276339_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282611)))
                             (__tmp282605
                              (let ((__tmp282607
                                     (let ((__tmp282608
                                            (let ((__tmp282609
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276271_
                                                      __slot281705
                                                      __t281703
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282609 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282608)))
                                    (__tmp282606
                                     (let ()
                                       (declare (not safe))
                                       (cons _value276331_ '()))))
                                (declare (not safe))
                                (cons __tmp282607 __tmp282606))))
                         (declare (not safe))
                         (cons __tmp282610 __tmp282605))))
                  (declare (not safe))
                  (cons __tmp282612 __tmp282604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282615
                                                         __tmp282603))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282602))))
                                     (declare (not safe))
                                     (cons __tmp282601 '()))))
                              (declare (not safe))
                              (cons __tmp282617 __tmp282600))))
                       (declare (not safe))
                       (cons __tmp282629 __tmp282599))))
                (declare (not safe))
                (cons '%#if __tmp282598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282597 '()))))
                                          (declare (not safe))
                                          (cons __tmp282637 __tmp282596))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282595))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282593 _stx276272_))
                         (let ((__tmp282583
                                (let ((__tmp282584
                                       (let ((__tmp282591
                                              (let ((__tmp282592
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp282592)))
                                             (__tmp282585
                                              (let ((__tmp282586
                                                     (let ((__tmp282588
                                                            (let ((__tmp282589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282590
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276271_
                                     __slot281705
                                     __t281703
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp282590 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282589)))
                   (__tmp282587
                    (let () (declare (not safe)) (cons _value276331_ '()))))
               (declare (not safe))
               (cons __tmp282588 __tmp282587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object276329_
                                                      __tmp282586))))
                                         (declare (not safe))
                                         (cons __tmp282591 __tmp282585))))
                                  (declare (not safe))
                                  (cons '%#call __tmp282584))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp282583
                            _stx276272_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd276283276305_
                                           _hd276280276297_)
                                          (let ()
                                            (declare (not safe))
                                            (_g276275276289_
                                             _g276276276292_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276275276289_ _g276276276292_)))))
                          (let ()
                            (declare (not safe))
                            (_g276275276289_ _g276276276292_))))))
              (declare (not safe))
              (_g276274276341_ _args276273_))))))
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
      (lambda (_self276105_ _stx276106_ _args276107_)
        (let* ((_self276108276117_ _self276105_)
               (_E276110276121_
                (lambda () (error '"No clause matching" _self276108276117_)))
               (_K276111276128_
                (lambda (_inline276124_ _dispatch276125_ _arity276126_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self276105_ _args276107_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx276106_
                         _arity276126_)))
                  (if _inline276124_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp282679
                               (let ((__tmp282680
                                      (_inline276124_ _stx276106_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp282680
                                  _stx276106_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp282679)))
                      (if _dispatch276125_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch276125_))
                            (let ((__tmp282674
                                   (let ((__tmp282675
                                          (let ((__tmp282676
                                                 (let ((__tmp282677
                                                        (let ((__tmp282678
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch276125_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282677
                                                         _args276107_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282676))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282675
                                      _stx276106_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp282674)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx276106_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276108276117_ 'gxc#!lambda::t))
              (let* ((_e276112276131_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276108276117_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276113276134_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276108276117_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276137_ _e276113276134_)
                     (_e276114276139_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276108276117_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch276142_ _e276114276139_)
                     (_e276115276144_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276108276117_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline276147_ _e276115276144_))
                (declare (not safe))
                (_K276111276128_
                 _inline276147_
                 _dispatch276142_
                 _arity276137_))
              (let () (declare (not safe)) (_E276110276121_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self275944_ _stx275945_ _args275946_)
        (let* ((_self275947275954_ _self275944_)
               (_E275949275958_
                (lambda () (error '"No clause matching" _self275947275954_)))
               (_K275950275972_
                (lambda (_clauses275961_)
                  (let ((_$e275967_
                         (let ((__tmp282681
                                (lambda (_g275962275964_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g275962275964_
                                     _args275946_)))))
                           (declare (not safe))
                           (find __tmp282681 _clauses275961_))))
                    (if _$e275967_
                        ((lambda (_clause275970_)
                           (let ((__method281978
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause275970_
                                     'optimize-call))))
                             (if __method281978
                                 (__method281978
                                  _clause275970_
                                  _stx275945_
                                  _args275946_)
                                 (error '"Missing method"
                                        _clause275970_
                                        'optimize-call))))
                         _$e275967_)
                        (let ((__tmp282682
                               (map gxc#!lambda-arity _clauses275961_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx275945_
                           __tmp282682)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275947275954_
                 'gxc#!case-lambda::t))
              (let* ((_e275951275975_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275947275954_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275952275978_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275947275954_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses275981_ _e275952275978_))
                (declare (not safe))
                (_K275950275972_ _clauses275981_))
              (let () (declare (not safe)) (_E275949275958_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self275758_ _args275759_)
        (let* ((_self275760275767_ _self275758_)
               (_E275762275771_
                (lambda () (error '"No clause matching" _self275760275767_)))
               (_K275763275811_
                (lambda (_arity275774_)
                  (let* ((_arity275775275784_ _arity275774_)
                         (_E275778275788_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity275775275784_))))
                    (let ((_K275782275808_
                           (lambda ()
                             (fx= (length _args275759_) _arity275774_)))
                          (_K275779275794_
                           (lambda (_arity275792_)
                             (fx>= (length _args275759_) _arity275792_))))
                      (let ((_try-match275777275804_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity275775275784_))
                                   (let ((_tl275781275799_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity275775275784_)))
                                         (_hd275780275797_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity275775275784_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl275781275799_))
                                         (let ((_arity275802_
                                                _hd275780275797_))
                                           (declare (not safe))
                                           (_K275779275794_ _arity275802_))
                                         (let ()
                                           (declare (not safe))
                                           (_E275778275788_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E275778275788_))))))
                        (if (fixnum? _arity275775275784_)
                            (let () (declare (not safe)) (_K275782275808_))
                            (let ()
                              (declare (not safe))
                              (_try-match275777275804_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275760275767_ 'gxc#!lambda::t))
              (let* ((_e275764275814_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275760275767_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275765275817_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275760275767_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity275820_ _e275765275817_))
                (declare (not safe))
                (_K275763275811_ _arity275820_))
              (let () (declare (not safe)) (_E275762275771_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self275643_ _stx275644_ _args275645_)
        (let* ((_self275646275654_ _self275643_)
               (_E275648275658_
                (lambda () (error '"No clause matching" _self275646275654_)))
               (_K275649275742_
                (lambda (_dispatch275661_ _table275662_)
                  (let* ((_g275663275672_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch275661_)))
                         (_else275665275680_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch275661_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx275644_))))
                         (_K275667275726_
                          (lambda (_main275683_ _keys275684_)
                            (let ((_g282683_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx275644_
                                      _args275645_))))
                              (begin
                                (let ((_g282684_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g282683_)
                                             (##vector-length _g282683_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g282684_ 2)))
                                      (error "Context expects 2 values"
                                             _g282684_)))
                                (let ((_pargs275686_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282683_ 0)))
                                      (_kwargs275687_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282683_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main275683_))
                                    (if _table275662_
                                        (let ((_xargs275694_
                                               (map (lambda (_key275689_)
                                                      (let ((_$e275691_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key275689_ _kwargs275687_))))
                (if _$e275691_ (values _$e275691_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys275684_)))
                                          (for-each
                                           (lambda (_kw275696_)
                                             (if (memq (car _kw275696_)
                                                       _keys275684_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx275644_
                                                    _keys275684_
                                                    _kw275696_))))
                                           _kwargs275687_)
                                          (let ((__tmp282736
                                                 (let ((__tmp282737
                                                        (let ((__tmp282738
                                                               (let ((__tmp282743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282744
                                     (let ()
                                       (declare (not safe))
                                       (cons _main275683_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282744)))
                             (__tmp282739
                              (let ((__tmp282741
                                     (let ((__tmp282742
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282742)))
                                    (__tmp282740
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs275686_
                                               _xargs275694_))))
                                (declare (not safe))
                                (cons __tmp282741 __tmp282740))))
                         (declare (not safe))
                         (cons __tmp282743 __tmp282739))))
                  (declare (not safe))
                  (cons '%#call __tmp282738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282737
                                                    _stx275644_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp282736)))
                                        (let* ((_kwt275698_
                                                (let ((__tmp282685
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp282685)))
                                               (_kwvars275701_
                                                (map (lambda (_g282686_)
                                                       (let ((__tmp282687
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp282687)))
                                                     _kwargs275687_))
                                               (_kwbind275706_
                                                (map (lambda (_kw275703_
                                                              _kwvar275704_)
                                                       (let ((__tmp282690
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar275704_ '())))
                     (__tmp282688
                      (let ((__tmp282689 (cdr _kw275703_)))
                        (declare (not safe))
                        (cons __tmp282689 '()))))
                 (declare (not safe))
                 (cons __tmp282690 __tmp282688)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275687_
                                                     _kwvars275701_))
                                               (_kwset275711_
                                                (map (lambda (_kw275708_
                                                              _kwvar275709_)
                                                       (let ((__tmp282691
                                                              (let ((__tmp282692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp282700
                                    (let ((__tmp282701
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt275698_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282701)))
                                   (__tmp282693
                                    (let ((__tmp282697
                                           (let ((__tmp282698
                                                  (let ((__tmp282699
                                                         (car _kw275708_)))
                                                    (declare (not safe))
                                                    (cons __tmp282699 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282698)))
                                          (__tmp282694
                                           (let ((__tmp282695
                                                  (let ((__tmp282696
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar275709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp282696))))
                                             (declare (not safe))
                                             (cons __tmp282695 '()))))
                                      (declare (not safe))
                                      (cons __tmp282697 __tmp282694))))
                               (declare (not safe))
                               (cons __tmp282700 __tmp282693))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp282692))))
                 (declare (not safe))
                 (cons '%#call __tmp282691)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275687_
                                                     _kwvars275701_))
                                               (_xkwargs275716_
                                                (map (lambda (_kw275713_
                                                              _kwvar275714_)
                                                       (let ((__tmp282704
                                                              (car _kw275713_))
                                                             (__tmp282702
                                                              (let ((__tmp282703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar275714_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282703))))
                 (declare (not safe))
                 (cons __tmp282704 __tmp282702)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275687_
                                                     _kwvars275701_))
                                               (_xargs275723_
                                                (map (lambda (_key275718_)
                                                       (let ((_$e275720_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key275718_ _xkwargs275716_))))
                 (if _$e275720_ (values _$e275720_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys275684_)))
                                          (let ((__tmp282705
                                                 (let ((__tmp282706
                                                        (let ((__tmp282707
                                                               (let ((__tmp282708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282709
                                     (let ((__tmp282710
                                            (let ((__tmp282724
                                                   (let ((__tmp282725
                                                          (let ((__tmp282735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt275698_ '())))
                        (__tmp282726
                         (let ((__tmp282727
                                (let ((__tmp282728
                                       (let ((__tmp282729
                                              (let ((__tmp282730
                                                     (let ((__tmp282731
                                                            (let ((__tmp282732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282733
                                  (let ((__tmp282734 (length _kwargs275687_)))
                                    (declare (not safe))
                                    (cons __tmp282734 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282733))))
                      (declare (not safe))
                      (cons __tmp282732 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp282731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp282730))))
                                         (declare (not safe))
                                         (cons '%#call __tmp282729))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp282728
                                   _stx275644_))))
                           (declare (not safe))
                           (cons __tmp282727 '()))))
                    (declare (not safe))
                    (cons __tmp282735 __tmp282726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282725 '())))
                                                  (__tmp282711
                                                   (let ((__tmp282712
                                                          (let ((__tmp282713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp282714
                                (let ((__tmp282715
                                       (let ((__tmp282716
                                              (let ((__tmp282717
                                                     (let ((__tmp282722
                                                            (let ((__tmp282723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main275683_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282723)))
                   (__tmp282718
                    (let ((__tmp282720
                           (let ((__tmp282721
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt275698_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282721)))
                          (__tmp282719
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs275686_ _xargs275723_))))
                      (declare (not safe))
                      (cons __tmp282720 __tmp282719))))
               (declare (not safe))
               (cons __tmp282722 __tmp282718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp282717))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282716
                                          _stx275644_))))
                                  (declare (not safe))
                                  (cons __tmp282715 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp282714 _kwset275711_))))
                    (declare (not safe))
                    (cons '%#begin __tmp282713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282712 '()))))
                                              (declare (not safe))
                                              (cons __tmp282724 __tmp282711))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp282710))))
                                (declare (not safe))
                                (cons __tmp282709 '()))))
                         (declare (not safe))
                         (cons _kwbind275706_ __tmp282708))))
                  (declare (not safe))
                  (cons '%#let-values __tmp282707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282706
                                                    _stx275644_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp282705)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g275663275672_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e275668275729_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275663275672_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e275669275732_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275663275672_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys275735_ _e275669275732_)
                               (_e275670275737_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275663275672_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main275740_ _e275670275737_))
                          (declare (not safe))
                          (_K275667275726_ _main275740_ _keys275735_))
                        (let () (declare (not safe)) (_else275665275680_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275646275654_
                 'gxc#!kw-lambda::t))
              (let* ((_e275650275745_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275646275654_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275651275748_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275646275654_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table275751_ _e275651275748_)
                     (_e275652275753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275646275654_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch275756_ _e275652275753_))
                (declare (not safe))
                (_K275649275742_ _dispatch275756_ _table275751_))
              (let () (declare (not safe)) (_E275648275658_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx275256_ _args275257_)
        (let _lp275259_ ((_rest275261_ _args275257_)
                         (_pargs275262_ '())
                         (_kwargs275263_ '()))
          (let* ((___stx281860281861_ _rest275261_)
                 (_g275269275321_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx281860281861_)))))
            (let ((___kont281862281863_
                   (lambda (_L275500_ _L275501_)
                     (let ((__tmp282745
                            (let ()
                              (declare (not safe))
                              (cons _L275501_ _pargs275262_))))
                       (declare (not safe))
                       (_lp275259_ _L275500_ __tmp282745 _kwargs275263_))))
                  (___kont281864281865_
                   (lambda (_L275446_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L275446_ _pargs275262_))
                             (reverse _kwargs275263_))))
                  (___kont281866281867_
                   (lambda (_L275393_ _L275394_ _L275395_)
                     (let ((_kw275412_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L275395_))))
                       (if (assq _kw275412_ _kwargs275263_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx275256_
                              _kw275412_))
                           (let ((__tmp282746
                                  (let ((__tmp282747
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw275412_ _L275394_))))
                                    (declare (not safe))
                                    (cons __tmp282747 _kwargs275263_))))
                             (declare (not safe))
                             (_lp275259_
                              _L275393_
                              _pargs275262_
                              __tmp282746))))))
                  (___kont281868281869_
                   (lambda (_L275341_ _L275342_)
                     (let ((__tmp282748
                            (let ()
                              (declare (not safe))
                              (cons _L275342_ _pargs275262_))))
                       (declare (not safe))
                       (_lp275259_ _L275341_ __tmp282748 _kwargs275263_))))
                  (___kont281870281871_
                   (lambda ()
                     (values (reverse _pargs275262_)
                             (reverse _kwargs275263_)))))
              (let* ((_g275268275328_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx281860281861_))
                            (___kont281870281871_)
                            (let () (declare (not safe)) (_g275269275321_)))))
                     (___match281967281968_
                      (lambda (_e275302275361_
                               _hd275301275364_
                               _tl275300275366_
                               _e275305275369_
                               _hd275304275372_
                               _tl275303275374_
                               _e275308275377_
                               _hd275307275380_
                               _tl275306275382_
                               _e275311275385_
                               _hd275310275388_
                               _tl275309275390_)
                        (let ((_L275393_ _tl275309275390_)
                              (_L275394_ _hd275310275388_)
                              (_L275395_ _hd275307275380_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L275395_))
                              (___kont281866281867_
                               _L275393_
                               _L275394_
                               _L275395_)
                              (___kont281868281869_
                               _tl275300275366_
                               _hd275301275364_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx281860281861_))
                    (let ((_e275275275465_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx281860281861_))))
                      (let ((_tl275273275470_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275275275465_)))
                            (_hd275274275468_
                             (let ()
                               (declare (not safe))
                               (##car _e275275275465_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd275274275468_))
                            (let ((_e275278275473_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd275274275468_))))
                              (let ((_tl275276275478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e275278275473_)))
                                    (_hd275277275476_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e275278275473_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd275277275476_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd275277275476_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl275276275478_))
                                            (let ((_e275281275481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl275276275478_))))
                                              (let ((_tl275279275486_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e275281275481_)))
                                                    (_hd275280275484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e275281275481_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd275280275484_))
                                                    (let ((_e275282275489_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd275280275484_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e275282275489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl275279275486_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl275273275470_))
                          (let ((_e275285275492_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl275273275470_))))
                            (let ((_tl275283275497_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e275285275492_)))
                                  (_hd275284275495_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e275285275492_))))
                              (___kont281862281863_
                               _tl275283275497_
                               _hd275284275495_)))
                          (___kont281868281869_
                           _tl275273275470_
                           _hd275274275468_))
                      (___kont281868281869_ _tl275273275470_ _hd275274275468_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e275282275489_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275279275486_))
                          (___kont281864281865_ _tl275273275470_)
                          (___kont281868281869_
                           _tl275273275470_
                           _hd275274275468_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275279275486_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl275273275470_))
                              (let ((_e275311275385_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl275273275470_))))
                                (let ((_tl275309275390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e275311275385_)))
                                      (_hd275310275388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e275311275385_))))
                                  (___match281967281968_
                                   _e275275275465_
                                   _hd275274275468_
                                   _tl275273275470_
                                   _e275278275473_
                                   _hd275277275476_
                                   _tl275276275478_
                                   _e275281275481_
                                   _hd275280275484_
                                   _tl275279275486_
                                   _e275311275385_
                                   _hd275310275388_
                                   _tl275309275390_)))
                              (___kont281868281869_
                               _tl275273275470_
                               _hd275274275468_))
                          (___kont281868281869_
                           _tl275273275470_
                           _hd275274275468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl275279275486_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl275273275470_))
                                                            (let ((_e275311275385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl275273275470_))))
                      (let ((_tl275309275390_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275311275385_)))
                            (_hd275310275388_
                             (let ()
                               (declare (not safe))
                               (##car _e275311275385_))))
                        (___match281967281968_
                         _e275275275465_
                         _hd275274275468_
                         _tl275273275470_
                         _e275278275473_
                         _hd275277275476_
                         _tl275276275478_
                         _e275281275481_
                         _hd275280275484_
                         _tl275279275486_
                         _e275311275385_
                         _hd275310275388_
                         _tl275309275390_)))
                    (___kont281868281869_ _tl275273275470_ _hd275274275468_))
                (___kont281868281869_ _tl275273275470_ _hd275274275468_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont281868281869_
                                             _tl275273275470_
                                             _hd275274275468_))
                                        (___kont281868281869_
                                         _tl275273275470_
                                         _hd275274275468_))
                                    (___kont281868281869_
                                     _tl275273275470_
                                     _hd275274275468_))))
                            (___kont281868281869_
                             _tl275273275470_
                             _hd275274275468_))))
                    (let () (declare (not safe)) (_g275268275328_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self275252_ _stx275253_ _args275254_)
        (let () (declare (not safe)) (gxc#xform-call% _stx275253_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
