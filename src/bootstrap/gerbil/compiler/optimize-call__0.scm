(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707742547)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl277128_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp281987 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl277128_ __tmp281987))
           (let ()
             (declare (not safe))
             (table-set! _tbl277128_ '%#call gxc#optimize-call%))
           _tbl277128_))))
    (define gxc#apply-optimize-call
      (lambda (_stx277111_ . _args277113_)
        (let ((__tmp281989
               (lambda ()
                 (declare (not safe))
                 (if (null? _args277113_)
                     (gxc#compile-e__0 _stx277111_)
                     (let ((_arg1277118_ (car _args277113_))
                           (_rest277120_ (cdr _args277113_)))
                       (if (null? _rest277120_)
                           (gxc#compile-e__1 _stx277111_ _arg1277118_)
                           (let ((_arg2277123_ (car _rest277120_))
                                 (_rest277125_ (cdr _rest277120_)))
                             (if (null? _rest277125_)
                                 (gxc#compile-e__2
                                  _stx277111_
                                  _arg1277118_
                                  _arg2277123_)
                                 (apply gxc#compile-e
                                        _stx277111_
                                        _arg1277118_
                                        _arg2277123_
                                        _rest277125_))))))))
              (__tmp281988 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp281989
           gxc#current-compile-methods
           __tmp281988))))
    (define gxc#optimize-call%
      (lambda (_stx276966_)
        (let* ((___stx281737281738_ _stx276966_)
               (_g276969276989_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281737281738_)))))
          (let ((___kont281739281740_
                 (lambda (_L277033_ _L277034_)
                   (let* ((_rator-id277052_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L277034_)))
                          (_rator-type277054_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id277052_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type277054_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp281990
                                  (##structure-ref
                                   _rator-type277054_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id277052_
                              '" => "
                              _rator-type277054_
                              '" "
                              __tmp281990))
                           (let ((_optimized277057_
                                  (let ((__method281985
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type277054_
                                            'optimize-call))))
                                    (if __method281985
                                        (__method281985
                                         _rator-type277054_
                                         _stx276966_
                                         _L277033_)
                                        (error '"Missing method"
                                               _rator-type277054_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type277054_))
                                 _optimized277057_
                                 (let* ((___stx281719281720_ _optimized277057_)
                                        (_g277060277070_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx281719281720_)))))
                                   (let ((___kont281721281722_
                                          (lambda (_L277090_)
                                            (let ((__tmp281991
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L277090_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp281991
                                               _stx276966_))))
                                         (___kont281723281724_
                                          (lambda () _optimized277057_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx281719281720_))
                                         (let ((_e277065277082_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx281719281720_))))
                                           (let ((_tl277063277087_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e277065277082_)))
                                                 (_hd277064277085_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e277065277082_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd277064277085_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd277064277085_))
                                                     (___kont281721281722_
                                                      _tl277063277087_)
                                                     (___kont281723281724_))
                                                 (___kont281723281724_))))
                                         (___kont281723281724_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type277054_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx276966_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx276966_
                                _rator-type277054_)))))))
                (___kont281741281742_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx276966_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx281737281738_))
                (let ((_e276975277001_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx281737281738_))))
                  (let ((_tl276973277006_
                         (let () (declare (not safe)) (##cdr _e276975277001_)))
                        (_hd276974277004_
                         (let ()
                           (declare (not safe))
                           (##car _e276975277001_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl276973277006_))
                        (let ((_e276978277009_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl276973277006_))))
                          (let ((_tl276976277014_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e276978277009_)))
                                (_hd276977277012_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e276978277009_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd276977277012_))
                                (let ((_e276981277017_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd276977277012_))))
                                  (let ((_tl276979277022_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e276981277017_)))
                                        (_hd276980277020_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e276981277017_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd276980277020_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd276980277020_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276979277022_))
                                                (let ((_e276984277025_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276979277022_))))
                                                  (let ((_tl276982277030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276984277025_)))
                                                        (_hd276983277028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276984277025_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276982277030_))
                                                        (___kont281739281740_
                                                         _tl276976277014_
                                                         _hd276983277028_)
                                                        (___kont281741281742_))))
                                                (___kont281741281742_))
                                            (___kont281741281742_))
                                        (___kont281741281742_))))
                                (___kont281741281742_))))
                        (___kont281741281742_))))
                (___kont281741281742_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self276920_ _stx276921_ _args276922_)
        (let* ((_g276924276934_
                (lambda (_g276925276931_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276925276931_))))
               (_g276923276963_
                (lambda (_g276925276937_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276925276937_))
                      (let ((_e276929276939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276925276937_))))
                        (let ((_hd276928276942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276929276939_)))
                              (_tl276927276944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276929276939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276927276944_))
                              ((lambda (_L276947_)
                                 (let* ((_klass276958_
                                         (let ((__tmp281992
                                                (##structure-ref
                                                 _self276920_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276921_
                                            __tmp281992)))
                                        (_object276960_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276947_))))
                                   (if (##structure-ref
                                        _klass276958_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282008
                                              (let ((__tmp282009
                                                     (let ((__tmp282011
                                                            (let ((__tmp282012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282013
                                  (##structure-ref
                                   _klass276958_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282013 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282012)))
                   (__tmp282010
                    (let () (declare (not safe)) (cons _object276960_ '()))))
               (declare (not safe))
               (cons __tmp282011 __tmp282010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp282009))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282008
                                          _stx276921_))
                                       (if (##structure-ref
                                            _klass276958_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282002
                                                  (let ((__tmp282003
                                                         (let ((__tmp282005
                                                                (let ((__tmp282006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282007
                                      (##structure-ref
                                       _klass276958_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282007 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282006)))
                       (__tmp282004
                        (let ()
                          (declare (not safe))
                          (cons _object276960_ '()))))
                   (declare (not safe))
                   (cons __tmp282005 __tmp282004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp282003))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282002
                                              _stx276921_))
                                           (let ((__tmp281993
                                                  (let ((__tmp281994
                                                         (let ((__tmp282000
                                                                (let ((__tmp282001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282001)))
                       (__tmp281995
                        (let ((__tmp281997
                               (let ((__tmp281998
                                      (let ((__tmp281999
                                             (##structure-ref
                                              _self276920_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp281999 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp281998)))
                              (__tmp281996
                               (let ()
                                 (declare (not safe))
                                 (cons _object276960_ '()))))
                          (declare (not safe))
                          (cons __tmp281997 __tmp281996))))
                   (declare (not safe))
                   (cons __tmp282000 __tmp281995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp281994))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp281993
                                              _stx276921_))))))
                               _hd276928276942_)
                              (let ()
                                (declare (not safe))
                                (_g276924276934_ _g276925276937_)))))
                      (let ()
                        (declare (not safe))
                        (_g276924276934_ _g276925276937_))))))
          (declare (not safe))
          (_g276923276963_ _args276922_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t281698)
        (let ((__id281699
               (let ((__tmp281700
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281698 'id))))
                 (if __tmp281700 __tmp281700 (error '"Unknown slot" 'id)))))
          (lambda (_self276920_ _stx276921_ _args276922_)
            (let* ((_g276924276934_
                    (lambda (_g276925276931_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276925276931_))))
                   (_g276923276963_
                    (lambda (_g276925276937_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276925276937_))
                          (let ((_e276929276939_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276925276937_))))
                            (let ((_hd276928276942_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276929276939_)))
                                  (_tl276927276944_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276929276939_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276927276944_))
                                  ((lambda (_L276947_)
                                     (let* ((_klass276958_
                                             (let ((__tmp282014
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276920_
                                                       __id281699
                                                       __t281698
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276921_
                                                __tmp282014)))
                                            (_object276960_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276947_))))
                                       (if (##structure-ref
                                            _klass276958_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282030
                                                  (let ((__tmp282031
                                                         (let ((__tmp282033
                                                                (let ((__tmp282034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282035
                                      (##structure-ref
                                       _klass276958_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282035 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282034)))
                       (__tmp282032
                        (let ()
                          (declare (not safe))
                          (cons _object276960_ '()))))
                   (declare (not safe))
                   (cons __tmp282033 __tmp282032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp282031))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282030
                                              _stx276921_))
                                           (if (##structure-ref
                                                _klass276958_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282024
                                                      (let ((__tmp282025
                                                             (let ((__tmp282027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282028
                                   (let ((__tmp282029
                                          (##structure-ref
                                           _klass276958_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282029 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp282028)))
                           (__tmp282026
                            (let ()
                              (declare (not safe))
                              (cons _object276960_ '()))))
                       (declare (not safe))
                       (cons __tmp282027 __tmp282026))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp282025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282024
                                                  _stx276921_))
                                               (let ((__tmp282015
                                                      (let ((__tmp282016
                                                             (let ((__tmp282022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282023
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282023)))
                           (__tmp282017
                            (let ((__tmp282019
                                   (let ((__tmp282020
                                          (let ((__tmp282021
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self276920_
                                                    __id281699
                                                    __t281698
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp282021 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp282020)))
                                  (__tmp282018
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276960_ '()))))
                              (declare (not safe))
                              (cons __tmp282019 __tmp282018))))
                       (declare (not safe))
                       (cons __tmp282022 __tmp282017))))
                (declare (not safe))
                (cons '%#call __tmp282016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282015
                                                  _stx276921_))))))
                                   _hd276928276942_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276924276934_ _g276925276937_)))))
                          (let ()
                            (declare (not safe))
                            (_g276924276934_ _g276925276937_))))))
              (declare (not safe))
              (_g276923276963_ _args276922_))))))
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
      (lambda (_self276651_ _stx276652_ _args276653_)
        (let* ((_klass276655_
                (let ((__tmp282036
                       (##structure-ref _self276651_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx276652_ __tmp282036)))
               (_fields276657_
                (length (##structure-ref _klass276655_ '5 gxc#!class::t '#f)))
               (_args276659_ (map gxc#compile-e _args276653_))
               (_inline-make-object276661_
                (let ((__tmp282037
                       (let ((__tmp282043
                              (let ((__tmp282044
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282044)))
                             (__tmp282038
                              (let ((__tmp282040
                                     (let ((__tmp282041
                                            (let ((__tmp282042
                                                   (##structure-ref
                                                    _self276651_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282042 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282041)))
                                    (__tmp282039
                                     (make-list _fields276657_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp282040 __tmp282039))))
                         (declare (not safe))
                         (cons __tmp282043 __tmp282038))))
                  (declare (not safe))
                  (cons '%#call __tmp282037))))
          (let ((_$e276664_
                 (##structure-ref _klass276655_ '6 gxc#!class::t '#f)))
            (if _$e276664_
                ((lambda (_ctor276667_)
                   (let ((_$obj276669_
                          (let ((__tmp282106 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp282106)))
                         (_ctor-impl276670_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass276655_
                             _ctor276667_))))
                     (let ((__tmp282107
                            (let ((__tmp282108
                                   (let ((__tmp282173
                                          (let ((__tmp282174
                                                 (let ((__tmp282176
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276669_
                                                                '())))
                                                       (__tmp282175
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object276661_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp282176
                                                         __tmp282175))))
                                            (declare (not safe))
                                            (cons __tmp282174 '())))
                                         (__tmp282109
                                          (let ((__tmp282110
                                                 (let ((__tmp282111
                                                        (let ((__tmp282115
                                                               (if _ctor-impl276670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282167
                                  (let ((__tmp282171
                                         (let ((__tmp282172
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl276670_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282172)))
                                        (__tmp282168
                                         (let ((__tmp282169
                                                (let ((__tmp282170
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276669_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282170))))
                                           (declare (not safe))
                                           (cons __tmp282169 _args276659_))))
                                    (declare (not safe))
                                    (cons __tmp282171 __tmp282168))))
                             (declare (not safe))
                             (cons '%#call __tmp282167))
                           (let* ((_$ctor276672_
                                   (let ((__tmp282116 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp282116)))
                                  (__tmp282117
                                   (let ((__tmp282152
                                          (let ((__tmp282153
                                                 (let ((__tmp282166
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor276672_
                                                                '())))
                                                       (__tmp282154
                                                        (let ((__tmp282155
                                                               (let ((__tmp282156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282164
                                     (let ((__tmp282165
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282165)))
                                    (__tmp282157
                                     (let ((__tmp282161
                                            (let ((__tmp282162
                                                   (let ((__tmp282163
                                                          (##structure-ref
                                                           _self276651_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp282163 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282162)))
                                           (__tmp282158
                                            (let ((__tmp282159
                                                   (let ((__tmp282160
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor276667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp282160))))
                                              (declare (not safe))
                                              (cons __tmp282159 '()))))
                                       (declare (not safe))
                                       (cons __tmp282161 __tmp282158))))
                                (declare (not safe))
                                (cons __tmp282164 __tmp282157))))
                         (declare (not safe))
                         (cons '%#call __tmp282156))))
                  (declare (not safe))
                  (cons __tmp282155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282166
                                                         __tmp282154))))
                                            (declare (not safe))
                                            (cons __tmp282153 '())))
                                         (__tmp282118
                                          (let ((__tmp282119
                                                 (let ((__tmp282120
                                                        (let ((__tmp282150
                                                               (let ((__tmp282151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor276672_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282151)))
                      (__tmp282121
                       (let ((__tmp282143
                              (let ((__tmp282144
                                     (let ((__tmp282148
                                            (let ((__tmp282149
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor276672_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282149)))
                                           (__tmp282145
                                            (let ((__tmp282146
                                                   (let ((__tmp282147
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282147))))
                                              (declare (not safe))
                                              (cons __tmp282146
                                                    _args276659_))))
                                       (declare (not safe))
                                       (cons __tmp282148 __tmp282145))))
                                (declare (not safe))
                                (cons '%#call __tmp282144)))
                             (__tmp282122
                              (let ((__tmp282123
                                     (let ((__tmp282124
                                            (let ((__tmp282141
                                                   (let ((__tmp282142
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282142)))
                                                  (__tmp282125
                                                   (let ((__tmp282139
                                                          (let ((__tmp282140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp282140)))
                 (__tmp282126
                  (let ((__tmp282137
                         (let ((__tmp282138
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282138)))
                        (__tmp282127
                         (let ((__tmp282134
                                (let ((__tmp282135
                                       (let ((__tmp282136
                                              (##structure-ref
                                               _self276651_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282136 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282135)))
                               (__tmp282128
                                (let ((__tmp282132
                                       (let ((__tmp282133
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282133)))
                                      (__tmp282129
                                       (let ((__tmp282130
                                              (let ((__tmp282131
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor276667_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp282131))))
                                         (declare (not safe))
                                         (cons __tmp282130 '()))))
                                  (declare (not safe))
                                  (cons __tmp282132 __tmp282129))))
                           (declare (not safe))
                           (cons __tmp282134 __tmp282128))))
                    (declare (not safe))
                    (cons __tmp282137 __tmp282127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282139
                                                           __tmp282126))))
                                              (declare (not safe))
                                              (cons __tmp282141 __tmp282125))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282124))))
                                (declare (not safe))
                                (cons __tmp282123 '()))))
                         (declare (not safe))
                         (cons __tmp282143 __tmp282122))))
                  (declare (not safe))
                  (cons __tmp282150 __tmp282121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp282120))))
                                            (declare (not safe))
                                            (cons __tmp282119 '()))))
                                     (declare (not safe))
                                     (cons __tmp282152 __tmp282118))))
                             (declare (not safe))
                             (cons '%#let-values __tmp282117))))
                      (__tmp282112
                       (let ((__tmp282113
                              (let ((__tmp282114
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276669_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282114))))
                         (declare (not safe))
                         (cons __tmp282113 '()))))
                  (declare (not safe))
                  (cons __tmp282115 __tmp282112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp282111))))
                                            (declare (not safe))
                                            (cons __tmp282110 '()))))
                                     (declare (not safe))
                                     (cons __tmp282173 __tmp282109))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282108))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282107 _stx276652_))))
                 _$e276664_)
                (if (##structure-ref _klass276655_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args276659_) _fields276657_)
                        (let ((__tmp282098
                               (let ((__tmp282099
                                      (let ((__tmp282104
                                             (let ((__tmp282105
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282105)))
                                            (__tmp282100
                                             (let ((__tmp282101
                                                    (let ((__tmp282102
                                                           (let ((__tmp282103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self276651_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp282103 '()))))
              (declare (not safe))
              (cons '%#ref __tmp282102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282101
                                                     _args276659_))))
                                        (declare (not safe))
                                        (cons __tmp282104 __tmp282100))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282099))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282098 _stx276652_))
                        (let ((__tmp282097
                               (##structure-ref
                                _self276651_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp282096
                               (length (##structure-ref
                                        _klass276655_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx276652_
                           __tmp282097
                           __tmp282096)))
                    (let ((_$obj276674_
                           (let ((__tmp282045 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp282045))))
                      (let _lp276676_ ((_rest276678_ _args276659_)
                                       (_initializers276679_ '()))
                        (let* ((___stx281775281776_ _rest276678_)
                               (_g276683276704_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx281775281776_)))))
                          (let ((___kont281777281778_
                                 (lambda (_L276758_ _L276759_ _L276760_)
                                   (let* ((_slot276790_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L276760_))))
                                          (_off276792_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass276655_
                                              _slot276790_))))
                                     (if _off276792_
                                         (let ((__tmp282047
                                                (let ((__tmp282048
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off276792_
                                                               _L276759_))))
                                                  (declare (not safe))
                                                  (cons __tmp282048
                                                        _initializers276679_))))
                                           (declare (not safe))
                                           (_lp276676_ _L276758_ __tmp282047))
                                         (let ((__tmp282046
                                                (##structure-ref
                                                 _self276651_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx276652_
                                            __tmp282046
                                            _slot276790_))))))
                                (___kont281779281780_
                                 (lambda ()
                                   (let ((__tmp282049
                                          (let ((__tmp282050
                                                 (let ((__tmp282073
                                                        (let ((__tmp282074
                                                               (let ((__tmp282076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276674_ '())))
                             (__tmp282075
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276661_ '()))))
                         (declare (not safe))
                         (cons __tmp282076 __tmp282075))))
                  (declare (not safe))
                  (cons __tmp282074 '())))
               (__tmp282051
                (let ((__tmp282052
                       (let ((__tmp282053
                              (let ((__tmp282070
                                     (let ((__tmp282071
                                            (let ((__tmp282072
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276674_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282072))))
                                       (declare (not safe))
                                       (cons __tmp282071 '())))
                                    (__tmp282054
                                     (let ((__tmp282055
                                            (lambda (_i276718_ _r276719_)
                                              (let ((__tmp282056
                                                     (let ((__tmp282057
                                                            (let ((__tmp282067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282068
                                  (let ((__tmp282069
                                         (##structure-ref
                                          _self276651_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp282069 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282068)))
                          (__tmp282058
                           (let ((__tmp282064
                                  (let ((__tmp282065
                                         (let ((__tmp282066 (car _i276718_)))
                                           (declare (not safe))
                                           (cons __tmp282066 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282065)))
                                 (__tmp282059
                                  (let ((__tmp282062
                                         (let ((__tmp282063
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276674_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282063)))
                                        (__tmp282060
                                         (let ((__tmp282061 (cdr _i276718_)))
                                           (declare (not safe))
                                           (cons __tmp282061 '()))))
                                    (declare (not safe))
                                    (cons __tmp282062 __tmp282060))))
                             (declare (not safe))
                             (cons __tmp282064 __tmp282059))))
                      (declare (not safe))
                      (cons __tmp282067 __tmp282058))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp282057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282056
                                                      _r276719_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp282055
                                               '()
                                               _initializers276679_))))
                                (declare (not safe))
                                (foldr1 cons __tmp282070 __tmp282054))))
                         (declare (not safe))
                         (cons '%#begin __tmp282053))))
                  (declare (not safe))
                  (cons __tmp282052 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282073
                                                         __tmp282051))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282050))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282049
                                      _stx276652_))))
                                (___kont281781281782_
                                 (lambda ()
                                   (let ((__tmp282077
                                          (let ((__tmp282078
                                                 (let ((__tmp282092
                                                        (let ((__tmp282093
                                                               (let ((__tmp282095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276674_ '())))
                             (__tmp282094
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276661_ '()))))
                         (declare (not safe))
                         (cons __tmp282095 __tmp282094))))
                  (declare (not safe))
                  (cons __tmp282093 '())))
               (__tmp282079
                (let ((__tmp282080
                       (let ((__tmp282081
                              (let ((__tmp282085
                                     (let ((__tmp282086
                                            (let ((__tmp282090
                                                   (let ((__tmp282091
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282091)))
                                                  (__tmp282087
                                                   (let ((__tmp282088
                                                          (let ((__tmp282089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276674_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282088
                                                           _args276659_))))
                                              (declare (not safe))
                                              (cons __tmp282090 __tmp282087))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282086)))
                                    (__tmp282082
                                     (let ((__tmp282083
                                            (let ((__tmp282084
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276674_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282084))))
                                       (declare (not safe))
                                       (cons __tmp282083 '()))))
                                (declare (not safe))
                                (cons __tmp282085 __tmp282082))))
                         (declare (not safe))
                         (cons '%#begin __tmp282081))))
                  (declare (not safe))
                  (cons __tmp282080 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282092
                                                         __tmp282079))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282078))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282077
                                      _stx276652_)))))
                            (let* ((_g276681276721_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx281775281776_))
                                          (___kont281779281780_)
                                          (___kont281781281782_))))
                                   (___match281812281813_
                                    (lambda (_e276690276726_
                                             _hd276689276729_
                                             _tl276688276731_
                                             _e276693276734_
                                             _hd276692276737_
                                             _tl276691276739_
                                             _e276696276742_
                                             _hd276695276745_
                                             _tl276694276747_
                                             _e276699276750_
                                             _hd276698276753_
                                             _tl276697276755_)
                                      (let ((_L276758_ _tl276697276755_)
                                            (_L276759_ _hd276698276753_)
                                            (_L276760_ _hd276695276745_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L276760_))
                                            (___kont281777281778_
                                             _L276758_
                                             _L276759_
                                             _L276760_)
                                            (___kont281781281782_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx281775281776_))
                                  (let ((_e276690276726_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx281775281776_))))
                                    (let ((_tl276688276731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276690276726_)))
                                          (_hd276689276729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276690276726_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd276689276729_))
                                          (let ((_e276693276734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd276689276729_))))
                                            (let ((_tl276691276739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276693276734_)))
                                                  (_hd276692276737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276693276734_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd276692276737_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd276692276737_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276691276739_))
                                                          (let ((_e276696276742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276691276739_))))
                    (let ((_tl276694276747_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276696276742_)))
                          (_hd276695276745_
                           (let ()
                             (declare (not safe))
                             (##car _e276696276742_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276694276747_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276688276731_))
                              (let ((_e276699276750_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276688276731_))))
                                (let ((_tl276697276755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276699276750_)))
                                      (_hd276698276753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276699276750_))))
                                  (___match281812281813_
                                   _e276690276726_
                                   _hd276689276729_
                                   _tl276688276731_
                                   _e276693276734_
                                   _hd276692276737_
                                   _tl276691276739_
                                   _e276696276742_
                                   _hd276695276745_
                                   _tl276694276747_
                                   _e276699276750_
                                   _hd276698276753_
                                   _tl276697276755_)))
                              (___kont281781281782_))
                          (___kont281781281782_))))
                  (___kont281781281782_))
              (___kont281781281782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281781281782_))))
                                          (___kont281781281782_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276681276721_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t281701)
        (let ((__id281702
               (let ((__tmp281703
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281701 'id))))
                 (if __tmp281703 __tmp281703 (error '"Unknown slot" 'id)))))
          (lambda (_self276651_ _stx276652_ _args276653_)
            (let* ((_klass276655_
                    (let ((__tmp282177
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self276651_
                              __id281702
                              __t281701
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx276652_ __tmp282177)))
                   (_fields276657_
                    (length (##structure-ref
                             _klass276655_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args276659_ (map gxc#compile-e _args276653_))
                   (_inline-make-object276661_
                    (let ((__tmp282178
                           (let ((__tmp282184
                                  (let ((__tmp282185
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282185)))
                                 (__tmp282179
                                  (let ((__tmp282181
                                         (let ((__tmp282182
                                                (let ((__tmp282183
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276651_
                                                          __id281702
                                                          __t281701
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282183 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282182)))
                                        (__tmp282180
                                         (make-list
                                          _fields276657_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp282181 __tmp282180))))
                             (declare (not safe))
                             (cons __tmp282184 __tmp282179))))
                      (declare (not safe))
                      (cons '%#call __tmp282178))))
              (let ((_$e276664_
                     (##structure-ref _klass276655_ '6 gxc#!class::t '#f)))
                (if _$e276664_
                    ((lambda (_ctor276667_)
                       (let ((_$obj276669_
                              (let ((__tmp282247 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp282247)))
                             (_ctor-impl276670_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass276655_
                                 _ctor276667_))))
                         (let ((__tmp282248
                                (let ((__tmp282249
                                       (let ((__tmp282314
                                              (let ((__tmp282315
                                                     (let ((__tmp282317
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj276669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282316
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object276661_ '()))))
               (declare (not safe))
               (cons __tmp282317 __tmp282316))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282315 '())))
                                             (__tmp282250
                                              (let ((__tmp282251
                                                     (let ((__tmp282252
                                                            (let ((__tmp282256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl276670_
                               (let ((__tmp282308
                                      (let ((__tmp282312
                                             (let ((__tmp282313
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl276670_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282313)))
                                            (__tmp282309
                                             (let ((__tmp282310
                                                    (let ((__tmp282311
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj276669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282310
                                                     _args276659_))))
                                        (declare (not safe))
                                        (cons __tmp282312 __tmp282309))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282308))
                               (let* ((_$ctor276672_
                                       (let ((__tmp282257
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp282257)))
                                      (__tmp282258
                                       (let ((__tmp282293
                                              (let ((__tmp282294
                                                     (let ((__tmp282307
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor276672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282295
                    (let ((__tmp282296
                           (let ((__tmp282297
                                  (let ((__tmp282305
                                         (let ((__tmp282306
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282306)))
                                        (__tmp282298
                                         (let ((__tmp282302
                                                (let ((__tmp282303
                                                       (let ((__tmp282304
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self276651_
                         __id281702
                         __t281701
                         '#f))))
                 (declare (not safe))
                 (cons __tmp282304 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282303)))
                                               (__tmp282299
                                                (let ((__tmp282300
                                                       (let ((__tmp282301
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor276667_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp282301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282300 '()))))
                                           (declare (not safe))
                                           (cons __tmp282302 __tmp282299))))
                                    (declare (not safe))
                                    (cons __tmp282305 __tmp282298))))
                             (declare (not safe))
                             (cons '%#call __tmp282297))))
                      (declare (not safe))
                      (cons __tmp282296 '()))))
               (declare (not safe))
               (cons __tmp282307 __tmp282295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282294 '())))
                                             (__tmp282259
                                              (let ((__tmp282260
                                                     (let ((__tmp282261
                                                            (let ((__tmp282291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282292
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor276672_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282292)))
                          (__tmp282262
                           (let ((__tmp282284
                                  (let ((__tmp282285
                                         (let ((__tmp282289
                                                (let ((__tmp282290
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor276672_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282290)))
                                               (__tmp282286
                                                (let ((__tmp282287
                                                       (let ((__tmp282288
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276669_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282287
                                                        _args276659_))))
                                           (declare (not safe))
                                           (cons __tmp282289 __tmp282286))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282285)))
                                 (__tmp282263
                                  (let ((__tmp282264
                                         (let ((__tmp282265
                                                (let ((__tmp282282
                                                       (let ((__tmp282283
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282283)))
              (__tmp282266
               (let ((__tmp282280
                      (let ((__tmp282281
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp282281)))
                     (__tmp282267
                      (let ((__tmp282278
                             (let ((__tmp282279
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282279)))
                            (__tmp282268
                             (let ((__tmp282275
                                    (let ((__tmp282276
                                           (let ((__tmp282277
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276651_
                                                     __id281702
                                                     __t281701
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282277 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282276)))
                                   (__tmp282269
                                    (let ((__tmp282273
                                           (let ((__tmp282274
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282274)))
                                          (__tmp282270
                                           (let ((__tmp282271
                                                  (let ((__tmp282272
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor276667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp282272))))
                                             (declare (not safe))
                                             (cons __tmp282271 '()))))
                                      (declare (not safe))
                                      (cons __tmp282273 __tmp282270))))
                               (declare (not safe))
                               (cons __tmp282275 __tmp282269))))
                        (declare (not safe))
                        (cons __tmp282278 __tmp282268))))
                 (declare (not safe))
                 (cons __tmp282280 __tmp282267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282282
                                                        __tmp282266))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282265))))
                                    (declare (not safe))
                                    (cons __tmp282264 '()))))
                             (declare (not safe))
                             (cons __tmp282284 __tmp282263))))
                      (declare (not safe))
                      (cons __tmp282291 __tmp282262))))
               (declare (not safe))
               (cons '%#if __tmp282261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282260 '()))))
                                         (declare (not safe))
                                         (cons __tmp282293 __tmp282259))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp282258))))
                          (__tmp282253
                           (let ((__tmp282254
                                  (let ((__tmp282255
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj276669_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282255))))
                             (declare (not safe))
                             (cons __tmp282254 '()))))
                      (declare (not safe))
                      (cons __tmp282256 __tmp282253))))
               (declare (not safe))
               (cons '%#begin __tmp282252))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282251 '()))))
                                         (declare (not safe))
                                         (cons __tmp282314 __tmp282250))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282249))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282248 _stx276652_))))
                     _$e276664_)
                    (if (##structure-ref _klass276655_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args276659_) _fields276657_)
                            (let ((__tmp282239
                                   (let ((__tmp282240
                                          (let ((__tmp282245
                                                 (let ((__tmp282246
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282246)))
                                                (__tmp282241
                                                 (let ((__tmp282242
                                                        (let ((__tmp282243
                                                               (let ((__tmp282244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self276651_
                                 __id281702
                                 __t281701
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp282244 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282242
                                                         _args276659_))))
                                            (declare (not safe))
                                            (cons __tmp282245 __tmp282241))))
                                     (declare (not safe))
                                     (cons '%#call __tmp282240))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp282239 _stx276652_))
                            (let ((__tmp282238
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self276651_
                                      __id281702
                                      __t281701
                                      '#f)))
                                  (__tmp282237
                                   (length (##structure-ref
                                            _klass276655_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx276652_
                               __tmp282238
                               __tmp282237)))
                        (let ((_$obj276674_
                               (let ((__tmp282186 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp282186))))
                          (let _lp276676_ ((_rest276678_ _args276659_)
                                           (_initializers276679_ '()))
                            (let* ((___stx281817281818_ _rest276678_)
                                   (_g276683276704_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx281817281818_)))))
                              (let ((___kont281819281820_
                                     (lambda (_L276758_ _L276759_ _L276760_)
                                       (let* ((_slot276790_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L276760_))))
                                              (_off276792_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass276655_
                                                  _slot276790_))))
                                         (if _off276792_
                                             (let ((__tmp282188
                                                    (let ((__tmp282189
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off276792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L276759_))))
              (declare (not safe))
              (cons __tmp282189 _initializers276679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp276676_
                                                _L276758_
                                                __tmp282188))
                                             (let ((__tmp282187
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276651_
                                                       __id281702
                                                       __t281701
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx276652_
                                                __tmp282187
                                                _slot276790_))))))
                                    (___kont281821281822_
                                     (lambda ()
                                       (let ((__tmp282190
                                              (let ((__tmp282191
                                                     (let ((__tmp282214
                                                            (let ((__tmp282215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282217
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276674_ '())))
                                 (__tmp282216
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276661_ '()))))
                             (declare (not safe))
                             (cons __tmp282217 __tmp282216))))
                      (declare (not safe))
                      (cons __tmp282215 '())))
                   (__tmp282192
                    (let ((__tmp282193
                           (let ((__tmp282194
                                  (let ((__tmp282211
                                         (let ((__tmp282212
                                                (let ((__tmp282213
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276674_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282213))))
                                           (declare (not safe))
                                           (cons __tmp282212 '())))
                                        (__tmp282195
                                         (let ((__tmp282196
                                                (lambda (_i276718_ _r276719_)
                                                  (let ((__tmp282197
                                                         (let ((__tmp282198
                                                                (let ((__tmp282208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282209
                                      (let ((__tmp282210
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self276651_
                                                __id281702
                                                __t281701
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp282210 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282209)))
                              (__tmp282199
                               (let ((__tmp282205
                                      (let ((__tmp282206
                                             (let ((__tmp282207
                                                    (car _i276718_)))
                                               (declare (not safe))
                                               (cons __tmp282207 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282206)))
                                     (__tmp282200
                                      (let ((__tmp282203
                                             (let ((__tmp282204
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276674_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282204)))
                                            (__tmp282201
                                             (let ((__tmp282202
                                                    (cdr _i276718_)))
                                               (declare (not safe))
                                               (cons __tmp282202 '()))))
                                        (declare (not safe))
                                        (cons __tmp282203 __tmp282201))))
                                 (declare (not safe))
                                 (cons __tmp282205 __tmp282200))))
                          (declare (not safe))
                          (cons __tmp282208 __tmp282199))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp282198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282197
                                                          _r276719_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp282196
                                                   '()
                                                   _initializers276679_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp282211 __tmp282195))))
                             (declare (not safe))
                             (cons '%#begin __tmp282194))))
                      (declare (not safe))
                      (cons __tmp282193 '()))))
               (declare (not safe))
               (cons __tmp282214 __tmp282192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282191))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282190
                                          _stx276652_))))
                                    (___kont281823281824_
                                     (lambda ()
                                       (let ((__tmp282218
                                              (let ((__tmp282219
                                                     (let ((__tmp282233
                                                            (let ((__tmp282234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282236
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276674_ '())))
                                 (__tmp282235
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276661_ '()))))
                             (declare (not safe))
                             (cons __tmp282236 __tmp282235))))
                      (declare (not safe))
                      (cons __tmp282234 '())))
                   (__tmp282220
                    (let ((__tmp282221
                           (let ((__tmp282222
                                  (let ((__tmp282226
                                         (let ((__tmp282227
                                                (let ((__tmp282231
                                                       (let ((__tmp282232
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282232)))
              (__tmp282228
               (let ((__tmp282229
                      (let ((__tmp282230
                             (let ()
                               (declare (not safe))
                               (cons _$obj276674_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282230))))
                 (declare (not safe))
                 (cons __tmp282229 _args276659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282231
                                                        __tmp282228))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282227)))
                                        (__tmp282223
                                         (let ((__tmp282224
                                                (let ((__tmp282225
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276674_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282225))))
                                           (declare (not safe))
                                           (cons __tmp282224 '()))))
                                    (declare (not safe))
                                    (cons __tmp282226 __tmp282223))))
                             (declare (not safe))
                             (cons '%#begin __tmp282222))))
                      (declare (not safe))
                      (cons __tmp282221 '()))))
               (declare (not safe))
               (cons __tmp282233 __tmp282220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282219))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282218
                                          _stx276652_)))))
                                (let* ((_g276681276721_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx281817281818_))
                                              (___kont281821281822_)
                                              (___kont281823281824_))))
                                       (___match281854281855_
                                        (lambda (_e276690276726_
                                                 _hd276689276729_
                                                 _tl276688276731_
                                                 _e276693276734_
                                                 _hd276692276737_
                                                 _tl276691276739_
                                                 _e276696276742_
                                                 _hd276695276745_
                                                 _tl276694276747_
                                                 _e276699276750_
                                                 _hd276698276753_
                                                 _tl276697276755_)
                                          (let ((_L276758_ _tl276697276755_)
                                                (_L276759_ _hd276698276753_)
                                                (_L276760_ _hd276695276745_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L276760_))
                                                (___kont281819281820_
                                                 _L276758_
                                                 _L276759_
                                                 _L276760_)
                                                (___kont281823281824_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx281817281818_))
                                      (let ((_e276690276726_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx281817281818_))))
                                        (let ((_tl276688276731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276690276726_)))
                                              (_hd276689276729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276690276726_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd276689276729_))
                                              (let ((_e276693276734_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd276689276729_))))
                                                (let ((_tl276691276739_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276693276734_)))
                                                      (_hd276692276737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276693276734_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd276692276737_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd276692276737_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276691276739_))
                      (let ((_e276696276742_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276691276739_))))
                        (let ((_tl276694276747_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276696276742_)))
                              (_hd276695276745_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276696276742_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276694276747_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276688276731_))
                                  (let ((_e276699276750_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276688276731_))))
                                    (let ((_tl276697276755_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276699276750_)))
                                          (_hd276698276753_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276699276750_))))
                                      (___match281854281855_
                                       _e276690276726_
                                       _hd276689276729_
                                       _tl276688276731_
                                       _e276693276734_
                                       _hd276692276737_
                                       _tl276691276739_
                                       _e276696276742_
                                       _hd276695276745_
                                       _tl276694276747_
                                       _e276699276750_
                                       _hd276698276753_
                                       _tl276697276755_)))
                                  (___kont281823281824_))
                              (___kont281823281824_))))
                      (___kont281823281824_))
                  (___kont281823281824_))
              (___kont281823281824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281823281824_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g276681276721_))))))))))))))))
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
      (lambda (_self276474_ _stx276475_ _args276476_)
        (let* ((_g276478276488_
                (lambda (_g276479276485_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276479276485_))))
               (_g276477276526_
                (lambda (_g276479276491_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276479276491_))
                      (let ((_e276483276493_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276479276491_))))
                        (let ((_hd276482276496_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276483276493_)))
                              (_tl276481276498_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276483276493_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276481276498_))
                              ((lambda (_L276501_)
                                 (let* ((_klass276512_
                                         (let ((__tmp282318
                                                (##structure-ref
                                                 _self276474_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276475_
                                            __tmp282318)))
                                        (_field276514_
                                         (let ((__tmp282319
                                                (##structure-ref
                                                 _self276474_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass276512_
                                            __tmp282319)))
                                        (_object276516_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276501_))))
                                   (if (##structure-ref
                                        _klass276512_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282396
                                              (let ((__tmp282405
                                                     (if (##structure-ref
                                                          _self276474_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp282397
                                                     (let ((__tmp282402
                                                            (let ((__tmp282403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282404
                                  (##structure-ref
                                   _self276474_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282404 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282403)))
                   (__tmp282398
                    (let ((__tmp282400
                           (let ((__tmp282401
                                  (let ()
                                    (declare (not safe))
                                    (cons _field276514_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282401)))
                          (__tmp282399
                           (let ()
                             (declare (not safe))
                             (cons _object276516_ '()))))
                      (declare (not safe))
                      (cons __tmp282400 __tmp282399))))
               (declare (not safe))
               (cons __tmp282402 __tmp282398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282405
                                                      __tmp282397))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282396
                                          _stx276475_))
                                       (if (##structure-ref
                                            _klass276512_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282386
                                                  (let ((__tmp282395
                                                         (if (##structure-ref
                                                              _self276474_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp282387
                                                         (let ((__tmp282392
                                                                (let ((__tmp282393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282394
                                      (##structure-ref
                                       _self276474_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282394 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282393)))
                       (__tmp282388
                        (let ((__tmp282390
                               (let ((__tmp282391
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276514_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282391)))
                              (__tmp282389
                               (let ()
                                 (declare (not safe))
                                 (cons _object276516_ '()))))
                          (declare (not safe))
                          (cons __tmp282390 __tmp282389))))
                   (declare (not safe))
                   (cons __tmp282392 __tmp282388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282395
                                                          __tmp282387))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282386
                                              _stx276475_))
                                           (let ((_$e276519_
                                                  (let ((__tmp282320
                                                         (##structure-ref
                                                          _self276474_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass276512_
                                                     __tmp282320))))
                                             (if _$e276519_
                                                 ((lambda (_klass276522_)
                                                    (let ((__tmp282376
                                                           (let ((__tmp282385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self276474_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp282377
                          (let ((__tmp282382
                                 (let ((__tmp282383
                                        (let ((__tmp282384
                                               (##structure-ref
                                                _self276474_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282384 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp282383)))
                                (__tmp282378
                                 (let ((__tmp282380
                                        (let ((__tmp282381
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field276514_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp282381)))
                                       (__tmp282379
                                        (let ()
                                          (declare (not safe))
                                          (cons _object276516_ '()))))
                                   (declare (not safe))
                                   (cons __tmp282380 __tmp282379))))
                            (declare (not safe))
                            (cons __tmp282382 __tmp282378))))
                     (declare (not safe))
                     (cons __tmp282385 __tmp282377))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp282376 _stx276475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e276519_)
                                                 (if (##structure-ref
                                                      _self276474_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp282330
                                                            (let* ((_$obj276524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282331 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp282331)))
                           (__tmp282332
                            (let ((__tmp282372
                                   (let ((__tmp282373
                                          (let ((__tmp282375
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj276524_ '())))
                                                (__tmp282374
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object276516_ '()))))
                                            (declare (not safe))
                                            (cons __tmp282375 __tmp282374))))
                                     (declare (not safe))
                                     (cons __tmp282373 '())))
                                  (__tmp282333
                                   (let ((__tmp282334
                                          (let ((__tmp282335
                                                 (let ((__tmp282364
                                                        (let ((__tmp282365
                                                               (let ((__tmp282369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282370
                                     (let ((__tmp282371
                                            (##structure-ref
                                             _klass276512_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp282371 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp282370)))
                             (__tmp282366
                              (let ((__tmp282367
                                     (let ((__tmp282368
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj276524_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282368))))
                                (declare (not safe))
                                (cons __tmp282367 '()))))
                         (declare (not safe))
                         (cons __tmp282369 __tmp282366))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp282365)))
               (__tmp282336
                (let ((__tmp282353
                       (let ((__tmp282354
                              (let ((__tmp282361
                                     (let ((__tmp282362
                                            (let ((__tmp282363
                                                   (##structure-ref
                                                    _self276474_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282363 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282362)))
                                    (__tmp282355
                                     (let ((__tmp282359
                                            (let ((__tmp282360
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276514_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282360)))
                                           (__tmp282356
                                            (let ((__tmp282357
                                                   (let ((__tmp282358
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282358))))
                                              (declare (not safe))
                                              (cons __tmp282357 '()))))
                                       (declare (not safe))
                                       (cons __tmp282359 __tmp282356))))
                                (declare (not safe))
                                (cons __tmp282361 __tmp282355))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp282354)))
                      (__tmp282337
                       (let ((__tmp282338
                              (let ((__tmp282339
                                     (let ((__tmp282351
                                            (let ((__tmp282352
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282352)))
                                           (__tmp282340
                                            (let ((__tmp282348
                                                   (let ((__tmp282349
                                                          (let ((__tmp282350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self276474_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp282350 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282349)))
                                                  (__tmp282341
                                                   (let ((__tmp282346
                                                          (let ((__tmp282347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276524_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282347)))
                 (__tmp282342
                  (let ((__tmp282343
                         (let ((__tmp282344
                                (let ((__tmp282345
                                       (##structure-ref
                                        _self276474_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp282345 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282344))))
                    (declare (not safe))
                    (cons __tmp282343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282346
                                                           __tmp282342))))
                                              (declare (not safe))
                                              (cons __tmp282348 __tmp282341))))
                                       (declare (not safe))
                                       (cons __tmp282351 __tmp282340))))
                                (declare (not safe))
                                (cons '%#call __tmp282339))))
                         (declare (not safe))
                         (cons __tmp282338 '()))))
                  (declare (not safe))
                  (cons __tmp282353 __tmp282337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282364
                                                         __tmp282336))))
                                            (declare (not safe))
                                            (cons '%#if __tmp282335))))
                                     (declare (not safe))
                                     (cons __tmp282334 '()))))
                              (declare (not safe))
                              (cons __tmp282372 __tmp282333))))
                      (declare (not safe))
                      (cons '%#let-values __tmp282332))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282330 _stx276475_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp282321
                                                            (let ((__tmp282322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282328
                                  (let ((__tmp282329
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282329)))
                                 (__tmp282323
                                  (let ((__tmp282324
                                         (let ((__tmp282325
                                                (let ((__tmp282326
                                                       (let ((__tmp282327
                                                              (##structure-ref
                                                               _self276474_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp282327
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp282326))))
                                           (declare (not safe))
                                           (cons __tmp282325 '()))))
                                    (declare (not safe))
                                    (cons _object276516_ __tmp282324))))
                             (declare (not safe))
                             (cons __tmp282328 __tmp282323))))
                      (declare (not safe))
                      (cons '%#call __tmp282322))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282321 _stx276475_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd276482276496_)
                              (let ()
                                (declare (not safe))
                                (_g276478276488_ _g276479276491_)))))
                      (let ()
                        (declare (not safe))
                        (_g276478276488_ _g276479276491_))))))
          (declare (not safe))
          (_g276477276526_ _args276476_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t281704)
        (let ((__checked?281705
               (let ((__tmp281708
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281704 'checked?))))
                 (if __tmp281708
                     __tmp281708
                     (error '"Unknown slot" 'checked?))))
              (__slot281706
               (let ((__tmp281709
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281704 'slot))))
                 (if __tmp281709 __tmp281709 (error '"Unknown slot" 'slot))))
              (__id281707
               (let ((__tmp281710
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281704 'id))))
                 (if __tmp281710 __tmp281710 (error '"Unknown slot" 'id)))))
          (lambda (_self276474_ _stx276475_ _args276476_)
            (let* ((_g276478276488_
                    (lambda (_g276479276485_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276479276485_))))
                   (_g276477276526_
                    (lambda (_g276479276491_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276479276491_))
                          (let ((_e276483276493_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276479276491_))))
                            (let ((_hd276482276496_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276483276493_)))
                                  (_tl276481276498_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276483276493_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276481276498_))
                                  ((lambda (_L276501_)
                                     (let* ((_klass276512_
                                             (let ((__tmp282406
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276474_
                                                       __id281707
                                                       __t281704
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276475_
                                                __tmp282406)))
                                            (_field276514_
                                             (let ((__tmp282407
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276474_
                                                       __slot281706
                                                       __t281704
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass276512_
                                                __tmp282407)))
                                            (_object276516_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276501_))))
                                       (if (##structure-ref
                                            _klass276512_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282484
                                                  (let ((__tmp282493
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276474_
                        __checked?281705
                        __t281704
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp282485
                 (let ((__tmp282490
                        (let ((__tmp282491
                               (let ((__tmp282492
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self276474_
                                         __id281707
                                         __t281704
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp282492 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282491)))
                       (__tmp282486
                        (let ((__tmp282488
                               (let ((__tmp282489
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276514_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282489)))
                              (__tmp282487
                               (let ()
                                 (declare (not safe))
                                 (cons _object276516_ '()))))
                          (declare (not safe))
                          (cons __tmp282488 __tmp282487))))
                   (declare (not safe))
                   (cons __tmp282490 __tmp282486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282493
                                                          __tmp282485))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282484
                                              _stx276475_))
                                           (if (##structure-ref
                                                _klass276512_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282474
                                                      (let ((__tmp282483
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276474_
                            __checked?281705
                            __t281704
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp282475
                     (let ((__tmp282480
                            (let ((__tmp282481
                                   (let ((__tmp282482
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276474_
                                             __id281707
                                             __t281704
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp282482 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282481)))
                           (__tmp282476
                            (let ((__tmp282478
                                   (let ((__tmp282479
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276514_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282479)))
                                  (__tmp282477
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276516_ '()))))
                              (declare (not safe))
                              (cons __tmp282478 __tmp282477))))
                       (declare (not safe))
                       (cons __tmp282480 __tmp282476))))
                (declare (not safe))
                (cons __tmp282483 __tmp282475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282474
                                                  _stx276475_))
                                               (let ((_$e276519_
                                                      (let ((__tmp282408
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276474_
                        __slot281706
                        __t281704
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass276512_ __tmp282408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e276519_
                                                     ((lambda (_klass276522_)
                                                        (let ((__tmp282464
                                                               (let ((__tmp282473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276474_
                                     __checked?281705
                                     __t281704
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp282465
                              (let ((__tmp282470
                                     (let ((__tmp282471
                                            (let ((__tmp282472
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276474_
                                                      __id281707
                                                      __t281704
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282472 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282471)))
                                    (__tmp282466
                                     (let ((__tmp282468
                                            (let ((__tmp282469
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276514_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282469)))
                                           (__tmp282467
                                            (let ()
                                              (declare (not safe))
                                              (cons _object276516_ '()))))
                                       (declare (not safe))
                                       (cons __tmp282468 __tmp282467))))
                                (declare (not safe))
                                (cons __tmp282470 __tmp282466))))
                         (declare (not safe))
                         (cons __tmp282473 __tmp282465))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp282464 _stx276475_)))
              _$e276519_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self276474_
                                                            __checked?281705
                                                            __t281704
                                                            '#f))
                                                         (let ((__tmp282418
                                                                (let* ((_$obj276524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp282419 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp282419)))
                               (__tmp282420
                                (let ((__tmp282460
                                       (let ((__tmp282461
                                              (let ((__tmp282463
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj276524_
                                                             '())))
                                                    (__tmp282462
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object276516_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp282463
                                                      __tmp282462))))
                                         (declare (not safe))
                                         (cons __tmp282461 '())))
                                      (__tmp282421
                                       (let ((__tmp282422
                                              (let ((__tmp282423
                                                     (let ((__tmp282452
                                                            (let ((__tmp282453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282457
                                  (let ((__tmp282458
                                         (let ((__tmp282459
                                                (##structure-ref
                                                 _klass276512_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp282459 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282458)))
                                 (__tmp282454
                                  (let ((__tmp282455
                                         (let ((__tmp282456
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276524_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282456))))
                                    (declare (not safe))
                                    (cons __tmp282455 '()))))
                             (declare (not safe))
                             (cons __tmp282457 __tmp282454))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp282453)))
                   (__tmp282424
                    (let ((__tmp282441
                           (let ((__tmp282442
                                  (let ((__tmp282449
                                         (let ((__tmp282450
                                                (let ((__tmp282451
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276474_
                                                          __id281707
                                                          __t281704
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282451 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282450)))
                                        (__tmp282443
                                         (let ((__tmp282447
                                                (let ((__tmp282448
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276514_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282448)))
                                               (__tmp282444
                                                (let ((__tmp282445
                                                       (let ((__tmp282446
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276524_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282445 '()))))
                                           (declare (not safe))
                                           (cons __tmp282447 __tmp282444))))
                                    (declare (not safe))
                                    (cons __tmp282449 __tmp282443))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp282442)))
                          (__tmp282425
                           (let ((__tmp282426
                                  (let ((__tmp282427
                                         (let ((__tmp282439
                                                (let ((__tmp282440
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282440)))
                                               (__tmp282428
                                                (let ((__tmp282436
                                                       (let ((__tmp282437
                                                              (let ((__tmp282438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276474_
                                __id281707
                                __t281704
                                '#f))))
                        (declare (not safe))
                        (cons __tmp282438 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282437)))
              (__tmp282429
               (let ((__tmp282434
                      (let ((__tmp282435
                             (let ()
                               (declare (not safe))
                               (cons _$obj276524_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282435)))
                     (__tmp282430
                      (let ((__tmp282431
                             (let ((__tmp282432
                                    (let ((__tmp282433
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self276474_
                                              __slot281706
                                              __t281704
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp282433 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282432))))
                        (declare (not safe))
                        (cons __tmp282431 '()))))
                 (declare (not safe))
                 (cons __tmp282434 __tmp282430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282436
                                                        __tmp282429))))
                                           (declare (not safe))
                                           (cons __tmp282439 __tmp282428))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282427))))
                             (declare (not safe))
                             (cons __tmp282426 '()))))
                      (declare (not safe))
                      (cons __tmp282441 __tmp282425))))
               (declare (not safe))
               (cons __tmp282452 __tmp282424))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp282423))))
                                         (declare (not safe))
                                         (cons __tmp282422 '()))))
                                  (declare (not safe))
                                  (cons __tmp282460 __tmp282421))))
                          (declare (not safe))
                          (cons '%#let-values __tmp282420))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282418 _stx276475_))
                 (let ((__tmp282409
                        (let ((__tmp282410
                               (let ((__tmp282416
                                      (let ((__tmp282417
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp282417)))
                                     (__tmp282411
                                      (let ((__tmp282412
                                             (let ((__tmp282413
                                                    (let ((__tmp282414
                                                           (let ((__tmp282415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self276474_
                             __slot281706
                             __t281704
                             '#f))))
                     (declare (not safe))
                     (cons __tmp282415 '()))))
              (declare (not safe))
              (cons '%#quote __tmp282414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282413 '()))))
                                        (declare (not safe))
                                        (cons _object276516_ __tmp282412))))
                                 (declare (not safe))
                                 (cons __tmp282416 __tmp282411))))
                          (declare (not safe))
                          (cons '%#call __tmp282410))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282409 _stx276475_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd276482276496_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276478276488_ _g276479276491_)))))
                          (let ()
                            (declare (not safe))
                            (_g276478276488_ _g276479276491_))))))
              (declare (not safe))
              (_g276477276526_ _args276476_))))))
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
      (lambda (_self276279_ _stx276280_ _args276281_)
        (let* ((_g276283276297_
                (lambda (_g276284276294_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276284276294_))))
               (_g276282276349_
                (lambda (_g276284276300_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276284276300_))
                      (let ((_e276289276302_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276284276300_))))
                        (let ((_hd276288276305_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276289276302_)))
                              (_tl276287276307_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276289276302_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276287276307_))
                              (let ((_e276292276310_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276287276307_))))
                                (let ((_hd276291276313_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276292276310_)))
                                      (_tl276290276315_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276292276310_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl276290276315_))
                                      ((lambda (_L276318_ _L276319_)
                                         (let* ((_klass276333_
                                                 (let ((__tmp282494
                                                        (##structure-ref
                                                         _self276279_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx276280_
                                                    __tmp282494)))
                                                (_field276335_
                                                 (let ((__tmp282495
                                                        (##structure-ref
                                                         _self276279_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass276333_
                                                    __tmp282495)))
                                                (_object276337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276319_)))
                                                (_value276339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276318_))))
                                           (if (##structure-ref
                                                _klass276333_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282577
                                                      (let ((__tmp282587
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self276279_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp282578
                     (let ((__tmp282584
                            (let ((__tmp282585
                                   (let ((__tmp282586
                                          (##structure-ref
                                           _self276279_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282586 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282585)))
                           (__tmp282579
                            (let ((__tmp282582
                                   (let ((__tmp282583
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276335_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282583)))
                                  (__tmp282580
                                   (let ((__tmp282581
                                          (let ()
                                            (declare (not safe))
                                            (cons _value276339_ '()))))
                                     (declare (not safe))
                                     (cons _object276337_ __tmp282581))))
                              (declare (not safe))
                              (cons __tmp282582 __tmp282580))))
                       (declare (not safe))
                       (cons __tmp282584 __tmp282579))))
                (declare (not safe))
                (cons __tmp282587 __tmp282578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282577
                                                  _stx276280_))
                                               (if (##structure-ref
                                                    _klass276333_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282566
                                                          (let ((__tmp282576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self276279_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282567
                         (let ((__tmp282573
                                (let ((__tmp282574
                                       (let ((__tmp282575
                                              (##structure-ref
                                               _self276279_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282575 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282574)))
                               (__tmp282568
                                (let ((__tmp282571
                                       (let ((__tmp282572
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276335_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282572)))
                                      (__tmp282569
                                       (let ((__tmp282570
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276339_ '()))))
                                         (declare (not safe))
                                         (cons _object276337_ __tmp282570))))
                                  (declare (not safe))
                                  (cons __tmp282571 __tmp282569))))
                           (declare (not safe))
                           (cons __tmp282573 __tmp282568))))
                    (declare (not safe))
                    (cons __tmp282576 __tmp282567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282566
                                                      _stx276280_))
                                                   (let ((_$e276342_
                                                          (let ((__tmp282496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self276279_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass276333_ __tmp282496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e276342_
                                                         ((lambda (_klass276345_)
                                                            (let ((__tmp282555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282565
                                  (if (##structure-ref
                                       _self276279_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp282556
                                  (let ((__tmp282562
                                         (let ((__tmp282563
                                                (let ((__tmp282564
                                                       (##structure-ref
                                                        _self276279_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp282564 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282563)))
                                        (__tmp282557
                                         (let ((__tmp282560
                                                (let ((__tmp282561
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276335_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282561)))
                                               (__tmp282558
                                                (let ((__tmp282559
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value276339_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object276337_
                                                        __tmp282559))))
                                           (declare (not safe))
                                           (cons __tmp282560 __tmp282558))))
                                    (declare (not safe))
                                    (cons __tmp282562 __tmp282557))))
                             (declare (not safe))
                             (cons __tmp282565 __tmp282556))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp282555 _stx276280_)))
                  _$e276342_)
                 (if (##structure-ref _self276279_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp282507
                            (let* ((_$obj276347_
                                    (let ((__tmp282508 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp282508)))
                                   (__tmp282509
                                    (let ((__tmp282551
                                           (let ((__tmp282552
                                                  (let ((__tmp282554
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj276347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp282553
                 (let () (declare (not safe)) (cons _object276337_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282554
                                                          __tmp282553))))
                                             (declare (not safe))
                                             (cons __tmp282552 '())))
                                          (__tmp282510
                                           (let ((__tmp282511
                                                  (let ((__tmp282512
                                                         (let ((__tmp282543
                                                                (let ((__tmp282544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282548
                                      (let ((__tmp282549
                                             (let ((__tmp282550
                                                    (##structure-ref
                                                     _klass276333_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp282550 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282549)))
                                     (__tmp282545
                                      (let ((__tmp282546
                                             (let ((__tmp282547
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276347_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282547))))
                                        (declare (not safe))
                                        (cons __tmp282546 '()))))
                                 (declare (not safe))
                                 (cons __tmp282548 __tmp282545))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp282544)))
                       (__tmp282513
                        (let ((__tmp282531
                               (let ((__tmp282532
                                      (let ((__tmp282540
                                             (let ((__tmp282541
                                                    (let ((__tmp282542
                                                           (##structure-ref
                                                            _self276279_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp282542 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282541)))
                                            (__tmp282533
                                             (let ((__tmp282538
                                                    (let ((__tmp282539
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282539)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282534
                                                    (let ((__tmp282536
                                                           (let ((__tmp282537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj276347_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282537)))
                  (__tmp282535
                   (let () (declare (not safe)) (cons _value276339_ '()))))
              (declare (not safe))
              (cons __tmp282536 __tmp282535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282538
                                                     __tmp282534))))
                                        (declare (not safe))
                                        (cons __tmp282540 __tmp282533))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp282532)))
                              (__tmp282514
                               (let ((__tmp282515
                                      (let ((__tmp282516
                                             (let ((__tmp282529
                                                    (let ((__tmp282530
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282530)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282517
                                                    (let ((__tmp282526
                                                           (let ((__tmp282527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp282528
                                 (##structure-ref
                                  _self276279_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp282528 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282527)))
                  (__tmp282518
                   (let ((__tmp282524
                          (let ((__tmp282525
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj276347_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp282525)))
                         (__tmp282519
                          (let ((__tmp282521
                                 (let ((__tmp282522
                                        (let ((__tmp282523
                                               (##structure-ref
                                                _self276279_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282523 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp282522)))
                                (__tmp282520
                                 (let ()
                                   (declare (not safe))
                                   (cons _value276339_ '()))))
                            (declare (not safe))
                            (cons __tmp282521 __tmp282520))))
                     (declare (not safe))
                     (cons __tmp282524 __tmp282519))))
              (declare (not safe))
              (cons __tmp282526 __tmp282518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282529
                                                     __tmp282517))))
                                        (declare (not safe))
                                        (cons '%#call __tmp282516))))
                                 (declare (not safe))
                                 (cons __tmp282515 '()))))
                          (declare (not safe))
                          (cons __tmp282531 __tmp282514))))
                   (declare (not safe))
                   (cons __tmp282543 __tmp282513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp282512))))
                                             (declare (not safe))
                                             (cons __tmp282511 '()))))
                                      (declare (not safe))
                                      (cons __tmp282551 __tmp282510))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282509))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282507 _stx276280_))
                     (let ((__tmp282497
                            (let ((__tmp282498
                                   (let ((__tmp282505
                                          (let ((__tmp282506
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp282506)))
                                         (__tmp282499
                                          (let ((__tmp282500
                                                 (let ((__tmp282502
                                                        (let ((__tmp282503
                                                               (let ((__tmp282504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self276279_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp282504 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282503)))
               (__tmp282501
                (let () (declare (not safe)) (cons _value276339_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282502
                                                         __tmp282501))))
                                            (declare (not safe))
                                            (cons _object276337_
                                                  __tmp282500))))
                                     (declare (not safe))
                                     (cons __tmp282505 __tmp282499))))
                              (declare (not safe))
                              (cons '%#call __tmp282498))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282497 _stx276280_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd276291276313_
                                       _hd276288276305_)
                                      (let ()
                                        (declare (not safe))
                                        (_g276283276297_ _g276284276300_)))))
                              (let ()
                                (declare (not safe))
                                (_g276283276297_ _g276284276300_)))))
                      (let ()
                        (declare (not safe))
                        (_g276283276297_ _g276284276300_))))))
          (declare (not safe))
          (_g276282276349_ _args276281_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t281711)
        (let ((__checked?281712
               (let ((__tmp281715
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281711 'checked?))))
                 (if __tmp281715
                     __tmp281715
                     (error '"Unknown slot" 'checked?))))
              (__slot281713
               (let ((__tmp281716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281711 'slot))))
                 (if __tmp281716 __tmp281716 (error '"Unknown slot" 'slot))))
              (__id281714
               (let ((__tmp281717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281711 'id))))
                 (if __tmp281717 __tmp281717 (error '"Unknown slot" 'id)))))
          (lambda (_self276279_ _stx276280_ _args276281_)
            (let* ((_g276283276297_
                    (lambda (_g276284276294_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276284276294_))))
                   (_g276282276349_
                    (lambda (_g276284276300_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276284276300_))
                          (let ((_e276289276302_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276284276300_))))
                            (let ((_hd276288276305_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276289276302_)))
                                  (_tl276287276307_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276289276302_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276287276307_))
                                  (let ((_e276292276310_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276287276307_))))
                                    (let ((_hd276291276313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276292276310_)))
                                          (_tl276290276315_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276292276310_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276290276315_))
                                          ((lambda (_L276318_ _L276319_)
                                             (let* ((_klass276333_
                                                     (let ((__tmp282588
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276279_
                                                               __id281714
                                                               __t281711
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx276280_
                                                        __tmp282588)))
                                                    (_field276335_
                                                     (let ((__tmp282589
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276279_
                                                               __slot281713
                                                               __t281711
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass276333_
                                                        __tmp282589)))
                                                    (_object276337_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276319_)))
                                                    (_value276339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276318_))))
                                               (if (##structure-ref
                                                    _klass276333_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282671
                                                          (let ((__tmp282681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276279_
                                __checked?281712
                                __t281711
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282672
                         (let ((__tmp282678
                                (let ((__tmp282679
                                       (let ((__tmp282680
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self276279_
                                                 __id281714
                                                 __t281711
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp282680 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282679)))
                               (__tmp282673
                                (let ((__tmp282676
                                       (let ((__tmp282677
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276335_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282677)))
                                      (__tmp282674
                                       (let ((__tmp282675
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276339_ '()))))
                                         (declare (not safe))
                                         (cons _object276337_ __tmp282675))))
                                  (declare (not safe))
                                  (cons __tmp282676 __tmp282674))))
                           (declare (not safe))
                           (cons __tmp282678 __tmp282673))))
                    (declare (not safe))
                    (cons __tmp282681 __tmp282672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282671
                                                      _stx276280_))
                                                   (if (##structure-ref
                                                        _klass276333_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp282660
                                                              (let ((__tmp282670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self276279_
                                    __checked?281712
                                    __t281711
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp282661
                             (let ((__tmp282667
                                    (let ((__tmp282668
                                           (let ((__tmp282669
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276279_
                                                     __id281714
                                                     __t281711
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282669 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282668)))
                                   (__tmp282662
                                    (let ((__tmp282665
                                           (let ((__tmp282666
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field276335_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282666)))
                                          (__tmp282663
                                           (let ((__tmp282664
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value276339_ '()))))
                                             (declare (not safe))
                                             (cons _object276337_
                                                   __tmp282664))))
                                      (declare (not safe))
                                      (cons __tmp282665 __tmp282663))))
                               (declare (not safe))
                               (cons __tmp282667 __tmp282662))))
                        (declare (not safe))
                        (cons __tmp282670 __tmp282661))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp282660 _stx276280_))
               (let ((_$e276342_
                      (let ((__tmp282590
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276279_
                                __slot281713
                                __t281711
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass276333_
                         __tmp282590))))
                 (if _$e276342_
                     ((lambda (_klass276345_)
                        (let ((__tmp282649
                               (let ((__tmp282659
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276279_
                                             __checked?281712
                                             __t281711
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp282650
                                      (let ((__tmp282656
                                             (let ((__tmp282657
                                                    (let ((__tmp282658
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self276279_
                                                              __id281714
                                                              __t281711
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp282658 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282657)))
                                            (__tmp282651
                                             (let ((__tmp282654
                                                    (let ((__tmp282655
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282655)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282652
                                                    (let ((__tmp282653
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value276339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object276337_ __tmp282653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282654
                                                     __tmp282652))))
                                        (declare (not safe))
                                        (cons __tmp282656 __tmp282651))))
                                 (declare (not safe))
                                 (cons __tmp282659 __tmp282650))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282649 _stx276280_)))
                      _$e276342_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276279_
                            __checked?281712
                            __t281711
                            '#f))
                         (let ((__tmp282601
                                (let* ((_$obj276347_
                                        (let ((__tmp282602 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp282602)))
                                       (__tmp282603
                                        (let ((__tmp282645
                                               (let ((__tmp282646
                                                      (let ((__tmp282648
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj276347_ '())))
                    (__tmp282647
                     (let () (declare (not safe)) (cons _object276337_ '()))))
                (declare (not safe))
                (cons __tmp282648 __tmp282647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282646 '())))
                                              (__tmp282604
                                               (let ((__tmp282605
                                                      (let ((__tmp282606
                                                             (let ((__tmp282637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282638
                                   (let ((__tmp282642
                                          (let ((__tmp282643
                                                 (let ((__tmp282644
                                                        (##structure-ref
                                                         _klass276333_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp282644 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp282643)))
                                         (__tmp282639
                                          (let ((__tmp282640
                                                 (let ((__tmp282641
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276347_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282641))))
                                            (declare (not safe))
                                            (cons __tmp282640 '()))))
                                     (declare (not safe))
                                     (cons __tmp282642 __tmp282639))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp282638)))
                           (__tmp282607
                            (let ((__tmp282625
                                   (let ((__tmp282626
                                          (let ((__tmp282634
                                                 (let ((__tmp282635
                                                        (let ((__tmp282636
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self276279_
                          __id281714
                          __t281711
                          '#f))))
                  (declare (not safe))
                  (cons __tmp282636 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282635)))
                                                (__tmp282627
                                                 (let ((__tmp282632
                                                        (let ((__tmp282633
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field276335_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282633)))
               (__tmp282628
                (let ((__tmp282630
                       (let ((__tmp282631
                              (let ()
                                (declare (not safe))
                                (cons _$obj276347_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282631)))
                      (__tmp282629
                       (let () (declare (not safe)) (cons _value276339_ '()))))
                  (declare (not safe))
                  (cons __tmp282630 __tmp282629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282632
                                                         __tmp282628))))
                                            (declare (not safe))
                                            (cons __tmp282634 __tmp282627))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp282626)))
                                  (__tmp282608
                                   (let ((__tmp282609
                                          (let ((__tmp282610
                                                 (let ((__tmp282623
                                                        (let ((__tmp282624
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282624)))
               (__tmp282611
                (let ((__tmp282620
                       (let ((__tmp282621
                              (let ((__tmp282622
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self276279_
                                        __id281714
                                        __t281711
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp282622 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282621)))
                      (__tmp282612
                       (let ((__tmp282618
                              (let ((__tmp282619
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276347_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282619)))
                             (__tmp282613
                              (let ((__tmp282615
                                     (let ((__tmp282616
                                            (let ((__tmp282617
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276279_
                                                      __slot281713
                                                      __t281711
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282617 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282616)))
                                    (__tmp282614
                                     (let ()
                                       (declare (not safe))
                                       (cons _value276339_ '()))))
                                (declare (not safe))
                                (cons __tmp282615 __tmp282614))))
                         (declare (not safe))
                         (cons __tmp282618 __tmp282613))))
                  (declare (not safe))
                  (cons __tmp282620 __tmp282612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282623
                                                         __tmp282611))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282610))))
                                     (declare (not safe))
                                     (cons __tmp282609 '()))))
                              (declare (not safe))
                              (cons __tmp282625 __tmp282608))))
                       (declare (not safe))
                       (cons __tmp282637 __tmp282607))))
                (declare (not safe))
                (cons '%#if __tmp282606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282605 '()))))
                                          (declare (not safe))
                                          (cons __tmp282645 __tmp282604))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282603))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282601 _stx276280_))
                         (let ((__tmp282591
                                (let ((__tmp282592
                                       (let ((__tmp282599
                                              (let ((__tmp282600
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp282600)))
                                             (__tmp282593
                                              (let ((__tmp282594
                                                     (let ((__tmp282596
                                                            (let ((__tmp282597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282598
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276279_
                                     __slot281713
                                     __t281711
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp282598 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282597)))
                   (__tmp282595
                    (let () (declare (not safe)) (cons _value276339_ '()))))
               (declare (not safe))
               (cons __tmp282596 __tmp282595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object276337_
                                                      __tmp282594))))
                                         (declare (not safe))
                                         (cons __tmp282599 __tmp282593))))
                                  (declare (not safe))
                                  (cons '%#call __tmp282592))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp282591
                            _stx276280_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd276291276313_
                                           _hd276288276305_)
                                          (let ()
                                            (declare (not safe))
                                            (_g276283276297_
                                             _g276284276300_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276283276297_ _g276284276300_)))))
                          (let ()
                            (declare (not safe))
                            (_g276283276297_ _g276284276300_))))))
              (declare (not safe))
              (_g276282276349_ _args276281_))))))
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
      (lambda (_self276113_ _stx276114_ _args276115_)
        (let* ((_self276116276125_ _self276113_)
               (_E276118276129_
                (lambda () (error '"No clause matching" _self276116276125_)))
               (_K276119276136_
                (lambda (_inline276132_ _dispatch276133_ _arity276134_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self276113_ _args276115_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx276114_
                         _arity276134_)))
                  (if _inline276132_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp282687
                               (let ((__tmp282688
                                      (_inline276132_ _stx276114_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp282688
                                  _stx276114_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp282687)))
                      (if _dispatch276133_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch276133_))
                            (let ((__tmp282682
                                   (let ((__tmp282683
                                          (let ((__tmp282684
                                                 (let ((__tmp282685
                                                        (let ((__tmp282686
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch276133_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282685
                                                         _args276115_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282684))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282683
                                      _stx276114_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp282682)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx276114_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276116276125_ 'gxc#!lambda::t))
              (let* ((_e276120276139_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276116276125_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276121276142_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276116276125_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276145_ _e276121276142_)
                     (_e276122276147_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276116276125_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch276150_ _e276122276147_)
                     (_e276123276152_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276116276125_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline276155_ _e276123276152_))
                (declare (not safe))
                (_K276119276136_
                 _inline276155_
                 _dispatch276150_
                 _arity276145_))
              (let () (declare (not safe)) (_E276118276129_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self275952_ _stx275953_ _args275954_)
        (let* ((_self275955275962_ _self275952_)
               (_E275957275966_
                (lambda () (error '"No clause matching" _self275955275962_)))
               (_K275958275980_
                (lambda (_clauses275969_)
                  (let ((_$e275975_
                         (let ((__tmp282689
                                (lambda (_g275970275972_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g275970275972_
                                     _args275954_)))))
                           (declare (not safe))
                           (find __tmp282689 _clauses275969_))))
                    (if _$e275975_
                        ((lambda (_clause275978_)
                           (let ((__method281986
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause275978_
                                     'optimize-call))))
                             (if __method281986
                                 (__method281986
                                  _clause275978_
                                  _stx275953_
                                  _args275954_)
                                 (error '"Missing method"
                                        _clause275978_
                                        'optimize-call))))
                         _$e275975_)
                        (let ((__tmp282690
                               (map gxc#!lambda-arity _clauses275969_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx275953_
                           __tmp282690)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275955275962_
                 'gxc#!case-lambda::t))
              (let* ((_e275959275983_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275955275962_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275960275986_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275955275962_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses275989_ _e275960275986_))
                (declare (not safe))
                (_K275958275980_ _clauses275989_))
              (let () (declare (not safe)) (_E275957275966_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self275766_ _args275767_)
        (let* ((_self275768275775_ _self275766_)
               (_E275770275779_
                (lambda () (error '"No clause matching" _self275768275775_)))
               (_K275771275819_
                (lambda (_arity275782_)
                  (let* ((_arity275783275792_ _arity275782_)
                         (_E275786275796_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity275783275792_))))
                    (let ((_K275790275816_
                           (lambda ()
                             (fx= (length _args275767_) _arity275782_)))
                          (_K275787275802_
                           (lambda (_arity275800_)
                             (fx>= (length _args275767_) _arity275800_))))
                      (let ((_try-match275785275812_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity275783275792_))
                                   (let ((_tl275789275807_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity275783275792_)))
                                         (_hd275788275805_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity275783275792_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl275789275807_))
                                         (let ((_arity275810_
                                                _hd275788275805_))
                                           (declare (not safe))
                                           (_K275787275802_ _arity275810_))
                                         (let ()
                                           (declare (not safe))
                                           (_E275786275796_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E275786275796_))))))
                        (if (fixnum? _arity275783275792_)
                            (let () (declare (not safe)) (_K275790275816_))
                            (let ()
                              (declare (not safe))
                              (_try-match275785275812_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275768275775_ 'gxc#!lambda::t))
              (let* ((_e275772275822_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275768275775_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275773275825_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275768275775_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity275828_ _e275773275825_))
                (declare (not safe))
                (_K275771275819_ _arity275828_))
              (let () (declare (not safe)) (_E275770275779_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self275651_ _stx275652_ _args275653_)
        (let* ((_self275654275662_ _self275651_)
               (_E275656275666_
                (lambda () (error '"No clause matching" _self275654275662_)))
               (_K275657275750_
                (lambda (_dispatch275669_ _table275670_)
                  (let* ((_g275671275680_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch275669_)))
                         (_else275673275688_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch275669_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx275652_))))
                         (_K275675275734_
                          (lambda (_main275691_ _keys275692_)
                            (let ((_g282691_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx275652_
                                      _args275653_))))
                              (begin
                                (let ((_g282692_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g282691_)
                                             (##vector-length _g282691_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g282692_ 2)))
                                      (error "Context expects 2 values"
                                             _g282692_)))
                                (let ((_pargs275694_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282691_ 0)))
                                      (_kwargs275695_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282691_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main275691_))
                                    (if _table275670_
                                        (let ((_xargs275702_
                                               (map (lambda (_key275697_)
                                                      (let ((_$e275699_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key275697_ _kwargs275695_))))
                (if _$e275699_ (values _$e275699_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys275692_)))
                                          (for-each
                                           (lambda (_kw275704_)
                                             (if (memq (car _kw275704_)
                                                       _keys275692_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx275652_
                                                    _keys275692_
                                                    _kw275704_))))
                                           _kwargs275695_)
                                          (let ((__tmp282744
                                                 (let ((__tmp282745
                                                        (let ((__tmp282746
                                                               (let ((__tmp282751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282752
                                     (let ()
                                       (declare (not safe))
                                       (cons _main275691_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282752)))
                             (__tmp282747
                              (let ((__tmp282749
                                     (let ((__tmp282750
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282750)))
                                    (__tmp282748
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs275694_
                                               _xargs275702_))))
                                (declare (not safe))
                                (cons __tmp282749 __tmp282748))))
                         (declare (not safe))
                         (cons __tmp282751 __tmp282747))))
                  (declare (not safe))
                  (cons '%#call __tmp282746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282745
                                                    _stx275652_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp282744)))
                                        (let* ((_kwt275706_
                                                (let ((__tmp282693
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp282693)))
                                               (_kwvars275709_
                                                (map (lambda (_g282694_)
                                                       (let ((__tmp282695
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp282695)))
                                                     _kwargs275695_))
                                               (_kwbind275714_
                                                (map (lambda (_kw275711_
                                                              _kwvar275712_)
                                                       (let ((__tmp282698
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar275712_ '())))
                     (__tmp282696
                      (let ((__tmp282697 (cdr _kw275711_)))
                        (declare (not safe))
                        (cons __tmp282697 '()))))
                 (declare (not safe))
                 (cons __tmp282698 __tmp282696)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275695_
                                                     _kwvars275709_))
                                               (_kwset275719_
                                                (map (lambda (_kw275716_
                                                              _kwvar275717_)
                                                       (let ((__tmp282699
                                                              (let ((__tmp282700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp282708
                                    (let ((__tmp282709
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt275706_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282709)))
                                   (__tmp282701
                                    (let ((__tmp282705
                                           (let ((__tmp282706
                                                  (let ((__tmp282707
                                                         (car _kw275716_)))
                                                    (declare (not safe))
                                                    (cons __tmp282707 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282706)))
                                          (__tmp282702
                                           (let ((__tmp282703
                                                  (let ((__tmp282704
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar275717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp282704))))
                                             (declare (not safe))
                                             (cons __tmp282703 '()))))
                                      (declare (not safe))
                                      (cons __tmp282705 __tmp282702))))
                               (declare (not safe))
                               (cons __tmp282708 __tmp282701))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp282700))))
                 (declare (not safe))
                 (cons '%#call __tmp282699)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275695_
                                                     _kwvars275709_))
                                               (_xkwargs275724_
                                                (map (lambda (_kw275721_
                                                              _kwvar275722_)
                                                       (let ((__tmp282712
                                                              (car _kw275721_))
                                                             (__tmp282710
                                                              (let ((__tmp282711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar275722_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282711))))
                 (declare (not safe))
                 (cons __tmp282712 __tmp282710)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275695_
                                                     _kwvars275709_))
                                               (_xargs275731_
                                                (map (lambda (_key275726_)
                                                       (let ((_$e275728_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key275726_ _xkwargs275724_))))
                 (if _$e275728_ (values _$e275728_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys275692_)))
                                          (let ((__tmp282713
                                                 (let ((__tmp282714
                                                        (let ((__tmp282715
                                                               (let ((__tmp282716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282717
                                     (let ((__tmp282718
                                            (let ((__tmp282732
                                                   (let ((__tmp282733
                                                          (let ((__tmp282743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt275706_ '())))
                        (__tmp282734
                         (let ((__tmp282735
                                (let ((__tmp282736
                                       (let ((__tmp282737
                                              (let ((__tmp282738
                                                     (let ((__tmp282739
                                                            (let ((__tmp282740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282741
                                  (let ((__tmp282742 (length _kwargs275695_)))
                                    (declare (not safe))
                                    (cons __tmp282742 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282741))))
                      (declare (not safe))
                      (cons __tmp282740 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp282739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp282738))))
                                         (declare (not safe))
                                         (cons '%#call __tmp282737))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp282736
                                   _stx275652_))))
                           (declare (not safe))
                           (cons __tmp282735 '()))))
                    (declare (not safe))
                    (cons __tmp282743 __tmp282734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282733 '())))
                                                  (__tmp282719
                                                   (let ((__tmp282720
                                                          (let ((__tmp282721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp282722
                                (let ((__tmp282723
                                       (let ((__tmp282724
                                              (let ((__tmp282725
                                                     (let ((__tmp282730
                                                            (let ((__tmp282731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main275691_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282731)))
                   (__tmp282726
                    (let ((__tmp282728
                           (let ((__tmp282729
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt275706_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282729)))
                          (__tmp282727
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs275694_ _xargs275731_))))
                      (declare (not safe))
                      (cons __tmp282728 __tmp282727))))
               (declare (not safe))
               (cons __tmp282730 __tmp282726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp282725))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282724
                                          _stx275652_))))
                                  (declare (not safe))
                                  (cons __tmp282723 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp282722 _kwset275719_))))
                    (declare (not safe))
                    (cons '%#begin __tmp282721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282720 '()))))
                                              (declare (not safe))
                                              (cons __tmp282732 __tmp282719))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp282718))))
                                (declare (not safe))
                                (cons __tmp282717 '()))))
                         (declare (not safe))
                         (cons _kwbind275714_ __tmp282716))))
                  (declare (not safe))
                  (cons '%#let-values __tmp282715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282714
                                                    _stx275652_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp282713)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g275671275680_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e275676275737_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275671275680_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e275677275740_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275671275680_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys275743_ _e275677275740_)
                               (_e275678275745_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275671275680_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main275748_ _e275678275745_))
                          (declare (not safe))
                          (_K275675275734_ _main275748_ _keys275743_))
                        (let () (declare (not safe)) (_else275673275688_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275654275662_
                 'gxc#!kw-lambda::t))
              (let* ((_e275658275753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275654275662_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275659275756_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275654275662_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table275759_ _e275659275756_)
                     (_e275660275761_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275654275662_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch275764_ _e275660275761_))
                (declare (not safe))
                (_K275657275750_ _dispatch275764_ _table275759_))
              (let () (declare (not safe)) (_E275656275666_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx275264_ _args275265_)
        (let _lp275267_ ((_rest275269_ _args275265_)
                         (_pargs275270_ '())
                         (_kwargs275271_ '()))
          (let* ((___stx281868281869_ _rest275269_)
                 (_g275277275329_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx281868281869_)))))
            (let ((___kont281870281871_
                   (lambda (_L275508_ _L275509_)
                     (let ((__tmp282753
                            (let ()
                              (declare (not safe))
                              (cons _L275509_ _pargs275270_))))
                       (declare (not safe))
                       (_lp275267_ _L275508_ __tmp282753 _kwargs275271_))))
                  (___kont281872281873_
                   (lambda (_L275454_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L275454_ _pargs275270_))
                             (reverse _kwargs275271_))))
                  (___kont281874281875_
                   (lambda (_L275401_ _L275402_ _L275403_)
                     (let ((_kw275420_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L275403_))))
                       (if (assq _kw275420_ _kwargs275271_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx275264_
                              _kw275420_))
                           (let ((__tmp282754
                                  (let ((__tmp282755
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw275420_ _L275402_))))
                                    (declare (not safe))
                                    (cons __tmp282755 _kwargs275271_))))
                             (declare (not safe))
                             (_lp275267_
                              _L275401_
                              _pargs275270_
                              __tmp282754))))))
                  (___kont281876281877_
                   (lambda (_L275349_ _L275350_)
                     (let ((__tmp282756
                            (let ()
                              (declare (not safe))
                              (cons _L275350_ _pargs275270_))))
                       (declare (not safe))
                       (_lp275267_ _L275349_ __tmp282756 _kwargs275271_))))
                  (___kont281878281879_
                   (lambda ()
                     (values (reverse _pargs275270_)
                             (reverse _kwargs275271_)))))
              (let* ((_g275276275336_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx281868281869_))
                            (___kont281878281879_)
                            (let () (declare (not safe)) (_g275277275329_)))))
                     (___match281975281976_
                      (lambda (_e275310275369_
                               _hd275309275372_
                               _tl275308275374_
                               _e275313275377_
                               _hd275312275380_
                               _tl275311275382_
                               _e275316275385_
                               _hd275315275388_
                               _tl275314275390_
                               _e275319275393_
                               _hd275318275396_
                               _tl275317275398_)
                        (let ((_L275401_ _tl275317275398_)
                              (_L275402_ _hd275318275396_)
                              (_L275403_ _hd275315275388_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L275403_))
                              (___kont281874281875_
                               _L275401_
                               _L275402_
                               _L275403_)
                              (___kont281876281877_
                               _tl275308275374_
                               _hd275309275372_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx281868281869_))
                    (let ((_e275283275473_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx281868281869_))))
                      (let ((_tl275281275478_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275283275473_)))
                            (_hd275282275476_
                             (let ()
                               (declare (not safe))
                               (##car _e275283275473_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd275282275476_))
                            (let ((_e275286275481_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd275282275476_))))
                              (let ((_tl275284275486_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e275286275481_)))
                                    (_hd275285275484_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e275286275481_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd275285275484_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd275285275484_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl275284275486_))
                                            (let ((_e275289275489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl275284275486_))))
                                              (let ((_tl275287275494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e275289275489_)))
                                                    (_hd275288275492_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e275289275489_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd275288275492_))
                                                    (let ((_e275290275497_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd275288275492_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e275290275497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl275287275494_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl275281275478_))
                          (let ((_e275293275500_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl275281275478_))))
                            (let ((_tl275291275505_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e275293275500_)))
                                  (_hd275292275503_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e275293275500_))))
                              (___kont281870281871_
                               _tl275291275505_
                               _hd275292275503_)))
                          (___kont281876281877_
                           _tl275281275478_
                           _hd275282275476_))
                      (___kont281876281877_ _tl275281275478_ _hd275282275476_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e275290275497_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275287275494_))
                          (___kont281872281873_ _tl275281275478_)
                          (___kont281876281877_
                           _tl275281275478_
                           _hd275282275476_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275287275494_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl275281275478_))
                              (let ((_e275319275393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl275281275478_))))
                                (let ((_tl275317275398_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e275319275393_)))
                                      (_hd275318275396_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e275319275393_))))
                                  (___match281975281976_
                                   _e275283275473_
                                   _hd275282275476_
                                   _tl275281275478_
                                   _e275286275481_
                                   _hd275285275484_
                                   _tl275284275486_
                                   _e275289275489_
                                   _hd275288275492_
                                   _tl275287275494_
                                   _e275319275393_
                                   _hd275318275396_
                                   _tl275317275398_)))
                              (___kont281876281877_
                               _tl275281275478_
                               _hd275282275476_))
                          (___kont281876281877_
                           _tl275281275478_
                           _hd275282275476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl275287275494_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl275281275478_))
                                                            (let ((_e275319275393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl275281275478_))))
                      (let ((_tl275317275398_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275319275393_)))
                            (_hd275318275396_
                             (let ()
                               (declare (not safe))
                               (##car _e275319275393_))))
                        (___match281975281976_
                         _e275283275473_
                         _hd275282275476_
                         _tl275281275478_
                         _e275286275481_
                         _hd275285275484_
                         _tl275284275486_
                         _e275289275489_
                         _hd275288275492_
                         _tl275287275494_
                         _e275319275393_
                         _hd275318275396_
                         _tl275317275398_)))
                    (___kont281876281877_ _tl275281275478_ _hd275282275476_))
                (___kont281876281877_ _tl275281275478_ _hd275282275476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont281876281877_
                                             _tl275281275478_
                                             _hd275282275476_))
                                        (___kont281876281877_
                                         _tl275281275478_
                                         _hd275282275476_))
                                    (___kont281876281877_
                                     _tl275281275478_
                                     _hd275282275476_))))
                            (___kont281876281877_
                             _tl275281275478_
                             _hd275282275476_))))
                    (let () (declare (not safe)) (_g275276275336_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self275260_ _stx275261_ _args275262_)
        (let () (declare (not safe)) (gxc#xform-call% _stx275261_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
