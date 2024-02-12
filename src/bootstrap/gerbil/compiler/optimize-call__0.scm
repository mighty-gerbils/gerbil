(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707734709)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl277129_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp281988 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl277129_ __tmp281988))
           (let ()
             (declare (not safe))
             (table-set! _tbl277129_ '%#call gxc#optimize-call%))
           _tbl277129_))))
    (define gxc#apply-optimize-call
      (lambda (_stx277112_ . _args277114_)
        (let ((__tmp281990
               (lambda ()
                 (declare (not safe))
                 (if (null? _args277114_)
                     (gxc#compile-e__0 _stx277112_)
                     (let ((_arg1277119_ (car _args277114_))
                           (_rest277121_ (cdr _args277114_)))
                       (if (null? _rest277121_)
                           (gxc#compile-e__1 _stx277112_ _arg1277119_)
                           (let ((_arg2277124_ (car _rest277121_))
                                 (_rest277126_ (cdr _rest277121_)))
                             (if (null? _rest277126_)
                                 (gxc#compile-e__2
                                  _stx277112_
                                  _arg1277119_
                                  _arg2277124_)
                                 (apply gxc#compile-e
                                        _stx277112_
                                        _arg1277119_
                                        _arg2277124_
                                        _rest277126_))))))))
              (__tmp281989 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp281990
           gxc#current-compile-methods
           __tmp281989))))
    (define gxc#optimize-call%
      (lambda (_stx276967_)
        (let* ((___stx281738281739_ _stx276967_)
               (_g276970276990_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281738281739_)))))
          (let ((___kont281740281741_
                 (lambda (_L277034_ _L277035_)
                   (let* ((_rator-id277053_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L277035_)))
                          (_rator-type277055_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id277053_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type277055_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp281991
                                  (##structure-ref
                                   _rator-type277055_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id277053_
                              '" => "
                              _rator-type277055_
                              '" "
                              __tmp281991))
                           (let ((_optimized277058_
                                  (let ((__method281986
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type277055_
                                            'optimize-call))))
                                    (if __method281986
                                        (__method281986
                                         _rator-type277055_
                                         _stx276967_
                                         _L277034_)
                                        (error '"Missing method"
                                               _rator-type277055_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type277055_))
                                 _optimized277058_
                                 (let* ((___stx281720281721_ _optimized277058_)
                                        (_g277061277071_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx281720281721_)))))
                                   (let ((___kont281722281723_
                                          (lambda (_L277091_)
                                            (let ((__tmp281992
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L277091_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp281992
                                               _stx276967_))))
                                         (___kont281724281725_
                                          (lambda () _optimized277058_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx281720281721_))
                                         (let ((_e277066277083_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx281720281721_))))
                                           (let ((_tl277064277088_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e277066277083_)))
                                                 (_hd277065277086_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e277066277083_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd277065277086_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd277065277086_))
                                                     (___kont281722281723_
                                                      _tl277064277088_)
                                                     (___kont281724281725_))
                                                 (___kont281724281725_))))
                                         (___kont281724281725_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type277055_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx276967_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx276967_
                                _rator-type277055_)))))))
                (___kont281742281743_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx276967_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx281738281739_))
                (let ((_e276976277002_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx281738281739_))))
                  (let ((_tl276974277007_
                         (let () (declare (not safe)) (##cdr _e276976277002_)))
                        (_hd276975277005_
                         (let ()
                           (declare (not safe))
                           (##car _e276976277002_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl276974277007_))
                        (let ((_e276979277010_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl276974277007_))))
                          (let ((_tl276977277015_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e276979277010_)))
                                (_hd276978277013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e276979277010_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd276978277013_))
                                (let ((_e276982277018_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd276978277013_))))
                                  (let ((_tl276980277023_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e276982277018_)))
                                        (_hd276981277021_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e276982277018_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd276981277021_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd276981277021_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276980277023_))
                                                (let ((_e276985277026_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276980277023_))))
                                                  (let ((_tl276983277031_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276985277026_)))
                                                        (_hd276984277029_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276985277026_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276983277031_))
                                                        (___kont281740281741_
                                                         _tl276977277015_
                                                         _hd276984277029_)
                                                        (___kont281742281743_))))
                                                (___kont281742281743_))
                                            (___kont281742281743_))
                                        (___kont281742281743_))))
                                (___kont281742281743_))))
                        (___kont281742281743_))))
                (___kont281742281743_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self276921_ _stx276922_ _args276923_)
        (let* ((_g276925276935_
                (lambda (_g276926276932_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276926276932_))))
               (_g276924276964_
                (lambda (_g276926276938_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276926276938_))
                      (let ((_e276930276940_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276926276938_))))
                        (let ((_hd276929276943_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276930276940_)))
                              (_tl276928276945_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276930276940_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276928276945_))
                              ((lambda (_L276948_)
                                 (let* ((_klass276959_
                                         (let ((__tmp281993
                                                (##structure-ref
                                                 _self276921_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276922_
                                            __tmp281993)))
                                        (_object276961_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276948_))))
                                   (if (##structure-ref
                                        _klass276959_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282009
                                              (let ((__tmp282010
                                                     (let ((__tmp282012
                                                            (let ((__tmp282013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282014
                                  (##structure-ref
                                   _klass276959_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282014 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282013)))
                   (__tmp282011
                    (let () (declare (not safe)) (cons _object276961_ '()))))
               (declare (not safe))
               (cons __tmp282012 __tmp282011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp282010))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282009
                                          _stx276922_))
                                       (if (##structure-ref
                                            _klass276959_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282003
                                                  (let ((__tmp282004
                                                         (let ((__tmp282006
                                                                (let ((__tmp282007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282008
                                      (##structure-ref
                                       _klass276959_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282008 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282007)))
                       (__tmp282005
                        (let ()
                          (declare (not safe))
                          (cons _object276961_ '()))))
                   (declare (not safe))
                   (cons __tmp282006 __tmp282005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp282004))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282003
                                              _stx276922_))
                                           (let ((__tmp281994
                                                  (let ((__tmp281995
                                                         (let ((__tmp282001
                                                                (let ((__tmp282002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282002)))
                       (__tmp281996
                        (let ((__tmp281998
                               (let ((__tmp281999
                                      (let ((__tmp282000
                                             (##structure-ref
                                              _self276921_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp282000 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp281999)))
                              (__tmp281997
                               (let ()
                                 (declare (not safe))
                                 (cons _object276961_ '()))))
                          (declare (not safe))
                          (cons __tmp281998 __tmp281997))))
                   (declare (not safe))
                   (cons __tmp282001 __tmp281996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp281995))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp281994
                                              _stx276922_))))))
                               _hd276929276943_)
                              (let ()
                                (declare (not safe))
                                (_g276925276935_ _g276926276938_)))))
                      (let ()
                        (declare (not safe))
                        (_g276925276935_ _g276926276938_))))))
          (declare (not safe))
          (_g276924276964_ _args276923_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t281699)
        (let ((__id281700
               (let ((__tmp281701
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281699 'id))))
                 (if __tmp281701 __tmp281701 (error '"Unknown slot" 'id)))))
          (lambda (_self276921_ _stx276922_ _args276923_)
            (let* ((_g276925276935_
                    (lambda (_g276926276932_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276926276932_))))
                   (_g276924276964_
                    (lambda (_g276926276938_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276926276938_))
                          (let ((_e276930276940_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276926276938_))))
                            (let ((_hd276929276943_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276930276940_)))
                                  (_tl276928276945_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276930276940_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276928276945_))
                                  ((lambda (_L276948_)
                                     (let* ((_klass276959_
                                             (let ((__tmp282015
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276921_
                                                       __id281700
                                                       __t281699
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276922_
                                                __tmp282015)))
                                            (_object276961_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276948_))))
                                       (if (##structure-ref
                                            _klass276959_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282031
                                                  (let ((__tmp282032
                                                         (let ((__tmp282034
                                                                (let ((__tmp282035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282036
                                      (##structure-ref
                                       _klass276959_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282036 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282035)))
                       (__tmp282033
                        (let ()
                          (declare (not safe))
                          (cons _object276961_ '()))))
                   (declare (not safe))
                   (cons __tmp282034 __tmp282033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp282032))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282031
                                              _stx276922_))
                                           (if (##structure-ref
                                                _klass276959_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282025
                                                      (let ((__tmp282026
                                                             (let ((__tmp282028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282029
                                   (let ((__tmp282030
                                          (##structure-ref
                                           _klass276959_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282030 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp282029)))
                           (__tmp282027
                            (let ()
                              (declare (not safe))
                              (cons _object276961_ '()))))
                       (declare (not safe))
                       (cons __tmp282028 __tmp282027))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp282026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282025
                                                  _stx276922_))
                                               (let ((__tmp282016
                                                      (let ((__tmp282017
                                                             (let ((__tmp282023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282024
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282024)))
                           (__tmp282018
                            (let ((__tmp282020
                                   (let ((__tmp282021
                                          (let ((__tmp282022
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self276921_
                                                    __id281700
                                                    __t281699
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp282022 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp282021)))
                                  (__tmp282019
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276961_ '()))))
                              (declare (not safe))
                              (cons __tmp282020 __tmp282019))))
                       (declare (not safe))
                       (cons __tmp282023 __tmp282018))))
                (declare (not safe))
                (cons '%#call __tmp282017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282016
                                                  _stx276922_))))))
                                   _hd276929276943_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276925276935_ _g276926276938_)))))
                          (let ()
                            (declare (not safe))
                            (_g276925276935_ _g276926276938_))))))
              (declare (not safe))
              (_g276924276964_ _args276923_))))))
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
      (lambda (_self276652_ _stx276653_ _args276654_)
        (let* ((_klass276656_
                (let ((__tmp282037
                       (##structure-ref _self276652_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx276653_ __tmp282037)))
               (_fields276658_
                (length (##structure-ref _klass276656_ '5 gxc#!class::t '#f)))
               (_args276660_ (map gxc#compile-e _args276654_))
               (_inline-make-object276662_
                (let ((__tmp282038
                       (let ((__tmp282044
                              (let ((__tmp282045
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282045)))
                             (__tmp282039
                              (let ((__tmp282041
                                     (let ((__tmp282042
                                            (let ((__tmp282043
                                                   (##structure-ref
                                                    _self276652_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282043 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282042)))
                                    (__tmp282040
                                     (make-list _fields276658_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp282041 __tmp282040))))
                         (declare (not safe))
                         (cons __tmp282044 __tmp282039))))
                  (declare (not safe))
                  (cons '%#call __tmp282038))))
          (let ((_$e276665_
                 (##structure-ref _klass276656_ '6 gxc#!class::t '#f)))
            (if _$e276665_
                ((lambda (_ctor276668_)
                   (let ((_$obj276670_
                          (let ((__tmp282107 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp282107)))
                         (_ctor-impl276671_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass276656_
                             _ctor276668_))))
                     (let ((__tmp282108
                            (let ((__tmp282109
                                   (let ((__tmp282174
                                          (let ((__tmp282175
                                                 (let ((__tmp282177
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276670_
                                                                '())))
                                                       (__tmp282176
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object276662_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp282177
                                                         __tmp282176))))
                                            (declare (not safe))
                                            (cons __tmp282175 '())))
                                         (__tmp282110
                                          (let ((__tmp282111
                                                 (let ((__tmp282112
                                                        (let ((__tmp282116
                                                               (if _ctor-impl276671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282168
                                  (let ((__tmp282172
                                         (let ((__tmp282173
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl276671_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282173)))
                                        (__tmp282169
                                         (let ((__tmp282170
                                                (let ((__tmp282171
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276670_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282171))))
                                           (declare (not safe))
                                           (cons __tmp282170 _args276660_))))
                                    (declare (not safe))
                                    (cons __tmp282172 __tmp282169))))
                             (declare (not safe))
                             (cons '%#call __tmp282168))
                           (let* ((_$ctor276673_
                                   (let ((__tmp282117 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp282117)))
                                  (__tmp282118
                                   (let ((__tmp282153
                                          (let ((__tmp282154
                                                 (let ((__tmp282167
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor276673_
                                                                '())))
                                                       (__tmp282155
                                                        (let ((__tmp282156
                                                               (let ((__tmp282157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282165
                                     (let ((__tmp282166
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282166)))
                                    (__tmp282158
                                     (let ((__tmp282162
                                            (let ((__tmp282163
                                                   (let ((__tmp282164
                                                          (##structure-ref
                                                           _self276652_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp282164 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282163)))
                                           (__tmp282159
                                            (let ((__tmp282160
                                                   (let ((__tmp282161
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor276668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp282161))))
                                              (declare (not safe))
                                              (cons __tmp282160 '()))))
                                       (declare (not safe))
                                       (cons __tmp282162 __tmp282159))))
                                (declare (not safe))
                                (cons __tmp282165 __tmp282158))))
                         (declare (not safe))
                         (cons '%#call __tmp282157))))
                  (declare (not safe))
                  (cons __tmp282156 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282167
                                                         __tmp282155))))
                                            (declare (not safe))
                                            (cons __tmp282154 '())))
                                         (__tmp282119
                                          (let ((__tmp282120
                                                 (let ((__tmp282121
                                                        (let ((__tmp282151
                                                               (let ((__tmp282152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor276673_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282152)))
                      (__tmp282122
                       (let ((__tmp282144
                              (let ((__tmp282145
                                     (let ((__tmp282149
                                            (let ((__tmp282150
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor276673_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282150)))
                                           (__tmp282146
                                            (let ((__tmp282147
                                                   (let ((__tmp282148
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282148))))
                                              (declare (not safe))
                                              (cons __tmp282147
                                                    _args276660_))))
                                       (declare (not safe))
                                       (cons __tmp282149 __tmp282146))))
                                (declare (not safe))
                                (cons '%#call __tmp282145)))
                             (__tmp282123
                              (let ((__tmp282124
                                     (let ((__tmp282125
                                            (let ((__tmp282142
                                                   (let ((__tmp282143
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282143)))
                                                  (__tmp282126
                                                   (let ((__tmp282140
                                                          (let ((__tmp282141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp282141)))
                 (__tmp282127
                  (let ((__tmp282138
                         (let ((__tmp282139
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282139)))
                        (__tmp282128
                         (let ((__tmp282135
                                (let ((__tmp282136
                                       (let ((__tmp282137
                                              (##structure-ref
                                               _self276652_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282137 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282136)))
                               (__tmp282129
                                (let ((__tmp282133
                                       (let ((__tmp282134
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282134)))
                                      (__tmp282130
                                       (let ((__tmp282131
                                              (let ((__tmp282132
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor276668_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp282132))))
                                         (declare (not safe))
                                         (cons __tmp282131 '()))))
                                  (declare (not safe))
                                  (cons __tmp282133 __tmp282130))))
                           (declare (not safe))
                           (cons __tmp282135 __tmp282129))))
                    (declare (not safe))
                    (cons __tmp282138 __tmp282128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282140
                                                           __tmp282127))))
                                              (declare (not safe))
                                              (cons __tmp282142 __tmp282126))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282125))))
                                (declare (not safe))
                                (cons __tmp282124 '()))))
                         (declare (not safe))
                         (cons __tmp282144 __tmp282123))))
                  (declare (not safe))
                  (cons __tmp282151 __tmp282122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp282121))))
                                            (declare (not safe))
                                            (cons __tmp282120 '()))))
                                     (declare (not safe))
                                     (cons __tmp282153 __tmp282119))))
                             (declare (not safe))
                             (cons '%#let-values __tmp282118))))
                      (__tmp282113
                       (let ((__tmp282114
                              (let ((__tmp282115
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276670_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282115))))
                         (declare (not safe))
                         (cons __tmp282114 '()))))
                  (declare (not safe))
                  (cons __tmp282116 __tmp282113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp282112))))
                                            (declare (not safe))
                                            (cons __tmp282111 '()))))
                                     (declare (not safe))
                                     (cons __tmp282174 __tmp282110))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282109))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282108 _stx276653_))))
                 _$e276665_)
                (if (##structure-ref _klass276656_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args276660_) _fields276658_)
                        (let ((__tmp282099
                               (let ((__tmp282100
                                      (let ((__tmp282105
                                             (let ((__tmp282106
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282106)))
                                            (__tmp282101
                                             (let ((__tmp282102
                                                    (let ((__tmp282103
                                                           (let ((__tmp282104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self276652_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp282104 '()))))
              (declare (not safe))
              (cons '%#ref __tmp282103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282102
                                                     _args276660_))))
                                        (declare (not safe))
                                        (cons __tmp282105 __tmp282101))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282100))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282099 _stx276653_))
                        (let ((__tmp282098
                               (##structure-ref
                                _self276652_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp282097
                               (length (##structure-ref
                                        _klass276656_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx276653_
                           __tmp282098
                           __tmp282097)))
                    (let ((_$obj276675_
                           (let ((__tmp282046 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp282046))))
                      (let _lp276677_ ((_rest276679_ _args276660_)
                                       (_initializers276680_ '()))
                        (let* ((___stx281776281777_ _rest276679_)
                               (_g276684276705_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx281776281777_)))))
                          (let ((___kont281778281779_
                                 (lambda (_L276759_ _L276760_ _L276761_)
                                   (let* ((_slot276791_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L276761_))))
                                          (_off276793_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass276656_
                                              _slot276791_))))
                                     (if _off276793_
                                         (let ((__tmp282048
                                                (let ((__tmp282049
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off276793_
                                                               _L276760_))))
                                                  (declare (not safe))
                                                  (cons __tmp282049
                                                        _initializers276680_))))
                                           (declare (not safe))
                                           (_lp276677_ _L276759_ __tmp282048))
                                         (let ((__tmp282047
                                                (##structure-ref
                                                 _self276652_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx276653_
                                            __tmp282047
                                            _slot276791_))))))
                                (___kont281780281781_
                                 (lambda ()
                                   (let ((__tmp282050
                                          (let ((__tmp282051
                                                 (let ((__tmp282074
                                                        (let ((__tmp282075
                                                               (let ((__tmp282077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276675_ '())))
                             (__tmp282076
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276662_ '()))))
                         (declare (not safe))
                         (cons __tmp282077 __tmp282076))))
                  (declare (not safe))
                  (cons __tmp282075 '())))
               (__tmp282052
                (let ((__tmp282053
                       (let ((__tmp282054
                              (let ((__tmp282071
                                     (let ((__tmp282072
                                            (let ((__tmp282073
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276675_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282073))))
                                       (declare (not safe))
                                       (cons __tmp282072 '())))
                                    (__tmp282055
                                     (let ((__tmp282056
                                            (lambda (_i276719_ _r276720_)
                                              (let ((__tmp282057
                                                     (let ((__tmp282058
                                                            (let ((__tmp282068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282069
                                  (let ((__tmp282070
                                         (##structure-ref
                                          _self276652_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp282070 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282069)))
                          (__tmp282059
                           (let ((__tmp282065
                                  (let ((__tmp282066
                                         (let ((__tmp282067 (car _i276719_)))
                                           (declare (not safe))
                                           (cons __tmp282067 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282066)))
                                 (__tmp282060
                                  (let ((__tmp282063
                                         (let ((__tmp282064
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276675_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282064)))
                                        (__tmp282061
                                         (let ((__tmp282062 (cdr _i276719_)))
                                           (declare (not safe))
                                           (cons __tmp282062 '()))))
                                    (declare (not safe))
                                    (cons __tmp282063 __tmp282061))))
                             (declare (not safe))
                             (cons __tmp282065 __tmp282060))))
                      (declare (not safe))
                      (cons __tmp282068 __tmp282059))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp282058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282057
                                                      _r276720_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp282056
                                               '()
                                               _initializers276680_))))
                                (declare (not safe))
                                (foldr1 cons __tmp282071 __tmp282055))))
                         (declare (not safe))
                         (cons '%#begin __tmp282054))))
                  (declare (not safe))
                  (cons __tmp282053 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282074
                                                         __tmp282052))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282051))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282050
                                      _stx276653_))))
                                (___kont281782281783_
                                 (lambda ()
                                   (let ((__tmp282078
                                          (let ((__tmp282079
                                                 (let ((__tmp282093
                                                        (let ((__tmp282094
                                                               (let ((__tmp282096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276675_ '())))
                             (__tmp282095
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276662_ '()))))
                         (declare (not safe))
                         (cons __tmp282096 __tmp282095))))
                  (declare (not safe))
                  (cons __tmp282094 '())))
               (__tmp282080
                (let ((__tmp282081
                       (let ((__tmp282082
                              (let ((__tmp282086
                                     (let ((__tmp282087
                                            (let ((__tmp282091
                                                   (let ((__tmp282092
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282092)))
                                                  (__tmp282088
                                                   (let ((__tmp282089
                                                          (let ((__tmp282090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276675_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282090))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282089
                                                           _args276660_))))
                                              (declare (not safe))
                                              (cons __tmp282091 __tmp282088))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282087)))
                                    (__tmp282083
                                     (let ((__tmp282084
                                            (let ((__tmp282085
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276675_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282085))))
                                       (declare (not safe))
                                       (cons __tmp282084 '()))))
                                (declare (not safe))
                                (cons __tmp282086 __tmp282083))))
                         (declare (not safe))
                         (cons '%#begin __tmp282082))))
                  (declare (not safe))
                  (cons __tmp282081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282093
                                                         __tmp282080))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282079))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282078
                                      _stx276653_)))))
                            (let* ((_g276682276722_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx281776281777_))
                                          (___kont281780281781_)
                                          (___kont281782281783_))))
                                   (___match281813281814_
                                    (lambda (_e276691276727_
                                             _hd276690276730_
                                             _tl276689276732_
                                             _e276694276735_
                                             _hd276693276738_
                                             _tl276692276740_
                                             _e276697276743_
                                             _hd276696276746_
                                             _tl276695276748_
                                             _e276700276751_
                                             _hd276699276754_
                                             _tl276698276756_)
                                      (let ((_L276759_ _tl276698276756_)
                                            (_L276760_ _hd276699276754_)
                                            (_L276761_ _hd276696276746_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L276761_))
                                            (___kont281778281779_
                                             _L276759_
                                             _L276760_
                                             _L276761_)
                                            (___kont281782281783_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx281776281777_))
                                  (let ((_e276691276727_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx281776281777_))))
                                    (let ((_tl276689276732_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276691276727_)))
                                          (_hd276690276730_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276691276727_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd276690276730_))
                                          (let ((_e276694276735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd276690276730_))))
                                            (let ((_tl276692276740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276694276735_)))
                                                  (_hd276693276738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276694276735_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd276693276738_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd276693276738_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276692276740_))
                                                          (let ((_e276697276743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276692276740_))))
                    (let ((_tl276695276748_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276697276743_)))
                          (_hd276696276746_
                           (let ()
                             (declare (not safe))
                             (##car _e276697276743_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276695276748_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276689276732_))
                              (let ((_e276700276751_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276689276732_))))
                                (let ((_tl276698276756_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276700276751_)))
                                      (_hd276699276754_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276700276751_))))
                                  (___match281813281814_
                                   _e276691276727_
                                   _hd276690276730_
                                   _tl276689276732_
                                   _e276694276735_
                                   _hd276693276738_
                                   _tl276692276740_
                                   _e276697276743_
                                   _hd276696276746_
                                   _tl276695276748_
                                   _e276700276751_
                                   _hd276699276754_
                                   _tl276698276756_)))
                              (___kont281782281783_))
                          (___kont281782281783_))))
                  (___kont281782281783_))
              (___kont281782281783_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281782281783_))))
                                          (___kont281782281783_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276682276722_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t281702)
        (let ((__id281703
               (let ((__tmp281704
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281702 'id))))
                 (if __tmp281704 __tmp281704 (error '"Unknown slot" 'id)))))
          (lambda (_self276652_ _stx276653_ _args276654_)
            (let* ((_klass276656_
                    (let ((__tmp282178
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self276652_
                              __id281703
                              __t281702
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx276653_ __tmp282178)))
                   (_fields276658_
                    (length (##structure-ref
                             _klass276656_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args276660_ (map gxc#compile-e _args276654_))
                   (_inline-make-object276662_
                    (let ((__tmp282179
                           (let ((__tmp282185
                                  (let ((__tmp282186
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282186)))
                                 (__tmp282180
                                  (let ((__tmp282182
                                         (let ((__tmp282183
                                                (let ((__tmp282184
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276652_
                                                          __id281703
                                                          __t281702
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282184 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282183)))
                                        (__tmp282181
                                         (make-list
                                          _fields276658_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp282182 __tmp282181))))
                             (declare (not safe))
                             (cons __tmp282185 __tmp282180))))
                      (declare (not safe))
                      (cons '%#call __tmp282179))))
              (let ((_$e276665_
                     (##structure-ref _klass276656_ '6 gxc#!class::t '#f)))
                (if _$e276665_
                    ((lambda (_ctor276668_)
                       (let ((_$obj276670_
                              (let ((__tmp282248 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp282248)))
                             (_ctor-impl276671_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass276656_
                                 _ctor276668_))))
                         (let ((__tmp282249
                                (let ((__tmp282250
                                       (let ((__tmp282315
                                              (let ((__tmp282316
                                                     (let ((__tmp282318
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj276670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282317
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object276662_ '()))))
               (declare (not safe))
               (cons __tmp282318 __tmp282317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282316 '())))
                                             (__tmp282251
                                              (let ((__tmp282252
                                                     (let ((__tmp282253
                                                            (let ((__tmp282257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl276671_
                               (let ((__tmp282309
                                      (let ((__tmp282313
                                             (let ((__tmp282314
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl276671_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282314)))
                                            (__tmp282310
                                             (let ((__tmp282311
                                                    (let ((__tmp282312
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj276670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282311
                                                     _args276660_))))
                                        (declare (not safe))
                                        (cons __tmp282313 __tmp282310))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282309))
                               (let* ((_$ctor276673_
                                       (let ((__tmp282258
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp282258)))
                                      (__tmp282259
                                       (let ((__tmp282294
                                              (let ((__tmp282295
                                                     (let ((__tmp282308
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor276673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282296
                    (let ((__tmp282297
                           (let ((__tmp282298
                                  (let ((__tmp282306
                                         (let ((__tmp282307
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282307)))
                                        (__tmp282299
                                         (let ((__tmp282303
                                                (let ((__tmp282304
                                                       (let ((__tmp282305
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self276652_
                         __id281703
                         __t281702
                         '#f))))
                 (declare (not safe))
                 (cons __tmp282305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282304)))
                                               (__tmp282300
                                                (let ((__tmp282301
                                                       (let ((__tmp282302
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor276668_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp282302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282301 '()))))
                                           (declare (not safe))
                                           (cons __tmp282303 __tmp282300))))
                                    (declare (not safe))
                                    (cons __tmp282306 __tmp282299))))
                             (declare (not safe))
                             (cons '%#call __tmp282298))))
                      (declare (not safe))
                      (cons __tmp282297 '()))))
               (declare (not safe))
               (cons __tmp282308 __tmp282296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282295 '())))
                                             (__tmp282260
                                              (let ((__tmp282261
                                                     (let ((__tmp282262
                                                            (let ((__tmp282292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282293
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor276673_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282293)))
                          (__tmp282263
                           (let ((__tmp282285
                                  (let ((__tmp282286
                                         (let ((__tmp282290
                                                (let ((__tmp282291
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor276673_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282291)))
                                               (__tmp282287
                                                (let ((__tmp282288
                                                       (let ((__tmp282289
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276670_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282288
                                                        _args276660_))))
                                           (declare (not safe))
                                           (cons __tmp282290 __tmp282287))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282286)))
                                 (__tmp282264
                                  (let ((__tmp282265
                                         (let ((__tmp282266
                                                (let ((__tmp282283
                                                       (let ((__tmp282284
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282284)))
              (__tmp282267
               (let ((__tmp282281
                      (let ((__tmp282282
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp282282)))
                     (__tmp282268
                      (let ((__tmp282279
                             (let ((__tmp282280
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282280)))
                            (__tmp282269
                             (let ((__tmp282276
                                    (let ((__tmp282277
                                           (let ((__tmp282278
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276652_
                                                     __id281703
                                                     __t281702
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282278 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282277)))
                                   (__tmp282270
                                    (let ((__tmp282274
                                           (let ((__tmp282275
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282275)))
                                          (__tmp282271
                                           (let ((__tmp282272
                                                  (let ((__tmp282273
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor276668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp282273))))
                                             (declare (not safe))
                                             (cons __tmp282272 '()))))
                                      (declare (not safe))
                                      (cons __tmp282274 __tmp282271))))
                               (declare (not safe))
                               (cons __tmp282276 __tmp282270))))
                        (declare (not safe))
                        (cons __tmp282279 __tmp282269))))
                 (declare (not safe))
                 (cons __tmp282281 __tmp282268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282283
                                                        __tmp282267))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282266))))
                                    (declare (not safe))
                                    (cons __tmp282265 '()))))
                             (declare (not safe))
                             (cons __tmp282285 __tmp282264))))
                      (declare (not safe))
                      (cons __tmp282292 __tmp282263))))
               (declare (not safe))
               (cons '%#if __tmp282262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282261 '()))))
                                         (declare (not safe))
                                         (cons __tmp282294 __tmp282260))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp282259))))
                          (__tmp282254
                           (let ((__tmp282255
                                  (let ((__tmp282256
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj276670_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282256))))
                             (declare (not safe))
                             (cons __tmp282255 '()))))
                      (declare (not safe))
                      (cons __tmp282257 __tmp282254))))
               (declare (not safe))
               (cons '%#begin __tmp282253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282252 '()))))
                                         (declare (not safe))
                                         (cons __tmp282315 __tmp282251))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282250))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282249 _stx276653_))))
                     _$e276665_)
                    (if (##structure-ref _klass276656_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args276660_) _fields276658_)
                            (let ((__tmp282240
                                   (let ((__tmp282241
                                          (let ((__tmp282246
                                                 (let ((__tmp282247
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282247)))
                                                (__tmp282242
                                                 (let ((__tmp282243
                                                        (let ((__tmp282244
                                                               (let ((__tmp282245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self276652_
                                 __id281703
                                 __t281702
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp282245 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282243
                                                         _args276660_))))
                                            (declare (not safe))
                                            (cons __tmp282246 __tmp282242))))
                                     (declare (not safe))
                                     (cons '%#call __tmp282241))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp282240 _stx276653_))
                            (let ((__tmp282239
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self276652_
                                      __id281703
                                      __t281702
                                      '#f)))
                                  (__tmp282238
                                   (length (##structure-ref
                                            _klass276656_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx276653_
                               __tmp282239
                               __tmp282238)))
                        (let ((_$obj276675_
                               (let ((__tmp282187 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp282187))))
                          (let _lp276677_ ((_rest276679_ _args276660_)
                                           (_initializers276680_ '()))
                            (let* ((___stx281818281819_ _rest276679_)
                                   (_g276684276705_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx281818281819_)))))
                              (let ((___kont281820281821_
                                     (lambda (_L276759_ _L276760_ _L276761_)
                                       (let* ((_slot276791_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L276761_))))
                                              (_off276793_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass276656_
                                                  _slot276791_))))
                                         (if _off276793_
                                             (let ((__tmp282189
                                                    (let ((__tmp282190
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off276793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L276760_))))
              (declare (not safe))
              (cons __tmp282190 _initializers276680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp276677_
                                                _L276759_
                                                __tmp282189))
                                             (let ((__tmp282188
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276652_
                                                       __id281703
                                                       __t281702
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx276653_
                                                __tmp282188
                                                _slot276791_))))))
                                    (___kont281822281823_
                                     (lambda ()
                                       (let ((__tmp282191
                                              (let ((__tmp282192
                                                     (let ((__tmp282215
                                                            (let ((__tmp282216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282218
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276675_ '())))
                                 (__tmp282217
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276662_ '()))))
                             (declare (not safe))
                             (cons __tmp282218 __tmp282217))))
                      (declare (not safe))
                      (cons __tmp282216 '())))
                   (__tmp282193
                    (let ((__tmp282194
                           (let ((__tmp282195
                                  (let ((__tmp282212
                                         (let ((__tmp282213
                                                (let ((__tmp282214
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276675_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282214))))
                                           (declare (not safe))
                                           (cons __tmp282213 '())))
                                        (__tmp282196
                                         (let ((__tmp282197
                                                (lambda (_i276719_ _r276720_)
                                                  (let ((__tmp282198
                                                         (let ((__tmp282199
                                                                (let ((__tmp282209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282210
                                      (let ((__tmp282211
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self276652_
                                                __id281703
                                                __t281702
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp282211 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282210)))
                              (__tmp282200
                               (let ((__tmp282206
                                      (let ((__tmp282207
                                             (let ((__tmp282208
                                                    (car _i276719_)))
                                               (declare (not safe))
                                               (cons __tmp282208 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282207)))
                                     (__tmp282201
                                      (let ((__tmp282204
                                             (let ((__tmp282205
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276675_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282205)))
                                            (__tmp282202
                                             (let ((__tmp282203
                                                    (cdr _i276719_)))
                                               (declare (not safe))
                                               (cons __tmp282203 '()))))
                                        (declare (not safe))
                                        (cons __tmp282204 __tmp282202))))
                                 (declare (not safe))
                                 (cons __tmp282206 __tmp282201))))
                          (declare (not safe))
                          (cons __tmp282209 __tmp282200))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp282199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282198
                                                          _r276720_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp282197
                                                   '()
                                                   _initializers276680_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp282212 __tmp282196))))
                             (declare (not safe))
                             (cons '%#begin __tmp282195))))
                      (declare (not safe))
                      (cons __tmp282194 '()))))
               (declare (not safe))
               (cons __tmp282215 __tmp282193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282192))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282191
                                          _stx276653_))))
                                    (___kont281824281825_
                                     (lambda ()
                                       (let ((__tmp282219
                                              (let ((__tmp282220
                                                     (let ((__tmp282234
                                                            (let ((__tmp282235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282237
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276675_ '())))
                                 (__tmp282236
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276662_ '()))))
                             (declare (not safe))
                             (cons __tmp282237 __tmp282236))))
                      (declare (not safe))
                      (cons __tmp282235 '())))
                   (__tmp282221
                    (let ((__tmp282222
                           (let ((__tmp282223
                                  (let ((__tmp282227
                                         (let ((__tmp282228
                                                (let ((__tmp282232
                                                       (let ((__tmp282233
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282233)))
              (__tmp282229
               (let ((__tmp282230
                      (let ((__tmp282231
                             (let ()
                               (declare (not safe))
                               (cons _$obj276675_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282231))))
                 (declare (not safe))
                 (cons __tmp282230 _args276660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282232
                                                        __tmp282229))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282228)))
                                        (__tmp282224
                                         (let ((__tmp282225
                                                (let ((__tmp282226
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276675_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282226))))
                                           (declare (not safe))
                                           (cons __tmp282225 '()))))
                                    (declare (not safe))
                                    (cons __tmp282227 __tmp282224))))
                             (declare (not safe))
                             (cons '%#begin __tmp282223))))
                      (declare (not safe))
                      (cons __tmp282222 '()))))
               (declare (not safe))
               (cons __tmp282234 __tmp282221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282220))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282219
                                          _stx276653_)))))
                                (let* ((_g276682276722_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx281818281819_))
                                              (___kont281822281823_)
                                              (___kont281824281825_))))
                                       (___match281855281856_
                                        (lambda (_e276691276727_
                                                 _hd276690276730_
                                                 _tl276689276732_
                                                 _e276694276735_
                                                 _hd276693276738_
                                                 _tl276692276740_
                                                 _e276697276743_
                                                 _hd276696276746_
                                                 _tl276695276748_
                                                 _e276700276751_
                                                 _hd276699276754_
                                                 _tl276698276756_)
                                          (let ((_L276759_ _tl276698276756_)
                                                (_L276760_ _hd276699276754_)
                                                (_L276761_ _hd276696276746_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L276761_))
                                                (___kont281820281821_
                                                 _L276759_
                                                 _L276760_
                                                 _L276761_)
                                                (___kont281824281825_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx281818281819_))
                                      (let ((_e276691276727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx281818281819_))))
                                        (let ((_tl276689276732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276691276727_)))
                                              (_hd276690276730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276691276727_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd276690276730_))
                                              (let ((_e276694276735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd276690276730_))))
                                                (let ((_tl276692276740_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276694276735_)))
                                                      (_hd276693276738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276694276735_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd276693276738_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd276693276738_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276692276740_))
                      (let ((_e276697276743_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276692276740_))))
                        (let ((_tl276695276748_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276697276743_)))
                              (_hd276696276746_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276697276743_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276695276748_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276689276732_))
                                  (let ((_e276700276751_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276689276732_))))
                                    (let ((_tl276698276756_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276700276751_)))
                                          (_hd276699276754_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276700276751_))))
                                      (___match281855281856_
                                       _e276691276727_
                                       _hd276690276730_
                                       _tl276689276732_
                                       _e276694276735_
                                       _hd276693276738_
                                       _tl276692276740_
                                       _e276697276743_
                                       _hd276696276746_
                                       _tl276695276748_
                                       _e276700276751_
                                       _hd276699276754_
                                       _tl276698276756_)))
                                  (___kont281824281825_))
                              (___kont281824281825_))))
                      (___kont281824281825_))
                  (___kont281824281825_))
              (___kont281824281825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281824281825_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g276682276722_))))))))))))))))
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
      (lambda (_self276475_ _stx276476_ _args276477_)
        (let* ((_g276479276489_
                (lambda (_g276480276486_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276480276486_))))
               (_g276478276527_
                (lambda (_g276480276492_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276480276492_))
                      (let ((_e276484276494_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276480276492_))))
                        (let ((_hd276483276497_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276484276494_)))
                              (_tl276482276499_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276484276494_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276482276499_))
                              ((lambda (_L276502_)
                                 (let* ((_klass276513_
                                         (let ((__tmp282319
                                                (##structure-ref
                                                 _self276475_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276476_
                                            __tmp282319)))
                                        (_field276515_
                                         (let ((__tmp282320
                                                (##structure-ref
                                                 _self276475_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass276513_
                                            __tmp282320)))
                                        (_object276517_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276502_))))
                                   (if (##structure-ref
                                        _klass276513_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282397
                                              (let ((__tmp282406
                                                     (if (##structure-ref
                                                          _self276475_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp282398
                                                     (let ((__tmp282403
                                                            (let ((__tmp282404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282405
                                  (##structure-ref
                                   _self276475_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282405 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282404)))
                   (__tmp282399
                    (let ((__tmp282401
                           (let ((__tmp282402
                                  (let ()
                                    (declare (not safe))
                                    (cons _field276515_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282402)))
                          (__tmp282400
                           (let ()
                             (declare (not safe))
                             (cons _object276517_ '()))))
                      (declare (not safe))
                      (cons __tmp282401 __tmp282400))))
               (declare (not safe))
               (cons __tmp282403 __tmp282399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282406
                                                      __tmp282398))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282397
                                          _stx276476_))
                                       (if (##structure-ref
                                            _klass276513_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282387
                                                  (let ((__tmp282396
                                                         (if (##structure-ref
                                                              _self276475_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp282388
                                                         (let ((__tmp282393
                                                                (let ((__tmp282394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282395
                                      (##structure-ref
                                       _self276475_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282395 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282394)))
                       (__tmp282389
                        (let ((__tmp282391
                               (let ((__tmp282392
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276515_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282392)))
                              (__tmp282390
                               (let ()
                                 (declare (not safe))
                                 (cons _object276517_ '()))))
                          (declare (not safe))
                          (cons __tmp282391 __tmp282390))))
                   (declare (not safe))
                   (cons __tmp282393 __tmp282389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282396
                                                          __tmp282388))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282387
                                              _stx276476_))
                                           (let ((_$e276520_
                                                  (let ((__tmp282321
                                                         (##structure-ref
                                                          _self276475_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass276513_
                                                     __tmp282321))))
                                             (if _$e276520_
                                                 ((lambda (_klass276523_)
                                                    (let ((__tmp282377
                                                           (let ((__tmp282386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self276475_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp282378
                          (let ((__tmp282383
                                 (let ((__tmp282384
                                        (let ((__tmp282385
                                               (##structure-ref
                                                _self276475_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282385 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp282384)))
                                (__tmp282379
                                 (let ((__tmp282381
                                        (let ((__tmp282382
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field276515_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp282382)))
                                       (__tmp282380
                                        (let ()
                                          (declare (not safe))
                                          (cons _object276517_ '()))))
                                   (declare (not safe))
                                   (cons __tmp282381 __tmp282380))))
                            (declare (not safe))
                            (cons __tmp282383 __tmp282379))))
                     (declare (not safe))
                     (cons __tmp282386 __tmp282378))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp282377 _stx276476_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e276520_)
                                                 (if (##structure-ref
                                                      _self276475_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp282331
                                                            (let* ((_$obj276525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282332 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp282332)))
                           (__tmp282333
                            (let ((__tmp282373
                                   (let ((__tmp282374
                                          (let ((__tmp282376
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj276525_ '())))
                                                (__tmp282375
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object276517_ '()))))
                                            (declare (not safe))
                                            (cons __tmp282376 __tmp282375))))
                                     (declare (not safe))
                                     (cons __tmp282374 '())))
                                  (__tmp282334
                                   (let ((__tmp282335
                                          (let ((__tmp282336
                                                 (let ((__tmp282365
                                                        (let ((__tmp282366
                                                               (let ((__tmp282370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282371
                                     (let ((__tmp282372
                                            (##structure-ref
                                             _klass276513_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp282372 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp282371)))
                             (__tmp282367
                              (let ((__tmp282368
                                     (let ((__tmp282369
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj276525_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282369))))
                                (declare (not safe))
                                (cons __tmp282368 '()))))
                         (declare (not safe))
                         (cons __tmp282370 __tmp282367))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp282366)))
               (__tmp282337
                (let ((__tmp282354
                       (let ((__tmp282355
                              (let ((__tmp282362
                                     (let ((__tmp282363
                                            (let ((__tmp282364
                                                   (##structure-ref
                                                    _self276475_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282364 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282363)))
                                    (__tmp282356
                                     (let ((__tmp282360
                                            (let ((__tmp282361
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276515_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282361)))
                                           (__tmp282357
                                            (let ((__tmp282358
                                                   (let ((__tmp282359
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282359))))
                                              (declare (not safe))
                                              (cons __tmp282358 '()))))
                                       (declare (not safe))
                                       (cons __tmp282360 __tmp282357))))
                                (declare (not safe))
                                (cons __tmp282362 __tmp282356))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp282355)))
                      (__tmp282338
                       (let ((__tmp282339
                              (let ((__tmp282340
                                     (let ((__tmp282352
                                            (let ((__tmp282353
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282353)))
                                           (__tmp282341
                                            (let ((__tmp282349
                                                   (let ((__tmp282350
                                                          (let ((__tmp282351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self276475_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp282351 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282350)))
                                                  (__tmp282342
                                                   (let ((__tmp282347
                                                          (let ((__tmp282348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276525_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282348)))
                 (__tmp282343
                  (let ((__tmp282344
                         (let ((__tmp282345
                                (let ((__tmp282346
                                       (##structure-ref
                                        _self276475_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp282346 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282345))))
                    (declare (not safe))
                    (cons __tmp282344 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282347
                                                           __tmp282343))))
                                              (declare (not safe))
                                              (cons __tmp282349 __tmp282342))))
                                       (declare (not safe))
                                       (cons __tmp282352 __tmp282341))))
                                (declare (not safe))
                                (cons '%#call __tmp282340))))
                         (declare (not safe))
                         (cons __tmp282339 '()))))
                  (declare (not safe))
                  (cons __tmp282354 __tmp282338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282365
                                                         __tmp282337))))
                                            (declare (not safe))
                                            (cons '%#if __tmp282336))))
                                     (declare (not safe))
                                     (cons __tmp282335 '()))))
                              (declare (not safe))
                              (cons __tmp282373 __tmp282334))))
                      (declare (not safe))
                      (cons '%#let-values __tmp282333))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282331 _stx276476_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp282322
                                                            (let ((__tmp282323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282329
                                  (let ((__tmp282330
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282330)))
                                 (__tmp282324
                                  (let ((__tmp282325
                                         (let ((__tmp282326
                                                (let ((__tmp282327
                                                       (let ((__tmp282328
                                                              (##structure-ref
                                                               _self276475_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp282328
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp282327))))
                                           (declare (not safe))
                                           (cons __tmp282326 '()))))
                                    (declare (not safe))
                                    (cons _object276517_ __tmp282325))))
                             (declare (not safe))
                             (cons __tmp282329 __tmp282324))))
                      (declare (not safe))
                      (cons '%#call __tmp282323))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282322 _stx276476_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd276483276497_)
                              (let ()
                                (declare (not safe))
                                (_g276479276489_ _g276480276492_)))))
                      (let ()
                        (declare (not safe))
                        (_g276479276489_ _g276480276492_))))))
          (declare (not safe))
          (_g276478276527_ _args276477_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t281705)
        (let ((__slot281706
               (let ((__tmp281709
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281705 'slot))))
                 (if __tmp281709 __tmp281709 (error '"Unknown slot" 'slot))))
              (__id281707
               (let ((__tmp281710
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281705 'id))))
                 (if __tmp281710 __tmp281710 (error '"Unknown slot" 'id))))
              (__checked?281708
               (let ((__tmp281711
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281705 'checked?))))
                 (if __tmp281711
                     __tmp281711
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self276475_ _stx276476_ _args276477_)
            (let* ((_g276479276489_
                    (lambda (_g276480276486_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276480276486_))))
                   (_g276478276527_
                    (lambda (_g276480276492_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276480276492_))
                          (let ((_e276484276494_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276480276492_))))
                            (let ((_hd276483276497_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276484276494_)))
                                  (_tl276482276499_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276484276494_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276482276499_))
                                  ((lambda (_L276502_)
                                     (let* ((_klass276513_
                                             (let ((__tmp282407
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276475_
                                                       __id281707
                                                       __t281705
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276476_
                                                __tmp282407)))
                                            (_field276515_
                                             (let ((__tmp282408
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276475_
                                                       __slot281706
                                                       __t281705
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass276513_
                                                __tmp282408)))
                                            (_object276517_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276502_))))
                                       (if (##structure-ref
                                            _klass276513_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282485
                                                  (let ((__tmp282494
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276475_
                        __checked?281708
                        __t281705
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp282486
                 (let ((__tmp282491
                        (let ((__tmp282492
                               (let ((__tmp282493
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self276475_
                                         __id281707
                                         __t281705
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp282493 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282492)))
                       (__tmp282487
                        (let ((__tmp282489
                               (let ((__tmp282490
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276515_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282490)))
                              (__tmp282488
                               (let ()
                                 (declare (not safe))
                                 (cons _object276517_ '()))))
                          (declare (not safe))
                          (cons __tmp282489 __tmp282488))))
                   (declare (not safe))
                   (cons __tmp282491 __tmp282487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282494
                                                          __tmp282486))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282485
                                              _stx276476_))
                                           (if (##structure-ref
                                                _klass276513_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282475
                                                      (let ((__tmp282484
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276475_
                            __checked?281708
                            __t281705
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp282476
                     (let ((__tmp282481
                            (let ((__tmp282482
                                   (let ((__tmp282483
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276475_
                                             __id281707
                                             __t281705
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp282483 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282482)))
                           (__tmp282477
                            (let ((__tmp282479
                                   (let ((__tmp282480
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276515_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282480)))
                                  (__tmp282478
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276517_ '()))))
                              (declare (not safe))
                              (cons __tmp282479 __tmp282478))))
                       (declare (not safe))
                       (cons __tmp282481 __tmp282477))))
                (declare (not safe))
                (cons __tmp282484 __tmp282476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282475
                                                  _stx276476_))
                                               (let ((_$e276520_
                                                      (let ((__tmp282409
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276475_
                        __slot281706
                        __t281705
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass276513_ __tmp282409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e276520_
                                                     ((lambda (_klass276523_)
                                                        (let ((__tmp282465
                                                               (let ((__tmp282474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276475_
                                     __checked?281708
                                     __t281705
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp282466
                              (let ((__tmp282471
                                     (let ((__tmp282472
                                            (let ((__tmp282473
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276475_
                                                      __id281707
                                                      __t281705
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282473 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282472)))
                                    (__tmp282467
                                     (let ((__tmp282469
                                            (let ((__tmp282470
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276515_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282470)))
                                           (__tmp282468
                                            (let ()
                                              (declare (not safe))
                                              (cons _object276517_ '()))))
                                       (declare (not safe))
                                       (cons __tmp282469 __tmp282468))))
                                (declare (not safe))
                                (cons __tmp282471 __tmp282467))))
                         (declare (not safe))
                         (cons __tmp282474 __tmp282466))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp282465 _stx276476_)))
              _$e276520_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self276475_
                                                            __checked?281708
                                                            __t281705
                                                            '#f))
                                                         (let ((__tmp282419
                                                                (let* ((_$obj276525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp282420 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp282420)))
                               (__tmp282421
                                (let ((__tmp282461
                                       (let ((__tmp282462
                                              (let ((__tmp282464
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj276525_
                                                             '())))
                                                    (__tmp282463
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object276517_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp282464
                                                      __tmp282463))))
                                         (declare (not safe))
                                         (cons __tmp282462 '())))
                                      (__tmp282422
                                       (let ((__tmp282423
                                              (let ((__tmp282424
                                                     (let ((__tmp282453
                                                            (let ((__tmp282454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282458
                                  (let ((__tmp282459
                                         (let ((__tmp282460
                                                (##structure-ref
                                                 _klass276513_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp282460 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282459)))
                                 (__tmp282455
                                  (let ((__tmp282456
                                         (let ((__tmp282457
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276525_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282457))))
                                    (declare (not safe))
                                    (cons __tmp282456 '()))))
                             (declare (not safe))
                             (cons __tmp282458 __tmp282455))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp282454)))
                   (__tmp282425
                    (let ((__tmp282442
                           (let ((__tmp282443
                                  (let ((__tmp282450
                                         (let ((__tmp282451
                                                (let ((__tmp282452
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276475_
                                                          __id281707
                                                          __t281705
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282452 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282451)))
                                        (__tmp282444
                                         (let ((__tmp282448
                                                (let ((__tmp282449
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276515_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282449)))
                                               (__tmp282445
                                                (let ((__tmp282446
                                                       (let ((__tmp282447
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276525_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282446 '()))))
                                           (declare (not safe))
                                           (cons __tmp282448 __tmp282445))))
                                    (declare (not safe))
                                    (cons __tmp282450 __tmp282444))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp282443)))
                          (__tmp282426
                           (let ((__tmp282427
                                  (let ((__tmp282428
                                         (let ((__tmp282440
                                                (let ((__tmp282441
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282441)))
                                               (__tmp282429
                                                (let ((__tmp282437
                                                       (let ((__tmp282438
                                                              (let ((__tmp282439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276475_
                                __id281707
                                __t281705
                                '#f))))
                        (declare (not safe))
                        (cons __tmp282439 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282438)))
              (__tmp282430
               (let ((__tmp282435
                      (let ((__tmp282436
                             (let ()
                               (declare (not safe))
                               (cons _$obj276525_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282436)))
                     (__tmp282431
                      (let ((__tmp282432
                             (let ((__tmp282433
                                    (let ((__tmp282434
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self276475_
                                              __slot281706
                                              __t281705
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp282434 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282433))))
                        (declare (not safe))
                        (cons __tmp282432 '()))))
                 (declare (not safe))
                 (cons __tmp282435 __tmp282431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282437
                                                        __tmp282430))))
                                           (declare (not safe))
                                           (cons __tmp282440 __tmp282429))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282428))))
                             (declare (not safe))
                             (cons __tmp282427 '()))))
                      (declare (not safe))
                      (cons __tmp282442 __tmp282426))))
               (declare (not safe))
               (cons __tmp282453 __tmp282425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp282424))))
                                         (declare (not safe))
                                         (cons __tmp282423 '()))))
                                  (declare (not safe))
                                  (cons __tmp282461 __tmp282422))))
                          (declare (not safe))
                          (cons '%#let-values __tmp282421))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282419 _stx276476_))
                 (let ((__tmp282410
                        (let ((__tmp282411
                               (let ((__tmp282417
                                      (let ((__tmp282418
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp282418)))
                                     (__tmp282412
                                      (let ((__tmp282413
                                             (let ((__tmp282414
                                                    (let ((__tmp282415
                                                           (let ((__tmp282416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self276475_
                             __slot281706
                             __t281705
                             '#f))))
                     (declare (not safe))
                     (cons __tmp282416 '()))))
              (declare (not safe))
              (cons '%#quote __tmp282415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282414 '()))))
                                        (declare (not safe))
                                        (cons _object276517_ __tmp282413))))
                                 (declare (not safe))
                                 (cons __tmp282417 __tmp282412))))
                          (declare (not safe))
                          (cons '%#call __tmp282411))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282410 _stx276476_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd276483276497_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276479276489_ _g276480276492_)))))
                          (let ()
                            (declare (not safe))
                            (_g276479276489_ _g276480276492_))))))
              (declare (not safe))
              (_g276478276527_ _args276477_))))))
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
      (lambda (_self276280_ _stx276281_ _args276282_)
        (let* ((_g276284276298_
                (lambda (_g276285276295_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276285276295_))))
               (_g276283276350_
                (lambda (_g276285276301_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276285276301_))
                      (let ((_e276290276303_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276285276301_))))
                        (let ((_hd276289276306_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276290276303_)))
                              (_tl276288276308_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276290276303_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276288276308_))
                              (let ((_e276293276311_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276288276308_))))
                                (let ((_hd276292276314_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276293276311_)))
                                      (_tl276291276316_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276293276311_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl276291276316_))
                                      ((lambda (_L276319_ _L276320_)
                                         (let* ((_klass276334_
                                                 (let ((__tmp282495
                                                        (##structure-ref
                                                         _self276280_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx276281_
                                                    __tmp282495)))
                                                (_field276336_
                                                 (let ((__tmp282496
                                                        (##structure-ref
                                                         _self276280_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass276334_
                                                    __tmp282496)))
                                                (_object276338_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276320_)))
                                                (_value276340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276319_))))
                                           (if (##structure-ref
                                                _klass276334_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282578
                                                      (let ((__tmp282588
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self276280_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp282579
                     (let ((__tmp282585
                            (let ((__tmp282586
                                   (let ((__tmp282587
                                          (##structure-ref
                                           _self276280_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282587 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282586)))
                           (__tmp282580
                            (let ((__tmp282583
                                   (let ((__tmp282584
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276336_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282584)))
                                  (__tmp282581
                                   (let ((__tmp282582
                                          (let ()
                                            (declare (not safe))
                                            (cons _value276340_ '()))))
                                     (declare (not safe))
                                     (cons _object276338_ __tmp282582))))
                              (declare (not safe))
                              (cons __tmp282583 __tmp282581))))
                       (declare (not safe))
                       (cons __tmp282585 __tmp282580))))
                (declare (not safe))
                (cons __tmp282588 __tmp282579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282578
                                                  _stx276281_))
                                               (if (##structure-ref
                                                    _klass276334_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282567
                                                          (let ((__tmp282577
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self276280_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282568
                         (let ((__tmp282574
                                (let ((__tmp282575
                                       (let ((__tmp282576
                                              (##structure-ref
                                               _self276280_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282576 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282575)))
                               (__tmp282569
                                (let ((__tmp282572
                                       (let ((__tmp282573
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276336_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282573)))
                                      (__tmp282570
                                       (let ((__tmp282571
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276340_ '()))))
                                         (declare (not safe))
                                         (cons _object276338_ __tmp282571))))
                                  (declare (not safe))
                                  (cons __tmp282572 __tmp282570))))
                           (declare (not safe))
                           (cons __tmp282574 __tmp282569))))
                    (declare (not safe))
                    (cons __tmp282577 __tmp282568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282567
                                                      _stx276281_))
                                                   (let ((_$e276343_
                                                          (let ((__tmp282497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self276280_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass276334_ __tmp282497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e276343_
                                                         ((lambda (_klass276346_)
                                                            (let ((__tmp282556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282566
                                  (if (##structure-ref
                                       _self276280_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp282557
                                  (let ((__tmp282563
                                         (let ((__tmp282564
                                                (let ((__tmp282565
                                                       (##structure-ref
                                                        _self276280_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp282565 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282564)))
                                        (__tmp282558
                                         (let ((__tmp282561
                                                (let ((__tmp282562
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276336_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282562)))
                                               (__tmp282559
                                                (let ((__tmp282560
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value276340_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object276338_
                                                        __tmp282560))))
                                           (declare (not safe))
                                           (cons __tmp282561 __tmp282559))))
                                    (declare (not safe))
                                    (cons __tmp282563 __tmp282558))))
                             (declare (not safe))
                             (cons __tmp282566 __tmp282557))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp282556 _stx276281_)))
                  _$e276343_)
                 (if (##structure-ref _self276280_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp282508
                            (let* ((_$obj276348_
                                    (let ((__tmp282509 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp282509)))
                                   (__tmp282510
                                    (let ((__tmp282552
                                           (let ((__tmp282553
                                                  (let ((__tmp282555
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj276348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp282554
                 (let () (declare (not safe)) (cons _object276338_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282555
                                                          __tmp282554))))
                                             (declare (not safe))
                                             (cons __tmp282553 '())))
                                          (__tmp282511
                                           (let ((__tmp282512
                                                  (let ((__tmp282513
                                                         (let ((__tmp282544
                                                                (let ((__tmp282545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282549
                                      (let ((__tmp282550
                                             (let ((__tmp282551
                                                    (##structure-ref
                                                     _klass276334_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp282551 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282550)))
                                     (__tmp282546
                                      (let ((__tmp282547
                                             (let ((__tmp282548
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276348_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282548))))
                                        (declare (not safe))
                                        (cons __tmp282547 '()))))
                                 (declare (not safe))
                                 (cons __tmp282549 __tmp282546))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp282545)))
                       (__tmp282514
                        (let ((__tmp282532
                               (let ((__tmp282533
                                      (let ((__tmp282541
                                             (let ((__tmp282542
                                                    (let ((__tmp282543
                                                           (##structure-ref
                                                            _self276280_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp282543 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282542)))
                                            (__tmp282534
                                             (let ((__tmp282539
                                                    (let ((__tmp282540
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282540)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282535
                                                    (let ((__tmp282537
                                                           (let ((__tmp282538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj276348_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282538)))
                  (__tmp282536
                   (let () (declare (not safe)) (cons _value276340_ '()))))
              (declare (not safe))
              (cons __tmp282537 __tmp282536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282539
                                                     __tmp282535))))
                                        (declare (not safe))
                                        (cons __tmp282541 __tmp282534))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp282533)))
                              (__tmp282515
                               (let ((__tmp282516
                                      (let ((__tmp282517
                                             (let ((__tmp282530
                                                    (let ((__tmp282531
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282531)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282518
                                                    (let ((__tmp282527
                                                           (let ((__tmp282528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp282529
                                 (##structure-ref
                                  _self276280_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp282529 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282528)))
                  (__tmp282519
                   (let ((__tmp282525
                          (let ((__tmp282526
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj276348_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp282526)))
                         (__tmp282520
                          (let ((__tmp282522
                                 (let ((__tmp282523
                                        (let ((__tmp282524
                                               (##structure-ref
                                                _self276280_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282524 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp282523)))
                                (__tmp282521
                                 (let ()
                                   (declare (not safe))
                                   (cons _value276340_ '()))))
                            (declare (not safe))
                            (cons __tmp282522 __tmp282521))))
                     (declare (not safe))
                     (cons __tmp282525 __tmp282520))))
              (declare (not safe))
              (cons __tmp282527 __tmp282519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282530
                                                     __tmp282518))))
                                        (declare (not safe))
                                        (cons '%#call __tmp282517))))
                                 (declare (not safe))
                                 (cons __tmp282516 '()))))
                          (declare (not safe))
                          (cons __tmp282532 __tmp282515))))
                   (declare (not safe))
                   (cons __tmp282544 __tmp282514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp282513))))
                                             (declare (not safe))
                                             (cons __tmp282512 '()))))
                                      (declare (not safe))
                                      (cons __tmp282552 __tmp282511))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282510))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282508 _stx276281_))
                     (let ((__tmp282498
                            (let ((__tmp282499
                                   (let ((__tmp282506
                                          (let ((__tmp282507
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp282507)))
                                         (__tmp282500
                                          (let ((__tmp282501
                                                 (let ((__tmp282503
                                                        (let ((__tmp282504
                                                               (let ((__tmp282505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self276280_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp282505 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282504)))
               (__tmp282502
                (let () (declare (not safe)) (cons _value276340_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282503
                                                         __tmp282502))))
                                            (declare (not safe))
                                            (cons _object276338_
                                                  __tmp282501))))
                                     (declare (not safe))
                                     (cons __tmp282506 __tmp282500))))
                              (declare (not safe))
                              (cons '%#call __tmp282499))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282498 _stx276281_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd276292276314_
                                       _hd276289276306_)
                                      (let ()
                                        (declare (not safe))
                                        (_g276284276298_ _g276285276301_)))))
                              (let ()
                                (declare (not safe))
                                (_g276284276298_ _g276285276301_)))))
                      (let ()
                        (declare (not safe))
                        (_g276284276298_ _g276285276301_))))))
          (declare (not safe))
          (_g276283276350_ _args276282_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t281712)
        (let ((__slot281713
               (let ((__tmp281716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281712 'slot))))
                 (if __tmp281716 __tmp281716 (error '"Unknown slot" 'slot))))
              (__id281714
               (let ((__tmp281717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281712 'id))))
                 (if __tmp281717 __tmp281717 (error '"Unknown slot" 'id))))
              (__checked?281715
               (let ((__tmp281718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281712 'checked?))))
                 (if __tmp281718
                     __tmp281718
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self276280_ _stx276281_ _args276282_)
            (let* ((_g276284276298_
                    (lambda (_g276285276295_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276285276295_))))
                   (_g276283276350_
                    (lambda (_g276285276301_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276285276301_))
                          (let ((_e276290276303_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276285276301_))))
                            (let ((_hd276289276306_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276290276303_)))
                                  (_tl276288276308_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276290276303_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276288276308_))
                                  (let ((_e276293276311_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276288276308_))))
                                    (let ((_hd276292276314_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276293276311_)))
                                          (_tl276291276316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276293276311_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276291276316_))
                                          ((lambda (_L276319_ _L276320_)
                                             (let* ((_klass276334_
                                                     (let ((__tmp282589
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276280_
                                                               __id281714
                                                               __t281712
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx276281_
                                                        __tmp282589)))
                                                    (_field276336_
                                                     (let ((__tmp282590
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276280_
                                                               __slot281713
                                                               __t281712
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass276334_
                                                        __tmp282590)))
                                                    (_object276338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276320_)))
                                                    (_value276340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276319_))))
                                               (if (##structure-ref
                                                    _klass276334_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282672
                                                          (let ((__tmp282682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276280_
                                __checked?281715
                                __t281712
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282673
                         (let ((__tmp282679
                                (let ((__tmp282680
                                       (let ((__tmp282681
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self276280_
                                                 __id281714
                                                 __t281712
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp282681 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282680)))
                               (__tmp282674
                                (let ((__tmp282677
                                       (let ((__tmp282678
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276336_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282678)))
                                      (__tmp282675
                                       (let ((__tmp282676
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276340_ '()))))
                                         (declare (not safe))
                                         (cons _object276338_ __tmp282676))))
                                  (declare (not safe))
                                  (cons __tmp282677 __tmp282675))))
                           (declare (not safe))
                           (cons __tmp282679 __tmp282674))))
                    (declare (not safe))
                    (cons __tmp282682 __tmp282673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282672
                                                      _stx276281_))
                                                   (if (##structure-ref
                                                        _klass276334_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp282661
                                                              (let ((__tmp282671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self276280_
                                    __checked?281715
                                    __t281712
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp282662
                             (let ((__tmp282668
                                    (let ((__tmp282669
                                           (let ((__tmp282670
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276280_
                                                     __id281714
                                                     __t281712
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282670 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282669)))
                                   (__tmp282663
                                    (let ((__tmp282666
                                           (let ((__tmp282667
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field276336_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282667)))
                                          (__tmp282664
                                           (let ((__tmp282665
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value276340_ '()))))
                                             (declare (not safe))
                                             (cons _object276338_
                                                   __tmp282665))))
                                      (declare (not safe))
                                      (cons __tmp282666 __tmp282664))))
                               (declare (not safe))
                               (cons __tmp282668 __tmp282663))))
                        (declare (not safe))
                        (cons __tmp282671 __tmp282662))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp282661 _stx276281_))
               (let ((_$e276343_
                      (let ((__tmp282591
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276280_
                                __slot281713
                                __t281712
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass276334_
                         __tmp282591))))
                 (if _$e276343_
                     ((lambda (_klass276346_)
                        (let ((__tmp282650
                               (let ((__tmp282660
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276280_
                                             __checked?281715
                                             __t281712
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp282651
                                      (let ((__tmp282657
                                             (let ((__tmp282658
                                                    (let ((__tmp282659
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self276280_
                                                              __id281714
                                                              __t281712
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp282659 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282658)))
                                            (__tmp282652
                                             (let ((__tmp282655
                                                    (let ((__tmp282656
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282656)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282653
                                                    (let ((__tmp282654
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value276340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object276338_ __tmp282654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282655
                                                     __tmp282653))))
                                        (declare (not safe))
                                        (cons __tmp282657 __tmp282652))))
                                 (declare (not safe))
                                 (cons __tmp282660 __tmp282651))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282650 _stx276281_)))
                      _$e276343_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276280_
                            __checked?281715
                            __t281712
                            '#f))
                         (let ((__tmp282602
                                (let* ((_$obj276348_
                                        (let ((__tmp282603 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp282603)))
                                       (__tmp282604
                                        (let ((__tmp282646
                                               (let ((__tmp282647
                                                      (let ((__tmp282649
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj276348_ '())))
                    (__tmp282648
                     (let () (declare (not safe)) (cons _object276338_ '()))))
                (declare (not safe))
                (cons __tmp282649 __tmp282648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282647 '())))
                                              (__tmp282605
                                               (let ((__tmp282606
                                                      (let ((__tmp282607
                                                             (let ((__tmp282638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282639
                                   (let ((__tmp282643
                                          (let ((__tmp282644
                                                 (let ((__tmp282645
                                                        (##structure-ref
                                                         _klass276334_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp282645 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp282644)))
                                         (__tmp282640
                                          (let ((__tmp282641
                                                 (let ((__tmp282642
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276348_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282642))))
                                            (declare (not safe))
                                            (cons __tmp282641 '()))))
                                     (declare (not safe))
                                     (cons __tmp282643 __tmp282640))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp282639)))
                           (__tmp282608
                            (let ((__tmp282626
                                   (let ((__tmp282627
                                          (let ((__tmp282635
                                                 (let ((__tmp282636
                                                        (let ((__tmp282637
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self276280_
                          __id281714
                          __t281712
                          '#f))))
                  (declare (not safe))
                  (cons __tmp282637 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282636)))
                                                (__tmp282628
                                                 (let ((__tmp282633
                                                        (let ((__tmp282634
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field276336_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282634)))
               (__tmp282629
                (let ((__tmp282631
                       (let ((__tmp282632
                              (let ()
                                (declare (not safe))
                                (cons _$obj276348_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282632)))
                      (__tmp282630
                       (let () (declare (not safe)) (cons _value276340_ '()))))
                  (declare (not safe))
                  (cons __tmp282631 __tmp282630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282633
                                                         __tmp282629))))
                                            (declare (not safe))
                                            (cons __tmp282635 __tmp282628))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp282627)))
                                  (__tmp282609
                                   (let ((__tmp282610
                                          (let ((__tmp282611
                                                 (let ((__tmp282624
                                                        (let ((__tmp282625
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282625)))
               (__tmp282612
                (let ((__tmp282621
                       (let ((__tmp282622
                              (let ((__tmp282623
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self276280_
                                        __id281714
                                        __t281712
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp282623 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282622)))
                      (__tmp282613
                       (let ((__tmp282619
                              (let ((__tmp282620
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276348_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282620)))
                             (__tmp282614
                              (let ((__tmp282616
                                     (let ((__tmp282617
                                            (let ((__tmp282618
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276280_
                                                      __slot281713
                                                      __t281712
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282618 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282617)))
                                    (__tmp282615
                                     (let ()
                                       (declare (not safe))
                                       (cons _value276340_ '()))))
                                (declare (not safe))
                                (cons __tmp282616 __tmp282615))))
                         (declare (not safe))
                         (cons __tmp282619 __tmp282614))))
                  (declare (not safe))
                  (cons __tmp282621 __tmp282613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282624
                                                         __tmp282612))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282611))))
                                     (declare (not safe))
                                     (cons __tmp282610 '()))))
                              (declare (not safe))
                              (cons __tmp282626 __tmp282609))))
                       (declare (not safe))
                       (cons __tmp282638 __tmp282608))))
                (declare (not safe))
                (cons '%#if __tmp282607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282606 '()))))
                                          (declare (not safe))
                                          (cons __tmp282646 __tmp282605))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282604))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282602 _stx276281_))
                         (let ((__tmp282592
                                (let ((__tmp282593
                                       (let ((__tmp282600
                                              (let ((__tmp282601
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp282601)))
                                             (__tmp282594
                                              (let ((__tmp282595
                                                     (let ((__tmp282597
                                                            (let ((__tmp282598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282599
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276280_
                                     __slot281713
                                     __t281712
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp282599 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282598)))
                   (__tmp282596
                    (let () (declare (not safe)) (cons _value276340_ '()))))
               (declare (not safe))
               (cons __tmp282597 __tmp282596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object276338_
                                                      __tmp282595))))
                                         (declare (not safe))
                                         (cons __tmp282600 __tmp282594))))
                                  (declare (not safe))
                                  (cons '%#call __tmp282593))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp282592
                            _stx276281_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd276292276314_
                                           _hd276289276306_)
                                          (let ()
                                            (declare (not safe))
                                            (_g276284276298_
                                             _g276285276301_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276284276298_ _g276285276301_)))))
                          (let ()
                            (declare (not safe))
                            (_g276284276298_ _g276285276301_))))))
              (declare (not safe))
              (_g276283276350_ _args276282_))))))
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
      (lambda (_self276114_ _stx276115_ _args276116_)
        (let* ((_self276117276126_ _self276114_)
               (_E276119276130_
                (lambda () (error '"No clause matching" _self276117276126_)))
               (_K276120276137_
                (lambda (_inline276133_ _dispatch276134_ _arity276135_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self276114_ _args276116_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx276115_
                         _arity276135_)))
                  (if _inline276133_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp282688
                               (let ((__tmp282689
                                      (_inline276133_ _stx276115_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp282689
                                  _stx276115_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp282688)))
                      (if _dispatch276134_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch276134_))
                            (let ((__tmp282683
                                   (let ((__tmp282684
                                          (let ((__tmp282685
                                                 (let ((__tmp282686
                                                        (let ((__tmp282687
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch276134_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282686
                                                         _args276116_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282685))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282684
                                      _stx276115_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp282683)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx276115_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276117276126_ 'gxc#!lambda::t))
              (let* ((_e276121276140_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276117276126_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276122276143_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276117276126_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276146_ _e276122276143_)
                     (_e276123276148_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276117276126_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch276151_ _e276123276148_)
                     (_e276124276153_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276117276126_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline276156_ _e276124276153_))
                (declare (not safe))
                (_K276120276137_
                 _inline276156_
                 _dispatch276151_
                 _arity276146_))
              (let () (declare (not safe)) (_E276119276130_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self275953_ _stx275954_ _args275955_)
        (let* ((_self275956275963_ _self275953_)
               (_E275958275967_
                (lambda () (error '"No clause matching" _self275956275963_)))
               (_K275959275981_
                (lambda (_clauses275970_)
                  (let ((_$e275976_
                         (let ((__tmp282690
                                (lambda (_g275971275973_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g275971275973_
                                     _args275955_)))))
                           (declare (not safe))
                           (find __tmp282690 _clauses275970_))))
                    (if _$e275976_
                        ((lambda (_clause275979_)
                           (let ((__method281987
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause275979_
                                     'optimize-call))))
                             (if __method281987
                                 (__method281987
                                  _clause275979_
                                  _stx275954_
                                  _args275955_)
                                 (error '"Missing method"
                                        _clause275979_
                                        'optimize-call))))
                         _$e275976_)
                        (let ((__tmp282691
                               (map gxc#!lambda-arity _clauses275970_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx275954_
                           __tmp282691)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275956275963_
                 'gxc#!case-lambda::t))
              (let* ((_e275960275984_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275956275963_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275961275987_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275956275963_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses275990_ _e275961275987_))
                (declare (not safe))
                (_K275959275981_ _clauses275990_))
              (let () (declare (not safe)) (_E275958275967_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self275767_ _args275768_)
        (let* ((_self275769275776_ _self275767_)
               (_E275771275780_
                (lambda () (error '"No clause matching" _self275769275776_)))
               (_K275772275820_
                (lambda (_arity275783_)
                  (let* ((_arity275784275793_ _arity275783_)
                         (_E275787275797_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity275784275793_))))
                    (let ((_K275791275817_
                           (lambda ()
                             (fx= (length _args275768_) _arity275783_)))
                          (_K275788275803_
                           (lambda (_arity275801_)
                             (fx>= (length _args275768_) _arity275801_))))
                      (let ((_try-match275786275813_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity275784275793_))
                                   (let ((_tl275790275808_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity275784275793_)))
                                         (_hd275789275806_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity275784275793_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl275790275808_))
                                         (let ((_arity275811_
                                                _hd275789275806_))
                                           (declare (not safe))
                                           (_K275788275803_ _arity275811_))
                                         (let ()
                                           (declare (not safe))
                                           (_E275787275797_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E275787275797_))))))
                        (if (fixnum? _arity275784275793_)
                            (let () (declare (not safe)) (_K275791275817_))
                            (let ()
                              (declare (not safe))
                              (_try-match275786275813_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275769275776_ 'gxc#!lambda::t))
              (let* ((_e275773275823_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275769275776_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275774275826_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275769275776_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity275829_ _e275774275826_))
                (declare (not safe))
                (_K275772275820_ _arity275829_))
              (let () (declare (not safe)) (_E275771275780_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self275652_ _stx275653_ _args275654_)
        (let* ((_self275655275663_ _self275652_)
               (_E275657275667_
                (lambda () (error '"No clause matching" _self275655275663_)))
               (_K275658275751_
                (lambda (_dispatch275670_ _table275671_)
                  (let* ((_g275672275681_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch275670_)))
                         (_else275674275689_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch275670_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx275653_))))
                         (_K275676275735_
                          (lambda (_main275692_ _keys275693_)
                            (let ((_g282692_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx275653_
                                      _args275654_))))
                              (begin
                                (let ((_g282693_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g282692_)
                                             (##vector-length _g282692_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g282693_ 2)))
                                      (error "Context expects 2 values"
                                             _g282693_)))
                                (let ((_pargs275695_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282692_ 0)))
                                      (_kwargs275696_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282692_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main275692_))
                                    (if _table275671_
                                        (let ((_xargs275703_
                                               (map (lambda (_key275698_)
                                                      (let ((_$e275700_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key275698_ _kwargs275696_))))
                (if _$e275700_ (values _$e275700_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys275693_)))
                                          (for-each
                                           (lambda (_kw275705_)
                                             (if (memq (car _kw275705_)
                                                       _keys275693_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx275653_
                                                    _keys275693_
                                                    _kw275705_))))
                                           _kwargs275696_)
                                          (let ((__tmp282745
                                                 (let ((__tmp282746
                                                        (let ((__tmp282747
                                                               (let ((__tmp282752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282753
                                     (let ()
                                       (declare (not safe))
                                       (cons _main275692_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282753)))
                             (__tmp282748
                              (let ((__tmp282750
                                     (let ((__tmp282751
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282751)))
                                    (__tmp282749
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs275695_
                                               _xargs275703_))))
                                (declare (not safe))
                                (cons __tmp282750 __tmp282749))))
                         (declare (not safe))
                         (cons __tmp282752 __tmp282748))))
                  (declare (not safe))
                  (cons '%#call __tmp282747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282746
                                                    _stx275653_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp282745)))
                                        (let* ((_kwt275707_
                                                (let ((__tmp282694
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp282694)))
                                               (_kwvars275710_
                                                (map (lambda (_g282695_)
                                                       (let ((__tmp282696
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp282696)))
                                                     _kwargs275696_))
                                               (_kwbind275715_
                                                (map (lambda (_kw275712_
                                                              _kwvar275713_)
                                                       (let ((__tmp282699
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar275713_ '())))
                     (__tmp282697
                      (let ((__tmp282698 (cdr _kw275712_)))
                        (declare (not safe))
                        (cons __tmp282698 '()))))
                 (declare (not safe))
                 (cons __tmp282699 __tmp282697)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275696_
                                                     _kwvars275710_))
                                               (_kwset275720_
                                                (map (lambda (_kw275717_
                                                              _kwvar275718_)
                                                       (let ((__tmp282700
                                                              (let ((__tmp282701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp282709
                                    (let ((__tmp282710
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt275707_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282710)))
                                   (__tmp282702
                                    (let ((__tmp282706
                                           (let ((__tmp282707
                                                  (let ((__tmp282708
                                                         (car _kw275717_)))
                                                    (declare (not safe))
                                                    (cons __tmp282708 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282707)))
                                          (__tmp282703
                                           (let ((__tmp282704
                                                  (let ((__tmp282705
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar275718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp282705))))
                                             (declare (not safe))
                                             (cons __tmp282704 '()))))
                                      (declare (not safe))
                                      (cons __tmp282706 __tmp282703))))
                               (declare (not safe))
                               (cons __tmp282709 __tmp282702))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp282701))))
                 (declare (not safe))
                 (cons '%#call __tmp282700)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275696_
                                                     _kwvars275710_))
                                               (_xkwargs275725_
                                                (map (lambda (_kw275722_
                                                              _kwvar275723_)
                                                       (let ((__tmp282713
                                                              (car _kw275722_))
                                                             (__tmp282711
                                                              (let ((__tmp282712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar275723_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282712))))
                 (declare (not safe))
                 (cons __tmp282713 __tmp282711)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275696_
                                                     _kwvars275710_))
                                               (_xargs275732_
                                                (map (lambda (_key275727_)
                                                       (let ((_$e275729_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key275727_ _xkwargs275725_))))
                 (if _$e275729_ (values _$e275729_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys275693_)))
                                          (let ((__tmp282714
                                                 (let ((__tmp282715
                                                        (let ((__tmp282716
                                                               (let ((__tmp282717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282718
                                     (let ((__tmp282719
                                            (let ((__tmp282733
                                                   (let ((__tmp282734
                                                          (let ((__tmp282744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt275707_ '())))
                        (__tmp282735
                         (let ((__tmp282736
                                (let ((__tmp282737
                                       (let ((__tmp282738
                                              (let ((__tmp282739
                                                     (let ((__tmp282740
                                                            (let ((__tmp282741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282742
                                  (let ((__tmp282743 (length _kwargs275696_)))
                                    (declare (not safe))
                                    (cons __tmp282743 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282742))))
                      (declare (not safe))
                      (cons __tmp282741 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp282740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp282739))))
                                         (declare (not safe))
                                         (cons '%#call __tmp282738))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp282737
                                   _stx275653_))))
                           (declare (not safe))
                           (cons __tmp282736 '()))))
                    (declare (not safe))
                    (cons __tmp282744 __tmp282735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282734 '())))
                                                  (__tmp282720
                                                   (let ((__tmp282721
                                                          (let ((__tmp282722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp282723
                                (let ((__tmp282724
                                       (let ((__tmp282725
                                              (let ((__tmp282726
                                                     (let ((__tmp282731
                                                            (let ((__tmp282732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main275692_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282732)))
                   (__tmp282727
                    (let ((__tmp282729
                           (let ((__tmp282730
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt275707_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282730)))
                          (__tmp282728
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs275695_ _xargs275732_))))
                      (declare (not safe))
                      (cons __tmp282729 __tmp282728))))
               (declare (not safe))
               (cons __tmp282731 __tmp282727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp282726))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282725
                                          _stx275653_))))
                                  (declare (not safe))
                                  (cons __tmp282724 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp282723 _kwset275720_))))
                    (declare (not safe))
                    (cons '%#begin __tmp282722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282721 '()))))
                                              (declare (not safe))
                                              (cons __tmp282733 __tmp282720))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp282719))))
                                (declare (not safe))
                                (cons __tmp282718 '()))))
                         (declare (not safe))
                         (cons _kwbind275715_ __tmp282717))))
                  (declare (not safe))
                  (cons '%#let-values __tmp282716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282715
                                                    _stx275653_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp282714)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g275672275681_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e275677275738_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275672275681_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e275678275741_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275672275681_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys275744_ _e275678275741_)
                               (_e275679275746_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275672275681_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main275749_ _e275679275746_))
                          (declare (not safe))
                          (_K275676275735_ _main275749_ _keys275744_))
                        (let () (declare (not safe)) (_else275674275689_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275655275663_
                 'gxc#!kw-lambda::t))
              (let* ((_e275659275754_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275655275663_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275660275757_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275655275663_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table275760_ _e275660275757_)
                     (_e275661275762_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275655275663_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch275765_ _e275661275762_))
                (declare (not safe))
                (_K275658275751_ _dispatch275765_ _table275760_))
              (let () (declare (not safe)) (_E275657275667_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx275265_ _args275266_)
        (let _lp275268_ ((_rest275270_ _args275266_)
                         (_pargs275271_ '())
                         (_kwargs275272_ '()))
          (let* ((___stx281869281870_ _rest275270_)
                 (_g275278275330_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx281869281870_)))))
            (let ((___kont281871281872_
                   (lambda (_L275509_ _L275510_)
                     (let ((__tmp282754
                            (let ()
                              (declare (not safe))
                              (cons _L275510_ _pargs275271_))))
                       (declare (not safe))
                       (_lp275268_ _L275509_ __tmp282754 _kwargs275272_))))
                  (___kont281873281874_
                   (lambda (_L275455_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L275455_ _pargs275271_))
                             (reverse _kwargs275272_))))
                  (___kont281875281876_
                   (lambda (_L275402_ _L275403_ _L275404_)
                     (let ((_kw275421_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L275404_))))
                       (if (assq _kw275421_ _kwargs275272_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx275265_
                              _kw275421_))
                           (let ((__tmp282755
                                  (let ((__tmp282756
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw275421_ _L275403_))))
                                    (declare (not safe))
                                    (cons __tmp282756 _kwargs275272_))))
                             (declare (not safe))
                             (_lp275268_
                              _L275402_
                              _pargs275271_
                              __tmp282755))))))
                  (___kont281877281878_
                   (lambda (_L275350_ _L275351_)
                     (let ((__tmp282757
                            (let ()
                              (declare (not safe))
                              (cons _L275351_ _pargs275271_))))
                       (declare (not safe))
                       (_lp275268_ _L275350_ __tmp282757 _kwargs275272_))))
                  (___kont281879281880_
                   (lambda ()
                     (values (reverse _pargs275271_)
                             (reverse _kwargs275272_)))))
              (let* ((_g275277275337_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx281869281870_))
                            (___kont281879281880_)
                            (let () (declare (not safe)) (_g275278275330_)))))
                     (___match281976281977_
                      (lambda (_e275311275370_
                               _hd275310275373_
                               _tl275309275375_
                               _e275314275378_
                               _hd275313275381_
                               _tl275312275383_
                               _e275317275386_
                               _hd275316275389_
                               _tl275315275391_
                               _e275320275394_
                               _hd275319275397_
                               _tl275318275399_)
                        (let ((_L275402_ _tl275318275399_)
                              (_L275403_ _hd275319275397_)
                              (_L275404_ _hd275316275389_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L275404_))
                              (___kont281875281876_
                               _L275402_
                               _L275403_
                               _L275404_)
                              (___kont281877281878_
                               _tl275309275375_
                               _hd275310275373_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx281869281870_))
                    (let ((_e275284275474_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx281869281870_))))
                      (let ((_tl275282275479_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275284275474_)))
                            (_hd275283275477_
                             (let ()
                               (declare (not safe))
                               (##car _e275284275474_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd275283275477_))
                            (let ((_e275287275482_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd275283275477_))))
                              (let ((_tl275285275487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e275287275482_)))
                                    (_hd275286275485_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e275287275482_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd275286275485_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd275286275485_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl275285275487_))
                                            (let ((_e275290275490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl275285275487_))))
                                              (let ((_tl275288275495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e275290275490_)))
                                                    (_hd275289275493_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e275290275490_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd275289275493_))
                                                    (let ((_e275291275498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd275289275493_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e275291275498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl275288275495_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl275282275479_))
                          (let ((_e275294275501_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl275282275479_))))
                            (let ((_tl275292275506_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e275294275501_)))
                                  (_hd275293275504_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e275294275501_))))
                              (___kont281871281872_
                               _tl275292275506_
                               _hd275293275504_)))
                          (___kont281877281878_
                           _tl275282275479_
                           _hd275283275477_))
                      (___kont281877281878_ _tl275282275479_ _hd275283275477_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e275291275498_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275288275495_))
                          (___kont281873281874_ _tl275282275479_)
                          (___kont281877281878_
                           _tl275282275479_
                           _hd275283275477_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275288275495_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl275282275479_))
                              (let ((_e275320275394_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl275282275479_))))
                                (let ((_tl275318275399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e275320275394_)))
                                      (_hd275319275397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e275320275394_))))
                                  (___match281976281977_
                                   _e275284275474_
                                   _hd275283275477_
                                   _tl275282275479_
                                   _e275287275482_
                                   _hd275286275485_
                                   _tl275285275487_
                                   _e275290275490_
                                   _hd275289275493_
                                   _tl275288275495_
                                   _e275320275394_
                                   _hd275319275397_
                                   _tl275318275399_)))
                              (___kont281877281878_
                               _tl275282275479_
                               _hd275283275477_))
                          (___kont281877281878_
                           _tl275282275479_
                           _hd275283275477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl275288275495_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl275282275479_))
                                                            (let ((_e275320275394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl275282275479_))))
                      (let ((_tl275318275399_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275320275394_)))
                            (_hd275319275397_
                             (let ()
                               (declare (not safe))
                               (##car _e275320275394_))))
                        (___match281976281977_
                         _e275284275474_
                         _hd275283275477_
                         _tl275282275479_
                         _e275287275482_
                         _hd275286275485_
                         _tl275285275487_
                         _e275290275490_
                         _hd275289275493_
                         _tl275288275495_
                         _e275320275394_
                         _hd275319275397_
                         _tl275318275399_)))
                    (___kont281877281878_ _tl275282275479_ _hd275283275477_))
                (___kont281877281878_ _tl275282275479_ _hd275283275477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont281877281878_
                                             _tl275282275479_
                                             _hd275283275477_))
                                        (___kont281877281878_
                                         _tl275282275479_
                                         _hd275283275477_))
                                    (___kont281877281878_
                                     _tl275282275479_
                                     _hd275283275477_))))
                            (___kont281877281878_
                             _tl275282275479_
                             _hd275283275477_))))
                    (let () (declare (not safe)) (_g275277275337_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self275261_ _stx275262_ _args275263_)
        (let () (declare (not safe)) (gxc#xform-call% _stx275262_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
