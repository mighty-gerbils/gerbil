(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707740674)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl277130_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp281989 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl277130_ __tmp281989))
           (let ()
             (declare (not safe))
             (table-set! _tbl277130_ '%#call gxc#optimize-call%))
           _tbl277130_))))
    (define gxc#apply-optimize-call
      (lambda (_stx277113_ . _args277115_)
        (let ((__tmp281991
               (lambda ()
                 (declare (not safe))
                 (if (null? _args277115_)
                     (gxc#compile-e__0 _stx277113_)
                     (let ((_arg1277120_ (car _args277115_))
                           (_rest277122_ (cdr _args277115_)))
                       (if (null? _rest277122_)
                           (gxc#compile-e__1 _stx277113_ _arg1277120_)
                           (let ((_arg2277125_ (car _rest277122_))
                                 (_rest277127_ (cdr _rest277122_)))
                             (if (null? _rest277127_)
                                 (gxc#compile-e__2
                                  _stx277113_
                                  _arg1277120_
                                  _arg2277125_)
                                 (apply gxc#compile-e
                                        _stx277113_
                                        _arg1277120_
                                        _arg2277125_
                                        _rest277127_))))))))
              (__tmp281990 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp281991
           gxc#current-compile-methods
           __tmp281990))))
    (define gxc#optimize-call%
      (lambda (_stx276968_)
        (let* ((___stx281739281740_ _stx276968_)
               (_g276971276991_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx281739281740_)))))
          (let ((___kont281741281742_
                 (lambda (_L277035_ _L277036_)
                   (let* ((_rator-id277054_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L277036_)))
                          (_rator-type277056_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id277054_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type277056_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp281992
                                  (##structure-ref
                                   _rator-type277056_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id277054_
                              '" => "
                              _rator-type277056_
                              '" "
                              __tmp281992))
                           (let ((_optimized277059_
                                  (let ((__method281987
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type277056_
                                            'optimize-call))))
                                    (if __method281987
                                        (__method281987
                                         _rator-type277056_
                                         _stx276968_
                                         _L277035_)
                                        (error '"Missing method"
                                               _rator-type277056_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type277056_))
                                 _optimized277059_
                                 (let* ((___stx281721281722_ _optimized277059_)
                                        (_g277062277072_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx281721281722_)))))
                                   (let ((___kont281723281724_
                                          (lambda (_L277092_)
                                            (let ((__tmp281993
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L277092_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp281993
                                               _stx276968_))))
                                         (___kont281725281726_
                                          (lambda () _optimized277059_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx281721281722_))
                                         (let ((_e277067277084_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx281721281722_))))
                                           (let ((_tl277065277089_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e277067277084_)))
                                                 (_hd277066277087_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e277067277084_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd277066277087_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd277066277087_))
                                                     (___kont281723281724_
                                                      _tl277065277089_)
                                                     (___kont281725281726_))
                                                 (___kont281725281726_))))
                                         (___kont281725281726_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type277056_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx276968_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx276968_
                                _rator-type277056_)))))))
                (___kont281743281744_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx276968_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx281739281740_))
                (let ((_e276977277003_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx281739281740_))))
                  (let ((_tl276975277008_
                         (let () (declare (not safe)) (##cdr _e276977277003_)))
                        (_hd276976277006_
                         (let ()
                           (declare (not safe))
                           (##car _e276977277003_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl276975277008_))
                        (let ((_e276980277011_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl276975277008_))))
                          (let ((_tl276978277016_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e276980277011_)))
                                (_hd276979277014_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e276980277011_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd276979277014_))
                                (let ((_e276983277019_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd276979277014_))))
                                  (let ((_tl276981277024_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e276983277019_)))
                                        (_hd276982277022_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e276983277019_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd276982277022_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd276982277022_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276981277024_))
                                                (let ((_e276986277027_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276981277024_))))
                                                  (let ((_tl276984277032_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276986277027_)))
                                                        (_hd276985277030_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276986277027_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276984277032_))
                                                        (___kont281741281742_
                                                         _tl276978277016_
                                                         _hd276985277030_)
                                                        (___kont281743281744_))))
                                                (___kont281743281744_))
                                            (___kont281743281744_))
                                        (___kont281743281744_))))
                                (___kont281743281744_))))
                        (___kont281743281744_))))
                (___kont281743281744_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self276922_ _stx276923_ _args276924_)
        (let* ((_g276926276936_
                (lambda (_g276927276933_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276927276933_))))
               (_g276925276965_
                (lambda (_g276927276939_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276927276939_))
                      (let ((_e276931276941_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276927276939_))))
                        (let ((_hd276930276944_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276931276941_)))
                              (_tl276929276946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276931276941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276929276946_))
                              ((lambda (_L276949_)
                                 (let* ((_klass276960_
                                         (let ((__tmp281994
                                                (##structure-ref
                                                 _self276922_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276923_
                                            __tmp281994)))
                                        (_object276962_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276949_))))
                                   (if (##structure-ref
                                        _klass276960_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282010
                                              (let ((__tmp282011
                                                     (let ((__tmp282013
                                                            (let ((__tmp282014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282015
                                  (##structure-ref
                                   _klass276960_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282015 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282014)))
                   (__tmp282012
                    (let () (declare (not safe)) (cons _object276962_ '()))))
               (declare (not safe))
               (cons __tmp282013 __tmp282012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp282011))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282010
                                          _stx276923_))
                                       (if (##structure-ref
                                            _klass276960_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282004
                                                  (let ((__tmp282005
                                                         (let ((__tmp282007
                                                                (let ((__tmp282008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282009
                                      (##structure-ref
                                       _klass276960_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282009 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282008)))
                       (__tmp282006
                        (let ()
                          (declare (not safe))
                          (cons _object276962_ '()))))
                   (declare (not safe))
                   (cons __tmp282007 __tmp282006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp282005))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282004
                                              _stx276923_))
                                           (let ((__tmp281995
                                                  (let ((__tmp281996
                                                         (let ((__tmp282002
                                                                (let ((__tmp282003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282003)))
                       (__tmp281997
                        (let ((__tmp281999
                               (let ((__tmp282000
                                      (let ((__tmp282001
                                             (##structure-ref
                                              _self276922_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp282001 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282000)))
                              (__tmp281998
                               (let ()
                                 (declare (not safe))
                                 (cons _object276962_ '()))))
                          (declare (not safe))
                          (cons __tmp281999 __tmp281998))))
                   (declare (not safe))
                   (cons __tmp282002 __tmp281997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp281996))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp281995
                                              _stx276923_))))))
                               _hd276930276944_)
                              (let ()
                                (declare (not safe))
                                (_g276926276936_ _g276927276939_)))))
                      (let ()
                        (declare (not safe))
                        (_g276926276936_ _g276927276939_))))))
          (declare (not safe))
          (_g276925276965_ _args276924_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t281700)
        (let ((__id281701
               (let ((__tmp281702
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281700 'id))))
                 (if __tmp281702 __tmp281702 (error '"Unknown slot" 'id)))))
          (lambda (_self276922_ _stx276923_ _args276924_)
            (let* ((_g276926276936_
                    (lambda (_g276927276933_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276927276933_))))
                   (_g276925276965_
                    (lambda (_g276927276939_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276927276939_))
                          (let ((_e276931276941_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276927276939_))))
                            (let ((_hd276930276944_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276931276941_)))
                                  (_tl276929276946_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276931276941_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276929276946_))
                                  ((lambda (_L276949_)
                                     (let* ((_klass276960_
                                             (let ((__tmp282016
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276922_
                                                       __id281701
                                                       __t281700
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276923_
                                                __tmp282016)))
                                            (_object276962_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276949_))))
                                       (if (##structure-ref
                                            _klass276960_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282032
                                                  (let ((__tmp282033
                                                         (let ((__tmp282035
                                                                (let ((__tmp282036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282037
                                      (##structure-ref
                                       _klass276960_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp282037 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp282036)))
                       (__tmp282034
                        (let ()
                          (declare (not safe))
                          (cons _object276962_ '()))))
                   (declare (not safe))
                   (cons __tmp282035 __tmp282034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp282033))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282032
                                              _stx276923_))
                                           (if (##structure-ref
                                                _klass276960_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282026
                                                      (let ((__tmp282027
                                                             (let ((__tmp282029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282030
                                   (let ((__tmp282031
                                          (##structure-ref
                                           _klass276960_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282031 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp282030)))
                           (__tmp282028
                            (let ()
                              (declare (not safe))
                              (cons _object276962_ '()))))
                       (declare (not safe))
                       (cons __tmp282029 __tmp282028))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp282027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282026
                                                  _stx276923_))
                                               (let ((__tmp282017
                                                      (let ((__tmp282018
                                                             (let ((__tmp282024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282025
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282025)))
                           (__tmp282019
                            (let ((__tmp282021
                                   (let ((__tmp282022
                                          (let ((__tmp282023
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self276922_
                                                    __id281701
                                                    __t281700
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp282023 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp282022)))
                                  (__tmp282020
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276962_ '()))))
                              (declare (not safe))
                              (cons __tmp282021 __tmp282020))))
                       (declare (not safe))
                       (cons __tmp282024 __tmp282019))))
                (declare (not safe))
                (cons '%#call __tmp282018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282017
                                                  _stx276923_))))))
                                   _hd276930276944_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276926276936_ _g276927276939_)))))
                          (let ()
                            (declare (not safe))
                            (_g276926276936_ _g276927276939_))))))
              (declare (not safe))
              (_g276925276965_ _args276924_))))))
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
      (lambda (_self276653_ _stx276654_ _args276655_)
        (let* ((_klass276657_
                (let ((__tmp282038
                       (##structure-ref _self276653_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx276654_ __tmp282038)))
               (_fields276659_
                (length (##structure-ref _klass276657_ '5 gxc#!class::t '#f)))
               (_args276661_ (map gxc#compile-e _args276655_))
               (_inline-make-object276663_
                (let ((__tmp282039
                       (let ((__tmp282045
                              (let ((__tmp282046
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282046)))
                             (__tmp282040
                              (let ((__tmp282042
                                     (let ((__tmp282043
                                            (let ((__tmp282044
                                                   (##structure-ref
                                                    _self276653_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282044 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282043)))
                                    (__tmp282041
                                     (make-list _fields276659_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp282042 __tmp282041))))
                         (declare (not safe))
                         (cons __tmp282045 __tmp282040))))
                  (declare (not safe))
                  (cons '%#call __tmp282039))))
          (let ((_$e276666_
                 (##structure-ref _klass276657_ '6 gxc#!class::t '#f)))
            (if _$e276666_
                ((lambda (_ctor276669_)
                   (let ((_$obj276671_
                          (let ((__tmp282108 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp282108)))
                         (_ctor-impl276672_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass276657_
                             _ctor276669_))))
                     (let ((__tmp282109
                            (let ((__tmp282110
                                   (let ((__tmp282175
                                          (let ((__tmp282176
                                                 (let ((__tmp282178
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276671_
                                                                '())))
                                                       (__tmp282177
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object276663_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp282178
                                                         __tmp282177))))
                                            (declare (not safe))
                                            (cons __tmp282176 '())))
                                         (__tmp282111
                                          (let ((__tmp282112
                                                 (let ((__tmp282113
                                                        (let ((__tmp282117
                                                               (if _ctor-impl276672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282169
                                  (let ((__tmp282173
                                         (let ((__tmp282174
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl276672_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282174)))
                                        (__tmp282170
                                         (let ((__tmp282171
                                                (let ((__tmp282172
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276671_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282172))))
                                           (declare (not safe))
                                           (cons __tmp282171 _args276661_))))
                                    (declare (not safe))
                                    (cons __tmp282173 __tmp282170))))
                             (declare (not safe))
                             (cons '%#call __tmp282169))
                           (let* ((_$ctor276674_
                                   (let ((__tmp282118 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp282118)))
                                  (__tmp282119
                                   (let ((__tmp282154
                                          (let ((__tmp282155
                                                 (let ((__tmp282168
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor276674_
                                                                '())))
                                                       (__tmp282156
                                                        (let ((__tmp282157
                                                               (let ((__tmp282158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282166
                                     (let ((__tmp282167
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282167)))
                                    (__tmp282159
                                     (let ((__tmp282163
                                            (let ((__tmp282164
                                                   (let ((__tmp282165
                                                          (##structure-ref
                                                           _self276653_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp282165 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282164)))
                                           (__tmp282160
                                            (let ((__tmp282161
                                                   (let ((__tmp282162
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor276669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp282162))))
                                              (declare (not safe))
                                              (cons __tmp282161 '()))))
                                       (declare (not safe))
                                       (cons __tmp282163 __tmp282160))))
                                (declare (not safe))
                                (cons __tmp282166 __tmp282159))))
                         (declare (not safe))
                         (cons '%#call __tmp282158))))
                  (declare (not safe))
                  (cons __tmp282157 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282168
                                                         __tmp282156))))
                                            (declare (not safe))
                                            (cons __tmp282155 '())))
                                         (__tmp282120
                                          (let ((__tmp282121
                                                 (let ((__tmp282122
                                                        (let ((__tmp282152
                                                               (let ((__tmp282153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor276674_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282153)))
                      (__tmp282123
                       (let ((__tmp282145
                              (let ((__tmp282146
                                     (let ((__tmp282150
                                            (let ((__tmp282151
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor276674_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282151)))
                                           (__tmp282147
                                            (let ((__tmp282148
                                                   (let ((__tmp282149
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282149))))
                                              (declare (not safe))
                                              (cons __tmp282148
                                                    _args276661_))))
                                       (declare (not safe))
                                       (cons __tmp282150 __tmp282147))))
                                (declare (not safe))
                                (cons '%#call __tmp282146)))
                             (__tmp282124
                              (let ((__tmp282125
                                     (let ((__tmp282126
                                            (let ((__tmp282143
                                                   (let ((__tmp282144
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282144)))
                                                  (__tmp282127
                                                   (let ((__tmp282141
                                                          (let ((__tmp282142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp282142)))
                 (__tmp282128
                  (let ((__tmp282139
                         (let ((__tmp282140
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282140)))
                        (__tmp282129
                         (let ((__tmp282136
                                (let ((__tmp282137
                                       (let ((__tmp282138
                                              (##structure-ref
                                               _self276653_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282138 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282137)))
                               (__tmp282130
                                (let ((__tmp282134
                                       (let ((__tmp282135
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282135)))
                                      (__tmp282131
                                       (let ((__tmp282132
                                              (let ((__tmp282133
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor276669_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp282133))))
                                         (declare (not safe))
                                         (cons __tmp282132 '()))))
                                  (declare (not safe))
                                  (cons __tmp282134 __tmp282131))))
                           (declare (not safe))
                           (cons __tmp282136 __tmp282130))))
                    (declare (not safe))
                    (cons __tmp282139 __tmp282129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282141
                                                           __tmp282128))))
                                              (declare (not safe))
                                              (cons __tmp282143 __tmp282127))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282126))))
                                (declare (not safe))
                                (cons __tmp282125 '()))))
                         (declare (not safe))
                         (cons __tmp282145 __tmp282124))))
                  (declare (not safe))
                  (cons __tmp282152 __tmp282123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp282122))))
                                            (declare (not safe))
                                            (cons __tmp282121 '()))))
                                     (declare (not safe))
                                     (cons __tmp282154 __tmp282120))))
                             (declare (not safe))
                             (cons '%#let-values __tmp282119))))
                      (__tmp282114
                       (let ((__tmp282115
                              (let ((__tmp282116
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276671_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282116))))
                         (declare (not safe))
                         (cons __tmp282115 '()))))
                  (declare (not safe))
                  (cons __tmp282117 __tmp282114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp282113))))
                                            (declare (not safe))
                                            (cons __tmp282112 '()))))
                                     (declare (not safe))
                                     (cons __tmp282175 __tmp282111))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282110))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282109 _stx276654_))))
                 _$e276666_)
                (if (##structure-ref _klass276657_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args276661_) _fields276659_)
                        (let ((__tmp282100
                               (let ((__tmp282101
                                      (let ((__tmp282106
                                             (let ((__tmp282107
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282107)))
                                            (__tmp282102
                                             (let ((__tmp282103
                                                    (let ((__tmp282104
                                                           (let ((__tmp282105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self276653_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp282105 '()))))
              (declare (not safe))
              (cons '%#ref __tmp282104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282103
                                                     _args276661_))))
                                        (declare (not safe))
                                        (cons __tmp282106 __tmp282102))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282101))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282100 _stx276654_))
                        (let ((__tmp282099
                               (##structure-ref
                                _self276653_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp282098
                               (length (##structure-ref
                                        _klass276657_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx276654_
                           __tmp282099
                           __tmp282098)))
                    (let ((_$obj276676_
                           (let ((__tmp282047 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp282047))))
                      (let _lp276678_ ((_rest276680_ _args276661_)
                                       (_initializers276681_ '()))
                        (let* ((___stx281777281778_ _rest276680_)
                               (_g276685276706_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx281777281778_)))))
                          (let ((___kont281779281780_
                                 (lambda (_L276760_ _L276761_ _L276762_)
                                   (let* ((_slot276792_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L276762_))))
                                          (_off276794_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass276657_
                                              _slot276792_))))
                                     (if _off276794_
                                         (let ((__tmp282049
                                                (let ((__tmp282050
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off276794_
                                                               _L276761_))))
                                                  (declare (not safe))
                                                  (cons __tmp282050
                                                        _initializers276681_))))
                                           (declare (not safe))
                                           (_lp276678_ _L276760_ __tmp282049))
                                         (let ((__tmp282048
                                                (##structure-ref
                                                 _self276653_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx276654_
                                            __tmp282048
                                            _slot276792_))))))
                                (___kont281781281782_
                                 (lambda ()
                                   (let ((__tmp282051
                                          (let ((__tmp282052
                                                 (let ((__tmp282075
                                                        (let ((__tmp282076
                                                               (let ((__tmp282078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276676_ '())))
                             (__tmp282077
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276663_ '()))))
                         (declare (not safe))
                         (cons __tmp282078 __tmp282077))))
                  (declare (not safe))
                  (cons __tmp282076 '())))
               (__tmp282053
                (let ((__tmp282054
                       (let ((__tmp282055
                              (let ((__tmp282072
                                     (let ((__tmp282073
                                            (let ((__tmp282074
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276676_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282074))))
                                       (declare (not safe))
                                       (cons __tmp282073 '())))
                                    (__tmp282056
                                     (let ((__tmp282057
                                            (lambda (_i276720_ _r276721_)
                                              (let ((__tmp282058
                                                     (let ((__tmp282059
                                                            (let ((__tmp282069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282070
                                  (let ((__tmp282071
                                         (##structure-ref
                                          _self276653_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp282071 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282070)))
                          (__tmp282060
                           (let ((__tmp282066
                                  (let ((__tmp282067
                                         (let ((__tmp282068 (car _i276720_)))
                                           (declare (not safe))
                                           (cons __tmp282068 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282067)))
                                 (__tmp282061
                                  (let ((__tmp282064
                                         (let ((__tmp282065
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276676_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282065)))
                                        (__tmp282062
                                         (let ((__tmp282063 (cdr _i276720_)))
                                           (declare (not safe))
                                           (cons __tmp282063 '()))))
                                    (declare (not safe))
                                    (cons __tmp282064 __tmp282062))))
                             (declare (not safe))
                             (cons __tmp282066 __tmp282061))))
                      (declare (not safe))
                      (cons __tmp282069 __tmp282060))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp282059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282058
                                                      _r276721_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp282057
                                               '()
                                               _initializers276681_))))
                                (declare (not safe))
                                (foldr1 cons __tmp282072 __tmp282056))))
                         (declare (not safe))
                         (cons '%#begin __tmp282055))))
                  (declare (not safe))
                  (cons __tmp282054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282075
                                                         __tmp282053))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282052))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282051
                                      _stx276654_))))
                                (___kont281783281784_
                                 (lambda ()
                                   (let ((__tmp282079
                                          (let ((__tmp282080
                                                 (let ((__tmp282094
                                                        (let ((__tmp282095
                                                               (let ((__tmp282097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj276676_ '())))
                             (__tmp282096
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object276663_ '()))))
                         (declare (not safe))
                         (cons __tmp282097 __tmp282096))))
                  (declare (not safe))
                  (cons __tmp282095 '())))
               (__tmp282081
                (let ((__tmp282082
                       (let ((__tmp282083
                              (let ((__tmp282087
                                     (let ((__tmp282088
                                            (let ((__tmp282092
                                                   (let ((__tmp282093
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282093)))
                                                  (__tmp282089
                                                   (let ((__tmp282090
                                                          (let ((__tmp282091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276676_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282090
                                                           _args276661_))))
                                              (declare (not safe))
                                              (cons __tmp282092 __tmp282089))))
                                       (declare (not safe))
                                       (cons '%#call __tmp282088)))
                                    (__tmp282084
                                     (let ((__tmp282085
                                            (let ((__tmp282086
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj276676_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282086))))
                                       (declare (not safe))
                                       (cons __tmp282085 '()))))
                                (declare (not safe))
                                (cons __tmp282087 __tmp282084))))
                         (declare (not safe))
                         (cons '%#begin __tmp282083))))
                  (declare (not safe))
                  (cons __tmp282082 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282094
                                                         __tmp282081))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp282080))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282079
                                      _stx276654_)))))
                            (let* ((_g276683276723_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx281777281778_))
                                          (___kont281781281782_)
                                          (___kont281783281784_))))
                                   (___match281814281815_
                                    (lambda (_e276692276728_
                                             _hd276691276731_
                                             _tl276690276733_
                                             _e276695276736_
                                             _hd276694276739_
                                             _tl276693276741_
                                             _e276698276744_
                                             _hd276697276747_
                                             _tl276696276749_
                                             _e276701276752_
                                             _hd276700276755_
                                             _tl276699276757_)
                                      (let ((_L276760_ _tl276699276757_)
                                            (_L276761_ _hd276700276755_)
                                            (_L276762_ _hd276697276747_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L276762_))
                                            (___kont281779281780_
                                             _L276760_
                                             _L276761_
                                             _L276762_)
                                            (___kont281783281784_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx281777281778_))
                                  (let ((_e276692276728_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx281777281778_))))
                                    (let ((_tl276690276733_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276692276728_)))
                                          (_hd276691276731_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276692276728_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd276691276731_))
                                          (let ((_e276695276736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd276691276731_))))
                                            (let ((_tl276693276741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276695276736_)))
                                                  (_hd276694276739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276695276736_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd276694276739_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd276694276739_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276693276741_))
                                                          (let ((_e276698276744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276693276741_))))
                    (let ((_tl276696276749_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276698276744_)))
                          (_hd276697276747_
                           (let ()
                             (declare (not safe))
                             (##car _e276698276744_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl276696276749_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276690276733_))
                              (let ((_e276701276752_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276690276733_))))
                                (let ((_tl276699276757_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276701276752_)))
                                      (_hd276700276755_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276701276752_))))
                                  (___match281814281815_
                                   _e276692276728_
                                   _hd276691276731_
                                   _tl276690276733_
                                   _e276695276736_
                                   _hd276694276739_
                                   _tl276693276741_
                                   _e276698276744_
                                   _hd276697276747_
                                   _tl276696276749_
                                   _e276701276752_
                                   _hd276700276755_
                                   _tl276699276757_)))
                              (___kont281783281784_))
                          (___kont281783281784_))))
                  (___kont281783281784_))
              (___kont281783281784_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont281783281784_))))
                                          (___kont281783281784_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276683276723_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t281703)
        (let ((__id281704
               (let ((__tmp281705
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281703 'id))))
                 (if __tmp281705 __tmp281705 (error '"Unknown slot" 'id)))))
          (lambda (_self276653_ _stx276654_ _args276655_)
            (let* ((_klass276657_
                    (let ((__tmp282179
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self276653_
                              __id281704
                              __t281703
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx276654_ __tmp282179)))
                   (_fields276659_
                    (length (##structure-ref
                             _klass276657_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args276661_ (map gxc#compile-e _args276655_))
                   (_inline-make-object276663_
                    (let ((__tmp282180
                           (let ((__tmp282186
                                  (let ((__tmp282187
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282187)))
                                 (__tmp282181
                                  (let ((__tmp282183
                                         (let ((__tmp282184
                                                (let ((__tmp282185
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276653_
                                                          __id281704
                                                          __t281703
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282185 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282184)))
                                        (__tmp282182
                                         (make-list
                                          _fields276659_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp282183 __tmp282182))))
                             (declare (not safe))
                             (cons __tmp282186 __tmp282181))))
                      (declare (not safe))
                      (cons '%#call __tmp282180))))
              (let ((_$e276666_
                     (##structure-ref _klass276657_ '6 gxc#!class::t '#f)))
                (if _$e276666_
                    ((lambda (_ctor276669_)
                       (let ((_$obj276671_
                              (let ((__tmp282249 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp282249)))
                             (_ctor-impl276672_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass276657_
                                 _ctor276669_))))
                         (let ((__tmp282250
                                (let ((__tmp282251
                                       (let ((__tmp282316
                                              (let ((__tmp282317
                                                     (let ((__tmp282319
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj276671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282318
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object276663_ '()))))
               (declare (not safe))
               (cons __tmp282319 __tmp282318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282317 '())))
                                             (__tmp282252
                                              (let ((__tmp282253
                                                     (let ((__tmp282254
                                                            (let ((__tmp282258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl276672_
                               (let ((__tmp282310
                                      (let ((__tmp282314
                                             (let ((__tmp282315
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl276672_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282315)))
                                            (__tmp282311
                                             (let ((__tmp282312
                                                    (let ((__tmp282313
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj276671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282312
                                                     _args276661_))))
                                        (declare (not safe))
                                        (cons __tmp282314 __tmp282311))))
                                 (declare (not safe))
                                 (cons '%#call __tmp282310))
                               (let* ((_$ctor276674_
                                       (let ((__tmp282259
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp282259)))
                                      (__tmp282260
                                       (let ((__tmp282295
                                              (let ((__tmp282296
                                                     (let ((__tmp282309
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor276674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp282297
                    (let ((__tmp282298
                           (let ((__tmp282299
                                  (let ((__tmp282307
                                         (let ((__tmp282308
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282308)))
                                        (__tmp282300
                                         (let ((__tmp282304
                                                (let ((__tmp282305
                                                       (let ((__tmp282306
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self276653_
                         __id281704
                         __t281703
                         '#f))))
                 (declare (not safe))
                 (cons __tmp282306 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282305)))
                                               (__tmp282301
                                                (let ((__tmp282302
                                                       (let ((__tmp282303
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor276669_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp282303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282302 '()))))
                                           (declare (not safe))
                                           (cons __tmp282304 __tmp282301))))
                                    (declare (not safe))
                                    (cons __tmp282307 __tmp282300))))
                             (declare (not safe))
                             (cons '%#call __tmp282299))))
                      (declare (not safe))
                      (cons __tmp282298 '()))))
               (declare (not safe))
               (cons __tmp282309 __tmp282297))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282296 '())))
                                             (__tmp282261
                                              (let ((__tmp282262
                                                     (let ((__tmp282263
                                                            (let ((__tmp282293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282294
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor276674_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282294)))
                          (__tmp282264
                           (let ((__tmp282286
                                  (let ((__tmp282287
                                         (let ((__tmp282291
                                                (let ((__tmp282292
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor276674_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282292)))
                                               (__tmp282288
                                                (let ((__tmp282289
                                                       (let ((__tmp282290
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276671_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282289
                                                        _args276661_))))
                                           (declare (not safe))
                                           (cons __tmp282291 __tmp282288))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282287)))
                                 (__tmp282265
                                  (let ((__tmp282266
                                         (let ((__tmp282267
                                                (let ((__tmp282284
                                                       (let ((__tmp282285
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282285)))
              (__tmp282268
               (let ((__tmp282282
                      (let ((__tmp282283
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp282283)))
                     (__tmp282269
                      (let ((__tmp282280
                             (let ((__tmp282281
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282281)))
                            (__tmp282270
                             (let ((__tmp282277
                                    (let ((__tmp282278
                                           (let ((__tmp282279
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276653_
                                                     __id281704
                                                     __t281703
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282279 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282278)))
                                   (__tmp282271
                                    (let ((__tmp282275
                                           (let ((__tmp282276
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282276)))
                                          (__tmp282272
                                           (let ((__tmp282273
                                                  (let ((__tmp282274
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor276669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp282274))))
                                             (declare (not safe))
                                             (cons __tmp282273 '()))))
                                      (declare (not safe))
                                      (cons __tmp282275 __tmp282272))))
                               (declare (not safe))
                               (cons __tmp282277 __tmp282271))))
                        (declare (not safe))
                        (cons __tmp282280 __tmp282270))))
                 (declare (not safe))
                 (cons __tmp282282 __tmp282269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282284
                                                        __tmp282268))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282267))))
                                    (declare (not safe))
                                    (cons __tmp282266 '()))))
                             (declare (not safe))
                             (cons __tmp282286 __tmp282265))))
                      (declare (not safe))
                      (cons __tmp282293 __tmp282264))))
               (declare (not safe))
               (cons '%#if __tmp282263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282262 '()))))
                                         (declare (not safe))
                                         (cons __tmp282295 __tmp282261))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp282260))))
                          (__tmp282255
                           (let ((__tmp282256
                                  (let ((__tmp282257
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj276671_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282257))))
                             (declare (not safe))
                             (cons __tmp282256 '()))))
                      (declare (not safe))
                      (cons __tmp282258 __tmp282255))))
               (declare (not safe))
               (cons '%#begin __tmp282254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282253 '()))))
                                         (declare (not safe))
                                         (cons __tmp282316 __tmp282252))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282251))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282250 _stx276654_))))
                     _$e276666_)
                    (if (##structure-ref _klass276657_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args276661_) _fields276659_)
                            (let ((__tmp282241
                                   (let ((__tmp282242
                                          (let ((__tmp282247
                                                 (let ((__tmp282248
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282248)))
                                                (__tmp282243
                                                 (let ((__tmp282244
                                                        (let ((__tmp282245
                                                               (let ((__tmp282246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self276653_
                                 __id281704
                                 __t281703
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp282246 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282244
                                                         _args276661_))))
                                            (declare (not safe))
                                            (cons __tmp282247 __tmp282243))))
                                     (declare (not safe))
                                     (cons '%#call __tmp282242))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp282241 _stx276654_))
                            (let ((__tmp282240
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self276653_
                                      __id281704
                                      __t281703
                                      '#f)))
                                  (__tmp282239
                                   (length (##structure-ref
                                            _klass276657_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx276654_
                               __tmp282240
                               __tmp282239)))
                        (let ((_$obj276676_
                               (let ((__tmp282188 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp282188))))
                          (let _lp276678_ ((_rest276680_ _args276661_)
                                           (_initializers276681_ '()))
                            (let* ((___stx281819281820_ _rest276680_)
                                   (_g276685276706_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx281819281820_)))))
                              (let ((___kont281821281822_
                                     (lambda (_L276760_ _L276761_ _L276762_)
                                       (let* ((_slot276792_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L276762_))))
                                              (_off276794_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass276657_
                                                  _slot276792_))))
                                         (if _off276794_
                                             (let ((__tmp282190
                                                    (let ((__tmp282191
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off276794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L276761_))))
              (declare (not safe))
              (cons __tmp282191 _initializers276681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp276678_
                                                _L276760_
                                                __tmp282190))
                                             (let ((__tmp282189
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276653_
                                                       __id281704
                                                       __t281703
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx276654_
                                                __tmp282189
                                                _slot276792_))))))
                                    (___kont281823281824_
                                     (lambda ()
                                       (let ((__tmp282192
                                              (let ((__tmp282193
                                                     (let ((__tmp282216
                                                            (let ((__tmp282217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282219
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276676_ '())))
                                 (__tmp282218
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276663_ '()))))
                             (declare (not safe))
                             (cons __tmp282219 __tmp282218))))
                      (declare (not safe))
                      (cons __tmp282217 '())))
                   (__tmp282194
                    (let ((__tmp282195
                           (let ((__tmp282196
                                  (let ((__tmp282213
                                         (let ((__tmp282214
                                                (let ((__tmp282215
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276676_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282215))))
                                           (declare (not safe))
                                           (cons __tmp282214 '())))
                                        (__tmp282197
                                         (let ((__tmp282198
                                                (lambda (_i276720_ _r276721_)
                                                  (let ((__tmp282199
                                                         (let ((__tmp282200
                                                                (let ((__tmp282210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282211
                                      (let ((__tmp282212
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self276653_
                                                __id281704
                                                __t281703
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp282212 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp282211)))
                              (__tmp282201
                               (let ((__tmp282207
                                      (let ((__tmp282208
                                             (let ((__tmp282209
                                                    (car _i276720_)))
                                               (declare (not safe))
                                               (cons __tmp282209 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282208)))
                                     (__tmp282202
                                      (let ((__tmp282205
                                             (let ((__tmp282206
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276676_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282206)))
                                            (__tmp282203
                                             (let ((__tmp282204
                                                    (cdr _i276720_)))
                                               (declare (not safe))
                                               (cons __tmp282204 '()))))
                                        (declare (not safe))
                                        (cons __tmp282205 __tmp282203))))
                                 (declare (not safe))
                                 (cons __tmp282207 __tmp282202))))
                          (declare (not safe))
                          (cons __tmp282210 __tmp282201))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp282200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282199
                                                          _r276721_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp282198
                                                   '()
                                                   _initializers276681_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp282213 __tmp282197))))
                             (declare (not safe))
                             (cons '%#begin __tmp282196))))
                      (declare (not safe))
                      (cons __tmp282195 '()))))
               (declare (not safe))
               (cons __tmp282216 __tmp282194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282193))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282192
                                          _stx276654_))))
                                    (___kont281825281826_
                                     (lambda ()
                                       (let ((__tmp282220
                                              (let ((__tmp282221
                                                     (let ((__tmp282235
                                                            (let ((__tmp282236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282238
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj276676_ '())))
                                 (__tmp282237
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object276663_ '()))))
                             (declare (not safe))
                             (cons __tmp282238 __tmp282237))))
                      (declare (not safe))
                      (cons __tmp282236 '())))
                   (__tmp282222
                    (let ((__tmp282223
                           (let ((__tmp282224
                                  (let ((__tmp282228
                                         (let ((__tmp282229
                                                (let ((__tmp282233
                                                       (let ((__tmp282234
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282234)))
              (__tmp282230
               (let ((__tmp282231
                      (let ((__tmp282232
                             (let ()
                               (declare (not safe))
                               (cons _$obj276676_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282232))))
                 (declare (not safe))
                 (cons __tmp282231 _args276661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282233
                                                        __tmp282230))))
                                           (declare (not safe))
                                           (cons '%#call __tmp282229)))
                                        (__tmp282225
                                         (let ((__tmp282226
                                                (let ((__tmp282227
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj276676_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282227))))
                                           (declare (not safe))
                                           (cons __tmp282226 '()))))
                                    (declare (not safe))
                                    (cons __tmp282228 __tmp282225))))
                             (declare (not safe))
                             (cons '%#begin __tmp282224))))
                      (declare (not safe))
                      (cons __tmp282223 '()))))
               (declare (not safe))
               (cons __tmp282235 __tmp282222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp282221))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282220
                                          _stx276654_)))))
                                (let* ((_g276683276723_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx281819281820_))
                                              (___kont281823281824_)
                                              (___kont281825281826_))))
                                       (___match281856281857_
                                        (lambda (_e276692276728_
                                                 _hd276691276731_
                                                 _tl276690276733_
                                                 _e276695276736_
                                                 _hd276694276739_
                                                 _tl276693276741_
                                                 _e276698276744_
                                                 _hd276697276747_
                                                 _tl276696276749_
                                                 _e276701276752_
                                                 _hd276700276755_
                                                 _tl276699276757_)
                                          (let ((_L276760_ _tl276699276757_)
                                                (_L276761_ _hd276700276755_)
                                                (_L276762_ _hd276697276747_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L276762_))
                                                (___kont281821281822_
                                                 _L276760_
                                                 _L276761_
                                                 _L276762_)
                                                (___kont281825281826_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx281819281820_))
                                      (let ((_e276692276728_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx281819281820_))))
                                        (let ((_tl276690276733_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276692276728_)))
                                              (_hd276691276731_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276692276728_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd276691276731_))
                                              (let ((_e276695276736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd276691276731_))))
                                                (let ((_tl276693276741_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276695276736_)))
                                                      (_hd276694276739_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276695276736_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd276694276739_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd276694276739_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl276693276741_))
                      (let ((_e276698276744_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl276693276741_))))
                        (let ((_tl276696276749_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276698276744_)))
                              (_hd276697276747_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276698276744_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276696276749_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276690276733_))
                                  (let ((_e276701276752_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276690276733_))))
                                    (let ((_tl276699276757_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276701276752_)))
                                          (_hd276700276755_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276701276752_))))
                                      (___match281856281857_
                                       _e276692276728_
                                       _hd276691276731_
                                       _tl276690276733_
                                       _e276695276736_
                                       _hd276694276739_
                                       _tl276693276741_
                                       _e276698276744_
                                       _hd276697276747_
                                       _tl276696276749_
                                       _e276701276752_
                                       _hd276700276755_
                                       _tl276699276757_)))
                                  (___kont281825281826_))
                              (___kont281825281826_))))
                      (___kont281825281826_))
                  (___kont281825281826_))
              (___kont281825281826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont281825281826_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g276683276723_))))))))))))))))
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
      (lambda (_self276476_ _stx276477_ _args276478_)
        (let* ((_g276480276490_
                (lambda (_g276481276487_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276481276487_))))
               (_g276479276528_
                (lambda (_g276481276493_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276481276493_))
                      (let ((_e276485276495_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276481276493_))))
                        (let ((_hd276484276498_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276485276495_)))
                              (_tl276483276500_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276485276495_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl276483276500_))
                              ((lambda (_L276503_)
                                 (let* ((_klass276514_
                                         (let ((__tmp282320
                                                (##structure-ref
                                                 _self276476_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx276477_
                                            __tmp282320)))
                                        (_field276516_
                                         (let ((__tmp282321
                                                (##structure-ref
                                                 _self276476_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass276514_
                                            __tmp282321)))
                                        (_object276518_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L276503_))))
                                   (if (##structure-ref
                                        _klass276514_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp282398
                                              (let ((__tmp282407
                                                     (if (##structure-ref
                                                          _self276476_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp282399
                                                     (let ((__tmp282404
                                                            (let ((__tmp282405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282406
                                  (##structure-ref
                                   _self276476_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp282406 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282405)))
                   (__tmp282400
                    (let ((__tmp282402
                           (let ((__tmp282403
                                  (let ()
                                    (declare (not safe))
                                    (cons _field276516_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282403)))
                          (__tmp282401
                           (let ()
                             (declare (not safe))
                             (cons _object276518_ '()))))
                      (declare (not safe))
                      (cons __tmp282402 __tmp282401))))
               (declare (not safe))
               (cons __tmp282404 __tmp282400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp282407
                                                      __tmp282399))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282398
                                          _stx276477_))
                                       (if (##structure-ref
                                            _klass276514_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282388
                                                  (let ((__tmp282397
                                                         (if (##structure-ref
                                                              _self276476_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp282389
                                                         (let ((__tmp282394
                                                                (let ((__tmp282395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282396
                                      (##structure-ref
                                       _self276476_
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
                                        (cons _field276516_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282393)))
                              (__tmp282391
                               (let ()
                                 (declare (not safe))
                                 (cons _object276518_ '()))))
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
                                              _stx276477_))
                                           (let ((_$e276521_
                                                  (let ((__tmp282322
                                                         (##structure-ref
                                                          _self276476_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass276514_
                                                     __tmp282322))))
                                             (if _$e276521_
                                                 ((lambda (_klass276524_)
                                                    (let ((__tmp282378
                                                           (let ((__tmp282387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self276476_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp282379
                          (let ((__tmp282384
                                 (let ((__tmp282385
                                        (let ((__tmp282386
                                               (##structure-ref
                                                _self276476_
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
                                                 (cons _field276516_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp282383)))
                                       (__tmp282381
                                        (let ()
                                          (declare (not safe))
                                          (cons _object276518_ '()))))
                                   (declare (not safe))
                                   (cons __tmp282382 __tmp282381))))
                            (declare (not safe))
                            (cons __tmp282384 __tmp282380))))
                     (declare (not safe))
                     (cons __tmp282387 __tmp282379))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp282378 _stx276477_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e276521_)
                                                 (if (##structure-ref
                                                      _self276476_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp282332
                                                            (let* ((_$obj276526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282333 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp282333)))
                           (__tmp282334
                            (let ((__tmp282374
                                   (let ((__tmp282375
                                          (let ((__tmp282377
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj276526_ '())))
                                                (__tmp282376
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object276518_ '()))))
                                            (declare (not safe))
                                            (cons __tmp282377 __tmp282376))))
                                     (declare (not safe))
                                     (cons __tmp282375 '())))
                                  (__tmp282335
                                   (let ((__tmp282336
                                          (let ((__tmp282337
                                                 (let ((__tmp282366
                                                        (let ((__tmp282367
                                                               (let ((__tmp282371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282372
                                     (let ((__tmp282373
                                            (##structure-ref
                                             _klass276514_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp282373 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp282372)))
                             (__tmp282368
                              (let ((__tmp282369
                                     (let ((__tmp282370
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj276526_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282370))))
                                (declare (not safe))
                                (cons __tmp282369 '()))))
                         (declare (not safe))
                         (cons __tmp282371 __tmp282368))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp282367)))
               (__tmp282338
                (let ((__tmp282355
                       (let ((__tmp282356
                              (let ((__tmp282363
                                     (let ((__tmp282364
                                            (let ((__tmp282365
                                                   (##structure-ref
                                                    _self276476_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp282365 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp282364)))
                                    (__tmp282357
                                     (let ((__tmp282361
                                            (let ((__tmp282362
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field276516_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282362)))
                                           (__tmp282358
                                            (let ((__tmp282359
                                                   (let ((__tmp282360
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj276526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282360))))
                                              (declare (not safe))
                                              (cons __tmp282359 '()))))
                                       (declare (not safe))
                                       (cons __tmp282361 __tmp282358))))
                                (declare (not safe))
                                (cons __tmp282363 __tmp282357))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp282356)))
                      (__tmp282339
                       (let ((__tmp282340
                              (let ((__tmp282341
                                     (let ((__tmp282353
                                            (let ((__tmp282354
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp282354)))
                                           (__tmp282342
                                            (let ((__tmp282350
                                                   (let ((__tmp282351
                                                          (let ((__tmp282352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self276476_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp282352 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp282351)))
                                                  (__tmp282343
                                                   (let ((__tmp282348
                                                          (let ((__tmp282349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj276526_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp282349)))
                 (__tmp282344
                  (let ((__tmp282345
                         (let ((__tmp282346
                                (let ((__tmp282347
                                       (##structure-ref
                                        _self276476_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp282347 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp282346))))
                    (declare (not safe))
                    (cons __tmp282345 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282348
                                                           __tmp282344))))
                                              (declare (not safe))
                                              (cons __tmp282350 __tmp282343))))
                                       (declare (not safe))
                                       (cons __tmp282353 __tmp282342))))
                                (declare (not safe))
                                (cons '%#call __tmp282341))))
                         (declare (not safe))
                         (cons __tmp282340 '()))))
                  (declare (not safe))
                  (cons __tmp282355 __tmp282339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282366
                                                         __tmp282338))))
                                            (declare (not safe))
                                            (cons '%#if __tmp282337))))
                                     (declare (not safe))
                                     (cons __tmp282336 '()))))
                              (declare (not safe))
                              (cons __tmp282374 __tmp282335))))
                      (declare (not safe))
                      (cons '%#let-values __tmp282334))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282332 _stx276477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp282323
                                                            (let ((__tmp282324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282330
                                  (let ((__tmp282331
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp282331)))
                                 (__tmp282325
                                  (let ((__tmp282326
                                         (let ((__tmp282327
                                                (let ((__tmp282328
                                                       (let ((__tmp282329
                                                              (##structure-ref
                                                               _self276476_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp282329
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp282328))))
                                           (declare (not safe))
                                           (cons __tmp282327 '()))))
                                    (declare (not safe))
                                    (cons _object276518_ __tmp282326))))
                             (declare (not safe))
                             (cons __tmp282330 __tmp282325))))
                      (declare (not safe))
                      (cons '%#call __tmp282324))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp282323 _stx276477_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd276484276498_)
                              (let ()
                                (declare (not safe))
                                (_g276480276490_ _g276481276493_)))))
                      (let ()
                        (declare (not safe))
                        (_g276480276490_ _g276481276493_))))))
          (declare (not safe))
          (_g276479276528_ _args276478_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t281706)
        (let ((__id281707
               (let ((__tmp281710
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281706 'id))))
                 (if __tmp281710 __tmp281710 (error '"Unknown slot" 'id))))
              (__slot281708
               (let ((__tmp281711
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281706 'slot))))
                 (if __tmp281711 __tmp281711 (error '"Unknown slot" 'slot))))
              (__checked?281709
               (let ((__tmp281712
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281706 'checked?))))
                 (if __tmp281712
                     __tmp281712
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self276476_ _stx276477_ _args276478_)
            (let* ((_g276480276490_
                    (lambda (_g276481276487_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276481276487_))))
                   (_g276479276528_
                    (lambda (_g276481276493_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276481276493_))
                          (let ((_e276485276495_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276481276493_))))
                            (let ((_hd276484276498_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276485276495_)))
                                  (_tl276483276500_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276485276495_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl276483276500_))
                                  ((lambda (_L276503_)
                                     (let* ((_klass276514_
                                             (let ((__tmp282408
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276476_
                                                       __id281707
                                                       __t281706
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx276477_
                                                __tmp282408)))
                                            (_field276516_
                                             (let ((__tmp282409
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self276476_
                                                       __slot281708
                                                       __t281706
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass276514_
                                                __tmp282409)))
                                            (_object276518_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L276503_))))
                                       (if (##structure-ref
                                            _klass276514_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp282486
                                                  (let ((__tmp282495
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276476_
                        __checked?281709
                        __t281706
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp282487
                 (let ((__tmp282492
                        (let ((__tmp282493
                               (let ((__tmp282494
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self276476_
                                         __id281707
                                         __t281706
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp282494 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp282493)))
                       (__tmp282488
                        (let ((__tmp282490
                               (let ((__tmp282491
                                      (let ()
                                        (declare (not safe))
                                        (cons _field276516_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp282491)))
                              (__tmp282489
                               (let ()
                                 (declare (not safe))
                                 (cons _object276518_ '()))))
                          (declare (not safe))
                          (cons __tmp282490 __tmp282489))))
                   (declare (not safe))
                   (cons __tmp282492 __tmp282488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282495
                                                          __tmp282487))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp282486
                                              _stx276477_))
                                           (if (##structure-ref
                                                _klass276514_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282476
                                                      (let ((__tmp282485
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276476_
                            __checked?281709
                            __t281706
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp282477
                     (let ((__tmp282482
                            (let ((__tmp282483
                                   (let ((__tmp282484
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276476_
                                             __id281707
                                             __t281706
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
                                            (cons _field276516_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282481)))
                                  (__tmp282479
                                   (let ()
                                     (declare (not safe))
                                     (cons _object276518_ '()))))
                              (declare (not safe))
                              (cons __tmp282480 __tmp282479))))
                       (declare (not safe))
                       (cons __tmp282482 __tmp282478))))
                (declare (not safe))
                (cons __tmp282485 __tmp282477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282476
                                                  _stx276477_))
                                               (let ((_$e276521_
                                                      (let ((__tmp282410
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self276476_
                        __slot281708
                        __t281706
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass276514_ __tmp282410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e276521_
                                                     ((lambda (_klass276524_)
                                                        (let ((__tmp282466
                                                               (let ((__tmp282475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276476_
                                     __checked?281709
                                     __t281706
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
                                                      _self276476_
                                                      __id281707
                                                      __t281706
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
                                                     (cons _field276516_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp282471)))
                                           (__tmp282469
                                            (let ()
                                              (declare (not safe))
                                              (cons _object276518_ '()))))
                                       (declare (not safe))
                                       (cons __tmp282470 __tmp282469))))
                                (declare (not safe))
                                (cons __tmp282472 __tmp282468))))
                         (declare (not safe))
                         (cons __tmp282475 __tmp282467))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp282466 _stx276477_)))
              _$e276521_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self276476_
                                                            __checked?281709
                                                            __t281706
                                                            '#f))
                                                         (let ((__tmp282420
                                                                (let* ((_$obj276526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp282421 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp282421)))
                               (__tmp282422
                                (let ((__tmp282462
                                       (let ((__tmp282463
                                              (let ((__tmp282465
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj276526_
                                                             '())))
                                                    (__tmp282464
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object276518_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp282465
                                                      __tmp282464))))
                                         (declare (not safe))
                                         (cons __tmp282463 '())))
                                      (__tmp282423
                                       (let ((__tmp282424
                                              (let ((__tmp282425
                                                     (let ((__tmp282454
                                                            (let ((__tmp282455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282459
                                  (let ((__tmp282460
                                         (let ((__tmp282461
                                                (##structure-ref
                                                 _klass276514_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp282461 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp282460)))
                                 (__tmp282456
                                  (let ((__tmp282457
                                         (let ((__tmp282458
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj276526_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282458))))
                                    (declare (not safe))
                                    (cons __tmp282457 '()))))
                             (declare (not safe))
                             (cons __tmp282459 __tmp282456))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp282455)))
                   (__tmp282426
                    (let ((__tmp282443
                           (let ((__tmp282444
                                  (let ((__tmp282451
                                         (let ((__tmp282452
                                                (let ((__tmp282453
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self276476_
                                                          __id281707
                                                          __t281706
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp282453 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282452)))
                                        (__tmp282445
                                         (let ((__tmp282449
                                                (let ((__tmp282450
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276516_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282450)))
                                               (__tmp282446
                                                (let ((__tmp282447
                                                       (let ((__tmp282448
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj276526_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282448))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282447 '()))))
                                           (declare (not safe))
                                           (cons __tmp282449 __tmp282446))))
                                    (declare (not safe))
                                    (cons __tmp282451 __tmp282445))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp282444)))
                          (__tmp282427
                           (let ((__tmp282428
                                  (let ((__tmp282429
                                         (let ((__tmp282441
                                                (let ((__tmp282442
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp282442)))
                                               (__tmp282430
                                                (let ((__tmp282438
                                                       (let ((__tmp282439
                                                              (let ((__tmp282440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276476_
                                __id281707
                                __t281706
                                '#f))))
                        (declare (not safe))
                        (cons __tmp282440 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp282439)))
              (__tmp282431
               (let ((__tmp282436
                      (let ((__tmp282437
                             (let ()
                               (declare (not safe))
                               (cons _$obj276526_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282437)))
                     (__tmp282432
                      (let ((__tmp282433
                             (let ((__tmp282434
                                    (let ((__tmp282435
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self276476_
                                              __slot281708
                                              __t281706
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp282435 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp282434))))
                        (declare (not safe))
                        (cons __tmp282433 '()))))
                 (declare (not safe))
                 (cons __tmp282436 __tmp282432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp282438
                                                        __tmp282431))))
                                           (declare (not safe))
                                           (cons __tmp282441 __tmp282430))))
                                    (declare (not safe))
                                    (cons '%#call __tmp282429))))
                             (declare (not safe))
                             (cons __tmp282428 '()))))
                      (declare (not safe))
                      (cons __tmp282443 __tmp282427))))
               (declare (not safe))
               (cons __tmp282454 __tmp282426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp282425))))
                                         (declare (not safe))
                                         (cons __tmp282424 '()))))
                                  (declare (not safe))
                                  (cons __tmp282462 __tmp282423))))
                          (declare (not safe))
                          (cons '%#let-values __tmp282422))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282420 _stx276477_))
                 (let ((__tmp282411
                        (let ((__tmp282412
                               (let ((__tmp282418
                                      (let ((__tmp282419
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp282419)))
                                     (__tmp282413
                                      (let ((__tmp282414
                                             (let ((__tmp282415
                                                    (let ((__tmp282416
                                                           (let ((__tmp282417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self276476_
                             __slot281708
                             __t281706
                             '#f))))
                     (declare (not safe))
                     (cons __tmp282417 '()))))
              (declare (not safe))
              (cons '%#quote __tmp282416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282415 '()))))
                                        (declare (not safe))
                                        (cons _object276518_ __tmp282414))))
                                 (declare (not safe))
                                 (cons __tmp282418 __tmp282413))))
                          (declare (not safe))
                          (cons '%#call __tmp282412))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp282411 _stx276477_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd276484276498_)
                                  (let ()
                                    (declare (not safe))
                                    (_g276480276490_ _g276481276493_)))))
                          (let ()
                            (declare (not safe))
                            (_g276480276490_ _g276481276493_))))))
              (declare (not safe))
              (_g276479276528_ _args276478_))))))
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
      (lambda (_self276281_ _stx276282_ _args276283_)
        (let* ((_g276285276299_
                (lambda (_g276286276296_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276286276296_))))
               (_g276284276351_
                (lambda (_g276286276302_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276286276302_))
                      (let ((_e276291276304_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276286276302_))))
                        (let ((_hd276290276307_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276291276304_)))
                              (_tl276289276309_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276291276304_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276289276309_))
                              (let ((_e276294276312_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276289276309_))))
                                (let ((_hd276293276315_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276294276312_)))
                                      (_tl276292276317_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276294276312_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl276292276317_))
                                      ((lambda (_L276320_ _L276321_)
                                         (let* ((_klass276335_
                                                 (let ((__tmp282496
                                                        (##structure-ref
                                                         _self276281_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx276282_
                                                    __tmp282496)))
                                                (_field276337_
                                                 (let ((__tmp282497
                                                        (##structure-ref
                                                         _self276281_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass276335_
                                                    __tmp282497)))
                                                (_object276339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276321_)))
                                                (_value276341_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L276320_))))
                                           (if (##structure-ref
                                                _klass276335_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp282579
                                                      (let ((__tmp282589
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self276281_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp282580
                     (let ((__tmp282586
                            (let ((__tmp282587
                                   (let ((__tmp282588
                                          (##structure-ref
                                           _self276281_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp282588 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp282587)))
                           (__tmp282581
                            (let ((__tmp282584
                                   (let ((__tmp282585
                                          (let ()
                                            (declare (not safe))
                                            (cons _field276337_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp282585)))
                                  (__tmp282582
                                   (let ((__tmp282583
                                          (let ()
                                            (declare (not safe))
                                            (cons _value276341_ '()))))
                                     (declare (not safe))
                                     (cons _object276339_ __tmp282583))))
                              (declare (not safe))
                              (cons __tmp282584 __tmp282582))))
                       (declare (not safe))
                       (cons __tmp282586 __tmp282581))))
                (declare (not safe))
                (cons __tmp282589 __tmp282580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp282579
                                                  _stx276282_))
                                               (if (##structure-ref
                                                    _klass276335_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282568
                                                          (let ((__tmp282578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self276281_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282569
                         (let ((__tmp282575
                                (let ((__tmp282576
                                       (let ((__tmp282577
                                              (##structure-ref
                                               _self276281_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp282577 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282576)))
                               (__tmp282570
                                (let ((__tmp282573
                                       (let ((__tmp282574
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276337_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282574)))
                                      (__tmp282571
                                       (let ((__tmp282572
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276341_ '()))))
                                         (declare (not safe))
                                         (cons _object276339_ __tmp282572))))
                                  (declare (not safe))
                                  (cons __tmp282573 __tmp282571))))
                           (declare (not safe))
                           (cons __tmp282575 __tmp282570))))
                    (declare (not safe))
                    (cons __tmp282578 __tmp282569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282568
                                                      _stx276282_))
                                                   (let ((_$e276344_
                                                          (let ((__tmp282498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self276281_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass276335_ __tmp282498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e276344_
                                                         ((lambda (_klass276347_)
                                                            (let ((__tmp282557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282567
                                  (if (##structure-ref
                                       _self276281_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp282558
                                  (let ((__tmp282564
                                         (let ((__tmp282565
                                                (let ((__tmp282566
                                                       (##structure-ref
                                                        _self276281_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp282566 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp282565)))
                                        (__tmp282559
                                         (let ((__tmp282562
                                                (let ((__tmp282563
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field276337_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp282563)))
                                               (__tmp282560
                                                (let ((__tmp282561
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value276341_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object276339_
                                                        __tmp282561))))
                                           (declare (not safe))
                                           (cons __tmp282562 __tmp282560))))
                                    (declare (not safe))
                                    (cons __tmp282564 __tmp282559))))
                             (declare (not safe))
                             (cons __tmp282567 __tmp282558))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp282557 _stx276282_)))
                  _$e276344_)
                 (if (##structure-ref _self276281_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp282509
                            (let* ((_$obj276349_
                                    (let ((__tmp282510 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp282510)))
                                   (__tmp282511
                                    (let ((__tmp282553
                                           (let ((__tmp282554
                                                  (let ((__tmp282556
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj276349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp282555
                 (let () (declare (not safe)) (cons _object276339_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp282556
                                                          __tmp282555))))
                                             (declare (not safe))
                                             (cons __tmp282554 '())))
                                          (__tmp282512
                                           (let ((__tmp282513
                                                  (let ((__tmp282514
                                                         (let ((__tmp282545
                                                                (let ((__tmp282546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp282550
                                      (let ((__tmp282551
                                             (let ((__tmp282552
                                                    (##structure-ref
                                                     _klass276335_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp282552 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp282551)))
                                     (__tmp282547
                                      (let ((__tmp282548
                                             (let ((__tmp282549
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj276349_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282549))))
                                        (declare (not safe))
                                        (cons __tmp282548 '()))))
                                 (declare (not safe))
                                 (cons __tmp282550 __tmp282547))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp282546)))
                       (__tmp282515
                        (let ((__tmp282533
                               (let ((__tmp282534
                                      (let ((__tmp282542
                                             (let ((__tmp282543
                                                    (let ((__tmp282544
                                                           (##structure-ref
                                                            _self276281_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp282544 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282543)))
                                            (__tmp282535
                                             (let ((__tmp282540
                                                    (let ((__tmp282541
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282541)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282536
                                                    (let ((__tmp282538
                                                           (let ((__tmp282539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj276349_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282539)))
                  (__tmp282537
                   (let () (declare (not safe)) (cons _value276341_ '()))))
              (declare (not safe))
              (cons __tmp282538 __tmp282537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282540
                                                     __tmp282536))))
                                        (declare (not safe))
                                        (cons __tmp282542 __tmp282535))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp282534)))
                              (__tmp282516
                               (let ((__tmp282517
                                      (let ((__tmp282518
                                             (let ((__tmp282531
                                                    (let ((__tmp282532
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp282532)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282519
                                                    (let ((__tmp282528
                                                           (let ((__tmp282529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp282530
                                 (##structure-ref
                                  _self276281_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp282530 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp282529)))
                  (__tmp282520
                   (let ((__tmp282526
                          (let ((__tmp282527
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj276349_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp282527)))
                         (__tmp282521
                          (let ((__tmp282523
                                 (let ((__tmp282524
                                        (let ((__tmp282525
                                               (##structure-ref
                                                _self276281_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp282525 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp282524)))
                                (__tmp282522
                                 (let ()
                                   (declare (not safe))
                                   (cons _value276341_ '()))))
                            (declare (not safe))
                            (cons __tmp282523 __tmp282522))))
                     (declare (not safe))
                     (cons __tmp282526 __tmp282521))))
              (declare (not safe))
              (cons __tmp282528 __tmp282520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282531
                                                     __tmp282519))))
                                        (declare (not safe))
                                        (cons '%#call __tmp282518))))
                                 (declare (not safe))
                                 (cons __tmp282517 '()))))
                          (declare (not safe))
                          (cons __tmp282533 __tmp282516))))
                   (declare (not safe))
                   (cons __tmp282545 __tmp282515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp282514))))
                                             (declare (not safe))
                                             (cons __tmp282513 '()))))
                                      (declare (not safe))
                                      (cons __tmp282553 __tmp282512))))
                              (declare (not safe))
                              (cons '%#let-values __tmp282511))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282509 _stx276282_))
                     (let ((__tmp282499
                            (let ((__tmp282500
                                   (let ((__tmp282507
                                          (let ((__tmp282508
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp282508)))
                                         (__tmp282501
                                          (let ((__tmp282502
                                                 (let ((__tmp282504
                                                        (let ((__tmp282505
                                                               (let ((__tmp282506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self276281_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp282506 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282505)))
               (__tmp282503
                (let () (declare (not safe)) (cons _value276341_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282504
                                                         __tmp282503))))
                                            (declare (not safe))
                                            (cons _object276339_
                                                  __tmp282502))))
                                     (declare (not safe))
                                     (cons __tmp282507 __tmp282501))))
                              (declare (not safe))
                              (cons '%#call __tmp282500))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp282499 _stx276282_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd276293276315_
                                       _hd276290276307_)
                                      (let ()
                                        (declare (not safe))
                                        (_g276285276299_ _g276286276302_)))))
                              (let ()
                                (declare (not safe))
                                (_g276285276299_ _g276286276302_)))))
                      (let ()
                        (declare (not safe))
                        (_g276285276299_ _g276286276302_))))))
          (declare (not safe))
          (_g276284276351_ _args276283_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t281713)
        (let ((__id281714
               (let ((__tmp281717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281713 'id))))
                 (if __tmp281717 __tmp281717 (error '"Unknown slot" 'id))))
              (__slot281715
               (let ((__tmp281718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281713 'slot))))
                 (if __tmp281718 __tmp281718 (error '"Unknown slot" 'slot))))
              (__checked?281716
               (let ((__tmp281719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t281713 'checked?))))
                 (if __tmp281719
                     __tmp281719
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self276281_ _stx276282_ _args276283_)
            (let* ((_g276285276299_
                    (lambda (_g276286276296_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g276286276296_))))
                   (_g276284276351_
                    (lambda (_g276286276302_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g276286276302_))
                          (let ((_e276291276304_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g276286276302_))))
                            (let ((_hd276290276307_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276291276304_)))
                                  (_tl276289276309_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276291276304_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276289276309_))
                                  (let ((_e276294276312_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276289276309_))))
                                    (let ((_hd276293276315_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276294276312_)))
                                          (_tl276292276317_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276294276312_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276292276317_))
                                          ((lambda (_L276320_ _L276321_)
                                             (let* ((_klass276335_
                                                     (let ((__tmp282590
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276281_
                                                               __id281714
                                                               __t281713
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx276282_
                                                        __tmp282590)))
                                                    (_field276337_
                                                     (let ((__tmp282591
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self276281_
                                                               __slot281715
                                                               __t281713
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass276335_
                                                        __tmp282591)))
                                                    (_object276339_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276321_)))
                                                    (_value276341_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L276320_))))
                                               (if (##structure-ref
                                                    _klass276335_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp282673
                                                          (let ((__tmp282683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276281_
                                __checked?281716
                                __t281713
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp282674
                         (let ((__tmp282680
                                (let ((__tmp282681
                                       (let ((__tmp282682
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self276281_
                                                 __id281714
                                                 __t281713
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp282682 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp282681)))
                               (__tmp282675
                                (let ((__tmp282678
                                       (let ((__tmp282679
                                              (let ()
                                                (declare (not safe))
                                                (cons _field276337_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp282679)))
                                      (__tmp282676
                                       (let ((__tmp282677
                                              (let ()
                                                (declare (not safe))
                                                (cons _value276341_ '()))))
                                         (declare (not safe))
                                         (cons _object276339_ __tmp282677))))
                                  (declare (not safe))
                                  (cons __tmp282678 __tmp282676))))
                           (declare (not safe))
                           (cons __tmp282680 __tmp282675))))
                    (declare (not safe))
                    (cons __tmp282683 __tmp282674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp282673
                                                      _stx276282_))
                                                   (if (##structure-ref
                                                        _klass276335_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp282662
                                                              (let ((__tmp282672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self276281_
                                    __checked?281716
                                    __t281713
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp282663
                             (let ((__tmp282669
                                    (let ((__tmp282670
                                           (let ((__tmp282671
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self276281_
                                                     __id281714
                                                     __t281713
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp282671 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282670)))
                                   (__tmp282664
                                    (let ((__tmp282667
                                           (let ((__tmp282668
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field276337_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282668)))
                                          (__tmp282665
                                           (let ((__tmp282666
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value276341_ '()))))
                                             (declare (not safe))
                                             (cons _object276339_
                                                   __tmp282666))))
                                      (declare (not safe))
                                      (cons __tmp282667 __tmp282665))))
                               (declare (not safe))
                               (cons __tmp282669 __tmp282664))))
                        (declare (not safe))
                        (cons __tmp282672 __tmp282663))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp282662 _stx276282_))
               (let ((_$e276344_
                      (let ((__tmp282592
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self276281_
                                __slot281715
                                __t281713
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass276335_
                         __tmp282592))))
                 (if _$e276344_
                     ((lambda (_klass276347_)
                        (let ((__tmp282651
                               (let ((__tmp282661
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self276281_
                                             __checked?281716
                                             __t281713
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp282652
                                      (let ((__tmp282658
                                             (let ((__tmp282659
                                                    (let ((__tmp282660
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self276281_
                                                              __id281714
                                                              __t281713
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp282660 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp282659)))
                                            (__tmp282653
                                             (let ((__tmp282656
                                                    (let ((__tmp282657
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field276337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp282657)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp282654
                                                    (let ((__tmp282655
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value276341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object276339_ __tmp282655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp282656
                                                     __tmp282654))))
                                        (declare (not safe))
                                        (cons __tmp282658 __tmp282653))))
                                 (declare (not safe))
                                 (cons __tmp282661 __tmp282652))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp282651 _stx276282_)))
                      _$e276344_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self276281_
                            __checked?281716
                            __t281713
                            '#f))
                         (let ((__tmp282603
                                (let* ((_$obj276349_
                                        (let ((__tmp282604 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp282604)))
                                       (__tmp282605
                                        (let ((__tmp282647
                                               (let ((__tmp282648
                                                      (let ((__tmp282650
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj276349_ '())))
                    (__tmp282649
                     (let () (declare (not safe)) (cons _object276339_ '()))))
                (declare (not safe))
                (cons __tmp282650 __tmp282649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282648 '())))
                                              (__tmp282606
                                               (let ((__tmp282607
                                                      (let ((__tmp282608
                                                             (let ((__tmp282639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp282640
                                   (let ((__tmp282644
                                          (let ((__tmp282645
                                                 (let ((__tmp282646
                                                        (##structure-ref
                                                         _klass276335_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp282646 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp282645)))
                                         (__tmp282641
                                          (let ((__tmp282642
                                                 (let ((__tmp282643
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj276349_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282643))))
                                            (declare (not safe))
                                            (cons __tmp282642 '()))))
                                     (declare (not safe))
                                     (cons __tmp282644 __tmp282641))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp282640)))
                           (__tmp282609
                            (let ((__tmp282627
                                   (let ((__tmp282628
                                          (let ((__tmp282636
                                                 (let ((__tmp282637
                                                        (let ((__tmp282638
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self276281_
                          __id281714
                          __t281713
                          '#f))))
                  (declare (not safe))
                  (cons __tmp282638 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp282637)))
                                                (__tmp282629
                                                 (let ((__tmp282634
                                                        (let ((__tmp282635
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field276337_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp282635)))
               (__tmp282630
                (let ((__tmp282632
                       (let ((__tmp282633
                              (let ()
                                (declare (not safe))
                                (cons _$obj276349_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282633)))
                      (__tmp282631
                       (let () (declare (not safe)) (cons _value276341_ '()))))
                  (declare (not safe))
                  (cons __tmp282632 __tmp282631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282634
                                                         __tmp282630))))
                                            (declare (not safe))
                                            (cons __tmp282636 __tmp282629))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp282628)))
                                  (__tmp282610
                                   (let ((__tmp282611
                                          (let ((__tmp282612
                                                 (let ((__tmp282625
                                                        (let ((__tmp282626
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282626)))
               (__tmp282613
                (let ((__tmp282622
                       (let ((__tmp282623
                              (let ((__tmp282624
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self276281_
                                        __id281714
                                        __t281713
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp282624 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp282623)))
                      (__tmp282614
                       (let ((__tmp282620
                              (let ((__tmp282621
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj276349_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282621)))
                             (__tmp282615
                              (let ((__tmp282617
                                     (let ((__tmp282618
                                            (let ((__tmp282619
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self276281_
                                                      __slot281715
                                                      __t281713
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp282619 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282618)))
                                    (__tmp282616
                                     (let ()
                                       (declare (not safe))
                                       (cons _value276341_ '()))))
                                (declare (not safe))
                                (cons __tmp282617 __tmp282616))))
                         (declare (not safe))
                         (cons __tmp282620 __tmp282615))))
                  (declare (not safe))
                  (cons __tmp282622 __tmp282614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282625
                                                         __tmp282613))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282612))))
                                     (declare (not safe))
                                     (cons __tmp282611 '()))))
                              (declare (not safe))
                              (cons __tmp282627 __tmp282610))))
                       (declare (not safe))
                       (cons __tmp282639 __tmp282609))))
                (declare (not safe))
                (cons '%#if __tmp282608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp282607 '()))))
                                          (declare (not safe))
                                          (cons __tmp282647 __tmp282606))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp282605))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp282603 _stx276282_))
                         (let ((__tmp282593
                                (let ((__tmp282594
                                       (let ((__tmp282601
                                              (let ((__tmp282602
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp282602)))
                                             (__tmp282595
                                              (let ((__tmp282596
                                                     (let ((__tmp282598
                                                            (let ((__tmp282599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282600
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self276281_
                                     __slot281715
                                     __t281713
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp282600 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp282599)))
                   (__tmp282597
                    (let () (declare (not safe)) (cons _value276341_ '()))))
               (declare (not safe))
               (cons __tmp282598 __tmp282597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object276339_
                                                      __tmp282596))))
                                         (declare (not safe))
                                         (cons __tmp282601 __tmp282595))))
                                  (declare (not safe))
                                  (cons '%#call __tmp282594))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp282593
                            _stx276282_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd276293276315_
                                           _hd276290276307_)
                                          (let ()
                                            (declare (not safe))
                                            (_g276285276299_
                                             _g276286276302_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g276285276299_ _g276286276302_)))))
                          (let ()
                            (declare (not safe))
                            (_g276285276299_ _g276286276302_))))))
              (declare (not safe))
              (_g276284276351_ _args276283_))))))
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
      (lambda (_self276115_ _stx276116_ _args276117_)
        (let* ((_self276118276127_ _self276115_)
               (_E276120276131_
                (lambda () (error '"No clause matching" _self276118276127_)))
               (_K276121276138_
                (lambda (_inline276134_ _dispatch276135_ _arity276136_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self276115_ _args276117_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx276116_
                         _arity276136_)))
                  (if _inline276134_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp282689
                               (let ((__tmp282690
                                      (_inline276134_ _stx276116_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp282690
                                  _stx276116_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp282689)))
                      (if _dispatch276135_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch276135_))
                            (let ((__tmp282684
                                   (let ((__tmp282685
                                          (let ((__tmp282686
                                                 (let ((__tmp282687
                                                        (let ((__tmp282688
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch276135_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp282688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp282687
                                                         _args276117_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp282686))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp282685
                                      _stx276116_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp282684)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx276116_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self276118276127_ 'gxc#!lambda::t))
              (let* ((_e276122276141_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276118276127_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e276123276144_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276118276127_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity276147_ _e276123276144_)
                     (_e276124276149_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276118276127_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch276152_ _e276124276149_)
                     (_e276125276154_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self276118276127_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline276157_ _e276125276154_))
                (declare (not safe))
                (_K276121276138_
                 _inline276157_
                 _dispatch276152_
                 _arity276147_))
              (let () (declare (not safe)) (_E276120276131_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self275954_ _stx275955_ _args275956_)
        (let* ((_self275957275964_ _self275954_)
               (_E275959275968_
                (lambda () (error '"No clause matching" _self275957275964_)))
               (_K275960275982_
                (lambda (_clauses275971_)
                  (let ((_$e275977_
                         (let ((__tmp282691
                                (lambda (_g275972275974_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g275972275974_
                                     _args275956_)))))
                           (declare (not safe))
                           (find __tmp282691 _clauses275971_))))
                    (if _$e275977_
                        ((lambda (_clause275980_)
                           (let ((__method281988
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause275980_
                                     'optimize-call))))
                             (if __method281988
                                 (__method281988
                                  _clause275980_
                                  _stx275955_
                                  _args275956_)
                                 (error '"Missing method"
                                        _clause275980_
                                        'optimize-call))))
                         _$e275977_)
                        (let ((__tmp282692
                               (map gxc#!lambda-arity _clauses275971_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx275955_
                           __tmp282692)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275957275964_
                 'gxc#!case-lambda::t))
              (let* ((_e275961275985_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275957275964_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275962275988_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275957275964_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses275991_ _e275962275988_))
                (declare (not safe))
                (_K275960275982_ _clauses275991_))
              (let () (declare (not safe)) (_E275959275968_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self275768_ _args275769_)
        (let* ((_self275770275777_ _self275768_)
               (_E275772275781_
                (lambda () (error '"No clause matching" _self275770275777_)))
               (_K275773275821_
                (lambda (_arity275784_)
                  (let* ((_arity275785275794_ _arity275784_)
                         (_E275788275798_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity275785275794_))))
                    (let ((_K275792275818_
                           (lambda ()
                             (fx= (length _args275769_) _arity275784_)))
                          (_K275789275804_
                           (lambda (_arity275802_)
                             (fx>= (length _args275769_) _arity275802_))))
                      (let ((_try-match275787275814_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity275785275794_))
                                   (let ((_tl275791275809_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity275785275794_)))
                                         (_hd275790275807_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity275785275794_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl275791275809_))
                                         (let ((_arity275812_
                                                _hd275790275807_))
                                           (declare (not safe))
                                           (_K275789275804_ _arity275812_))
                                         (let ()
                                           (declare (not safe))
                                           (_E275788275798_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E275788275798_))))))
                        (if (fixnum? _arity275785275794_)
                            (let () (declare (not safe)) (_K275792275818_))
                            (let ()
                              (declare (not safe))
                              (_try-match275787275814_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275770275777_ 'gxc#!lambda::t))
              (let* ((_e275774275824_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275770275777_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275775275827_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275770275777_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity275830_ _e275775275827_))
                (declare (not safe))
                (_K275773275821_ _arity275830_))
              (let () (declare (not safe)) (_E275772275781_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self275653_ _stx275654_ _args275655_)
        (let* ((_self275656275664_ _self275653_)
               (_E275658275668_
                (lambda () (error '"No clause matching" _self275656275664_)))
               (_K275659275752_
                (lambda (_dispatch275671_ _table275672_)
                  (let* ((_g275673275682_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch275671_)))
                         (_else275675275690_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch275671_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx275654_))))
                         (_K275677275736_
                          (lambda (_main275693_ _keys275694_)
                            (let ((_g282693_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx275654_
                                      _args275655_))))
                              (begin
                                (let ((_g282694_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g282693_)
                                             (##vector-length _g282693_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g282694_ 2)))
                                      (error "Context expects 2 values"
                                             _g282694_)))
                                (let ((_pargs275696_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282693_ 0)))
                                      (_kwargs275697_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g282693_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main275693_))
                                    (if _table275672_
                                        (let ((_xargs275704_
                                               (map (lambda (_key275699_)
                                                      (let ((_$e275701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key275699_ _kwargs275697_))))
                (if _$e275701_ (values _$e275701_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys275694_)))
                                          (for-each
                                           (lambda (_kw275706_)
                                             (if (memq (car _kw275706_)
                                                       _keys275694_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx275654_
                                                    _keys275694_
                                                    _kw275706_))))
                                           _kwargs275697_)
                                          (let ((__tmp282746
                                                 (let ((__tmp282747
                                                        (let ((__tmp282748
                                                               (let ((__tmp282753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282754
                                     (let ()
                                       (declare (not safe))
                                       (cons _main275693_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp282754)))
                             (__tmp282749
                              (let ((__tmp282751
                                     (let ((__tmp282752
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp282752)))
                                    (__tmp282750
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs275696_
                                               _xargs275704_))))
                                (declare (not safe))
                                (cons __tmp282751 __tmp282750))))
                         (declare (not safe))
                         (cons __tmp282753 __tmp282749))))
                  (declare (not safe))
                  (cons '%#call __tmp282748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282747
                                                    _stx275654_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp282746)))
                                        (let* ((_kwt275708_
                                                (let ((__tmp282695
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp282695)))
                                               (_kwvars275711_
                                                (map (lambda (_g282696_)
                                                       (let ((__tmp282697
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp282697)))
                                                     _kwargs275697_))
                                               (_kwbind275716_
                                                (map (lambda (_kw275713_
                                                              _kwvar275714_)
                                                       (let ((__tmp282700
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar275714_ '())))
                     (__tmp282698
                      (let ((__tmp282699 (cdr _kw275713_)))
                        (declare (not safe))
                        (cons __tmp282699 '()))))
                 (declare (not safe))
                 (cons __tmp282700 __tmp282698)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275697_
                                                     _kwvars275711_))
                                               (_kwset275721_
                                                (map (lambda (_kw275718_
                                                              _kwvar275719_)
                                                       (let ((__tmp282701
                                                              (let ((__tmp282702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp282710
                                    (let ((__tmp282711
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt275708_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp282711)))
                                   (__tmp282703
                                    (let ((__tmp282707
                                           (let ((__tmp282708
                                                  (let ((__tmp282709
                                                         (car _kw275718_)))
                                                    (declare (not safe))
                                                    (cons __tmp282709 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp282708)))
                                          (__tmp282704
                                           (let ((__tmp282705
                                                  (let ((__tmp282706
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar275719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp282706))))
                                             (declare (not safe))
                                             (cons __tmp282705 '()))))
                                      (declare (not safe))
                                      (cons __tmp282707 __tmp282704))))
                               (declare (not safe))
                               (cons __tmp282710 __tmp282703))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp282702))))
                 (declare (not safe))
                 (cons '%#call __tmp282701)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275697_
                                                     _kwvars275711_))
                                               (_xkwargs275726_
                                                (map (lambda (_kw275723_
                                                              _kwvar275724_)
                                                       (let ((__tmp282714
                                                              (car _kw275723_))
                                                             (__tmp282712
                                                              (let ((__tmp282713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar275724_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp282713))))
                 (declare (not safe))
                 (cons __tmp282714 __tmp282712)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs275697_
                                                     _kwvars275711_))
                                               (_xargs275733_
                                                (map (lambda (_key275728_)
                                                       (let ((_$e275730_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key275728_ _xkwargs275726_))))
                 (if _$e275730_ (values _$e275730_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys275694_)))
                                          (let ((__tmp282715
                                                 (let ((__tmp282716
                                                        (let ((__tmp282717
                                                               (let ((__tmp282718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp282719
                                     (let ((__tmp282720
                                            (let ((__tmp282734
                                                   (let ((__tmp282735
                                                          (let ((__tmp282745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt275708_ '())))
                        (__tmp282736
                         (let ((__tmp282737
                                (let ((__tmp282738
                                       (let ((__tmp282739
                                              (let ((__tmp282740
                                                     (let ((__tmp282741
                                                            (let ((__tmp282742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp282743
                                  (let ((__tmp282744 (length _kwargs275697_)))
                                    (declare (not safe))
                                    (cons __tmp282744 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp282743))))
                      (declare (not safe))
                      (cons __tmp282742 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp282741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp282740))))
                                         (declare (not safe))
                                         (cons '%#call __tmp282739))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp282738
                                   _stx275654_))))
                           (declare (not safe))
                           (cons __tmp282737 '()))))
                    (declare (not safe))
                    (cons __tmp282745 __tmp282736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282735 '())))
                                                  (__tmp282721
                                                   (let ((__tmp282722
                                                          (let ((__tmp282723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp282724
                                (let ((__tmp282725
                                       (let ((__tmp282726
                                              (let ((__tmp282727
                                                     (let ((__tmp282732
                                                            (let ((__tmp282733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main275693_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp282733)))
                   (__tmp282728
                    (let ((__tmp282730
                           (let ((__tmp282731
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt275708_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp282731)))
                          (__tmp282729
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs275696_ _xargs275733_))))
                      (declare (not safe))
                      (cons __tmp282730 __tmp282729))))
               (declare (not safe))
               (cons __tmp282732 __tmp282728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp282727))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp282726
                                          _stx275654_))))
                                  (declare (not safe))
                                  (cons __tmp282725 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp282724 _kwset275721_))))
                    (declare (not safe))
                    (cons '%#begin __tmp282723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp282722 '()))))
                                              (declare (not safe))
                                              (cons __tmp282734 __tmp282721))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp282720))))
                                (declare (not safe))
                                (cons __tmp282719 '()))))
                         (declare (not safe))
                         (cons _kwbind275716_ __tmp282718))))
                  (declare (not safe))
                  (cons '%#let-values __tmp282717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp282716
                                                    _stx275654_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp282715)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g275673275682_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e275678275739_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275673275682_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e275679275742_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275673275682_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys275745_ _e275679275742_)
                               (_e275680275747_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g275673275682_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main275750_ _e275680275747_))
                          (declare (not safe))
                          (_K275677275736_ _main275750_ _keys275745_))
                        (let () (declare (not safe)) (_else275675275690_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275656275664_
                 'gxc#!kw-lambda::t))
              (let* ((_e275660275755_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275656275664_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e275661275758_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275656275664_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table275761_ _e275661275758_)
                     (_e275662275763_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275656275664_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch275766_ _e275662275763_))
                (declare (not safe))
                (_K275659275752_ _dispatch275766_ _table275761_))
              (let () (declare (not safe)) (_E275658275668_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx275266_ _args275267_)
        (let _lp275269_ ((_rest275271_ _args275267_)
                         (_pargs275272_ '())
                         (_kwargs275273_ '()))
          (let* ((___stx281870281871_ _rest275271_)
                 (_g275279275331_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx281870281871_)))))
            (let ((___kont281872281873_
                   (lambda (_L275510_ _L275511_)
                     (let ((__tmp282755
                            (let ()
                              (declare (not safe))
                              (cons _L275511_ _pargs275272_))))
                       (declare (not safe))
                       (_lp275269_ _L275510_ __tmp282755 _kwargs275273_))))
                  (___kont281874281875_
                   (lambda (_L275456_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L275456_ _pargs275272_))
                             (reverse _kwargs275273_))))
                  (___kont281876281877_
                   (lambda (_L275403_ _L275404_ _L275405_)
                     (let ((_kw275422_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L275405_))))
                       (if (assq _kw275422_ _kwargs275273_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx275266_
                              _kw275422_))
                           (let ((__tmp282756
                                  (let ((__tmp282757
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw275422_ _L275404_))))
                                    (declare (not safe))
                                    (cons __tmp282757 _kwargs275273_))))
                             (declare (not safe))
                             (_lp275269_
                              _L275403_
                              _pargs275272_
                              __tmp282756))))))
                  (___kont281878281879_
                   (lambda (_L275351_ _L275352_)
                     (let ((__tmp282758
                            (let ()
                              (declare (not safe))
                              (cons _L275352_ _pargs275272_))))
                       (declare (not safe))
                       (_lp275269_ _L275351_ __tmp282758 _kwargs275273_))))
                  (___kont281880281881_
                   (lambda ()
                     (values (reverse _pargs275272_)
                             (reverse _kwargs275273_)))))
              (let* ((_g275278275338_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx281870281871_))
                            (___kont281880281881_)
                            (let () (declare (not safe)) (_g275279275331_)))))
                     (___match281977281978_
                      (lambda (_e275312275371_
                               _hd275311275374_
                               _tl275310275376_
                               _e275315275379_
                               _hd275314275382_
                               _tl275313275384_
                               _e275318275387_
                               _hd275317275390_
                               _tl275316275392_
                               _e275321275395_
                               _hd275320275398_
                               _tl275319275400_)
                        (let ((_L275403_ _tl275319275400_)
                              (_L275404_ _hd275320275398_)
                              (_L275405_ _hd275317275390_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L275405_))
                              (___kont281876281877_
                               _L275403_
                               _L275404_
                               _L275405_)
                              (___kont281878281879_
                               _tl275310275376_
                               _hd275311275374_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx281870281871_))
                    (let ((_e275285275475_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx281870281871_))))
                      (let ((_tl275283275480_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275285275475_)))
                            (_hd275284275478_
                             (let ()
                               (declare (not safe))
                               (##car _e275285275475_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd275284275478_))
                            (let ((_e275288275483_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd275284275478_))))
                              (let ((_tl275286275488_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e275288275483_)))
                                    (_hd275287275486_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e275288275483_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd275287275486_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd275287275486_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl275286275488_))
                                            (let ((_e275291275491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl275286275488_))))
                                              (let ((_tl275289275496_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e275291275491_)))
                                                    (_hd275290275494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e275291275491_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd275290275494_))
                                                    (let ((_e275292275499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd275290275494_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e275292275499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl275289275496_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl275283275480_))
                          (let ((_e275295275502_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl275283275480_))))
                            (let ((_tl275293275507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e275295275502_)))
                                  (_hd275294275505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e275295275502_))))
                              (___kont281872281873_
                               _tl275293275507_
                               _hd275294275505_)))
                          (___kont281878281879_
                           _tl275283275480_
                           _hd275284275478_))
                      (___kont281878281879_ _tl275283275480_ _hd275284275478_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e275292275499_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275289275496_))
                          (___kont281874281875_ _tl275283275480_)
                          (___kont281878281879_
                           _tl275283275480_
                           _hd275284275478_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl275289275496_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl275283275480_))
                              (let ((_e275321275395_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl275283275480_))))
                                (let ((_tl275319275400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e275321275395_)))
                                      (_hd275320275398_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e275321275395_))))
                                  (___match281977281978_
                                   _e275285275475_
                                   _hd275284275478_
                                   _tl275283275480_
                                   _e275288275483_
                                   _hd275287275486_
                                   _tl275286275488_
                                   _e275291275491_
                                   _hd275290275494_
                                   _tl275289275496_
                                   _e275321275395_
                                   _hd275320275398_
                                   _tl275319275400_)))
                              (___kont281878281879_
                               _tl275283275480_
                               _hd275284275478_))
                          (___kont281878281879_
                           _tl275283275480_
                           _hd275284275478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl275289275496_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl275283275480_))
                                                            (let ((_e275321275395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl275283275480_))))
                      (let ((_tl275319275400_
                             (let ()
                               (declare (not safe))
                               (##cdr _e275321275395_)))
                            (_hd275320275398_
                             (let ()
                               (declare (not safe))
                               (##car _e275321275395_))))
                        (___match281977281978_
                         _e275285275475_
                         _hd275284275478_
                         _tl275283275480_
                         _e275288275483_
                         _hd275287275486_
                         _tl275286275488_
                         _e275291275491_
                         _hd275290275494_
                         _tl275289275496_
                         _e275321275395_
                         _hd275320275398_
                         _tl275319275400_)))
                    (___kont281878281879_ _tl275283275480_ _hd275284275478_))
                (___kont281878281879_ _tl275283275480_ _hd275284275478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont281878281879_
                                             _tl275283275480_
                                             _hd275284275478_))
                                        (___kont281878281879_
                                         _tl275283275480_
                                         _hd275284275478_))
                                    (___kont281878281879_
                                     _tl275283275480_
                                     _hd275284275478_))))
                            (___kont281878281879_
                             _tl275283275480_
                             _hd275284275478_))))
                    (let () (declare (not safe)) (_g275278275338_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self275262_ _stx275263_ _args275264_)
        (let () (declare (not safe)) (gxc#xform-call% _stx275263_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
