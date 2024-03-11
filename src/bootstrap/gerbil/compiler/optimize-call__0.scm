(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710139358)
  (begin
    (define gxc#&optimize-call::t
      (let ((__tmp153851 (list gxc#&basic-xform::t))
            (__tmp153849
             (let ((__tmp153850
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp153850 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&optimize-call::t
         '&optimize-call
         __tmp153851
         '()
         __tmp153849
         '#f)))
    (define gxc#&optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&optimize-call::t)))
    (define gxc#make-&optimize-call
      (lambda _$args153552_
        (apply make-instance gxc#&optimize-call::t _$args153552_)))
    (define gxc#&optimize-call-bind-methods!
      (let ((__tmp153852
             (lambda ()
               (force gxc#&basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#&optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#&optimize-call::t)))))
        (declare (not safe))
        (make-promise __tmp153852)))
    (define gxc#apply-optimize-call
      (lambda (_stx153544_)
        (force gxc#&optimize-call-bind-methods!)
        (let* ((_self153547_
                (let ((__obj153846
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&optimize-call::t))))
                  __obj153846))
               (__tmp153853
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self153547_ _stx153544_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp153853
           gxc#current-compile-method
           _self153547_))))
    (define gxc#optimize-call%
      (lambda (_self153398_ _stx153399_)
        (let* ((___stx153597153598_ _stx153399_)
               (_g153402153422_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx153597153598_)))))
          (let ((___kont153599153600_
                 (lambda (_L153466_ _L153467_)
                   (let* ((_rator-id153485_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L153467_)))
                          (_rator-type153487_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id153485_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type153487_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153854
                                  (##structure-ref
                                   _rator-type153487_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id153485_
                              '" => "
                              _rator-type153487_
                              '" "
                              __tmp153854))
                           (let ((_optimized153490_
                                  (let ((__method153847
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type153487_
                                            'optimize-call))))
                                    (if __method153847
                                        (__method153847
                                         _rator-type153487_
                                         _self153398_
                                         _stx153399_
                                         _L153466_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type153487_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type153487_))
                                 _optimized153490_
                                 (let* ((___stx153579153580_ _optimized153490_)
                                        (_g153493153503_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx153579153580_)))))
                                   (let ((___kont153581153582_
                                          (lambda (_L153523_)
                                            (let ((__tmp153855
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L153523_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153855
                                               _stx153399_))))
                                         (___kont153583153584_
                                          (lambda () _optimized153490_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx153579153580_))
                                         (let ((_e153498153515_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx153579153580_))))
                                           (let ((_tl153496153520_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e153498153515_)))
                                                 (_hd153497153518_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e153498153515_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd153497153518_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd153497153518_))
                                                     (___kont153581153582_
                                                      _tl153496153520_)
                                                     (___kont153583153584_))
                                                 (___kont153583153584_))))
                                         (___kont153583153584_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type153487_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self153398_ _stx153399_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx153399_
                                _rator-type153487_)))))))
                (___kont153601153602_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self153398_ _stx153399_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx153597153598_))
                (let ((_e153408153434_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx153597153598_))))
                  (let ((_tl153406153439_
                         (let () (declare (not safe)) (##cdr _e153408153434_)))
                        (_hd153407153437_
                         (let ()
                           (declare (not safe))
                           (##car _e153408153434_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl153406153439_))
                        (let ((_e153411153442_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153406153439_))))
                          (let ((_tl153409153447_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153411153442_)))
                                (_hd153410153445_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153411153442_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd153410153445_))
                                (let ((_e153414153450_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd153410153445_))))
                                  (let ((_tl153412153455_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e153414153450_)))
                                        (_hd153413153453_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e153414153450_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd153413153453_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd153413153453_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl153412153455_))
                                                (let ((_e153417153458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl153412153455_))))
                                                  (let ((_tl153415153463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153417153458_)))
                                                        (_hd153416153461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153417153458_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl153415153463_))
                                                        (___kont153599153600_
                                                         _tl153409153447_
                                                         _hd153416153461_)
                                                        (___kont153601153602_))))
                                                (___kont153601153602_))
                                            (___kont153601153602_))
                                        (___kont153601153602_))))
                                (___kont153601153602_))))
                        (___kont153601153602_))))
                (___kont153601153602_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self153351_ _ctx153352_ _stx153353_ _args153354_)
        (let* ((_g153356153366_
                (lambda (_g153357153363_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153357153363_))))
               (_g153355153395_
                (lambda (_g153357153369_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153357153369_))
                      (let ((_e153361153371_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153357153369_))))
                        (let ((_hd153360153374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153361153371_)))
                              (_tl153359153376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153361153371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl153359153376_))
                              ((lambda (_L153379_)
                                 (let* ((_klass153390_
                                         (let ((__tmp153856
                                                (##structure-ref
                                                 _self153351_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx153353_
                                            __tmp153856)))
                                        (_object153392_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx153352_
                                            _L153379_))))
                                   (if (##structure-ref
                                        _klass153390_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153872
                                              (let ((__tmp153873
                                                     (let ((__tmp153875
                                                            (let ((__tmp153876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153877
                                  (##structure-ref
                                   _klass153390_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153877 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153876)))
                   (__tmp153874
                    (let () (declare (not safe)) (cons _object153392_ '()))))
               (declare (not safe))
               (cons __tmp153875 __tmp153874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153873))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153872
                                          _stx153353_))
                                       (if (##structure-ref
                                            _klass153390_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153866
                                                  (let ((__tmp153867
                                                         (let ((__tmp153869
                                                                (let ((__tmp153870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153871
                                      (##structure-ref
                                       _klass153390_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153871 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153870)))
                       (__tmp153868
                        (let ()
                          (declare (not safe))
                          (cons _object153392_ '()))))
                   (declare (not safe))
                   (cons __tmp153869 __tmp153868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153867))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153866
                                              _stx153353_))
                                           (let ((__tmp153857
                                                  (let ((__tmp153858
                                                         (let ((__tmp153864
                                                                (let ((__tmp153865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153865)))
                       (__tmp153859
                        (let ((__tmp153861
                               (let ((__tmp153862
                                      (let ((__tmp153863
                                             (##structure-ref
                                              _self153351_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153863 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153862)))
                              (__tmp153860
                               (let ()
                                 (declare (not safe))
                                 (cons _object153392_ '()))))
                          (declare (not safe))
                          (cons __tmp153861 __tmp153860))))
                   (declare (not safe))
                   (cons __tmp153864 __tmp153859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153858))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153857
                                              _stx153353_))))))
                               _hd153360153374_)
                              (let ()
                                (declare (not safe))
                                (_g153356153366_ _g153357153369_)))))
                      (let ()
                        (declare (not safe))
                        (_g153356153366_ _g153357153369_))))))
          (declare (not safe))
          (_g153355153395_ _args153354_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass153554 __method-table153555)
        (let ((__id153556
               (let ((__slot153557
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153554 'id))))
                 (if __slot153557
                     __slot153557
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153351_ _ctx153352_ _stx153353_ _args153354_)
            (let* ((_g153356153366_
                    (lambda (_g153357153363_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153357153363_))))
                   (_g153355153395_
                    (lambda (_g153357153369_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153357153369_))
                          (let ((_e153361153371_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153357153369_))))
                            (let ((_hd153360153374_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153361153371_)))
                                  (_tl153359153376_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153361153371_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl153359153376_))
                                  ((lambda (_L153379_)
                                     (let* ((_klass153390_
                                             (let ((__tmp153878
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153351_
                                                       __id153556
                                                       __klass153554
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx153353_
                                                __tmp153878)))
                                            (_object153392_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx153352_
                                                _L153379_))))
                                       (if (##structure-ref
                                            _klass153390_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153894
                                                  (let ((__tmp153895
                                                         (let ((__tmp153897
                                                                (let ((__tmp153898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153899
                                      (##structure-ref
                                       _klass153390_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153899 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153898)))
                       (__tmp153896
                        (let ()
                          (declare (not safe))
                          (cons _object153392_ '()))))
                   (declare (not safe))
                   (cons __tmp153897 __tmp153896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153895))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153894
                                              _stx153353_))
                                           (if (##structure-ref
                                                _klass153390_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153888
                                                      (let ((__tmp153889
                                                             (let ((__tmp153891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153892
                                   (let ((__tmp153893
                                          (##structure-ref
                                           _klass153390_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153893 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153892)))
                           (__tmp153890
                            (let ()
                              (declare (not safe))
                              (cons _object153392_ '()))))
                       (declare (not safe))
                       (cons __tmp153891 __tmp153890))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153888
                                                  _stx153353_))
                                               (let ((__tmp153879
                                                      (let ((__tmp153880
                                                             (let ((__tmp153886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153887
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153887)))
                           (__tmp153881
                            (let ((__tmp153883
                                   (let ((__tmp153884
                                          (let ((__tmp153885
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self153351_
                                                    __id153556
                                                    __klass153554
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153885 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153884)))
                                  (__tmp153882
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153392_ '()))))
                              (declare (not safe))
                              (cons __tmp153883 __tmp153882))))
                       (declare (not safe))
                       (cons __tmp153886 __tmp153881))))
                (declare (not safe))
                (cons '%#call __tmp153880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153879
                                                  _stx153353_))))))
                                   _hd153360153374_)
                                  (let ()
                                    (declare (not safe))
                                    (_g153356153366_ _g153357153369_)))))
                          (let ()
                            (declare (not safe))
                            (_g153356153366_ _g153357153369_))))))
              (declare (not safe))
              (_g153355153395_ _args153354_))))))
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
      (lambda (_self153066_ _ctx153067_ _stx153068_ _args153069_)
        (let* ((_klass153071_
                (let ((__tmp153900
                       (##structure-ref _self153066_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx153068_ __tmp153900)))
               (_fields153073_
                (length (##structure-ref _klass153071_ '5 gxc#!class::t '#f)))
               (_args153079_
                (map (lambda (_g153074153076_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx153067_ _g153074153076_)))
                     _args153069_))
               (_inline-make-object153081_
                (let ((__tmp153901
                       (let ((__tmp153907
                              (let ((__tmp153908
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153908)))
                             (__tmp153902
                              (let ((__tmp153904
                                     (let ((__tmp153905
                                            (let ((__tmp153906
                                                   (##structure-ref
                                                    _self153066_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153906 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153905)))
                                    (__tmp153903
                                     (make-list _fields153073_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp153904 __tmp153903))))
                         (declare (not safe))
                         (cons __tmp153907 __tmp153902))))
                  (declare (not safe))
                  (cons '%#call __tmp153901))))
          (let ((_$e153084_
                 (##structure-ref _klass153071_ '6 gxc#!class::t '#f)))
            (if _$e153084_
                ((lambda (_ctor153087_)
                   (let ((_$obj153089_
                          (let ((__tmp154009 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp154009)))
                         (_ctor-impl153090_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass153071_
                             _ctor153087_))))
                     (let ((__tmp154010
                            (let ((__tmp154011
                                   (let ((__tmp154079
                                          (let ((__tmp154080
                                                 (let ((__tmp154082
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153089_
                                                                '())))
                                                       (__tmp154081
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object153081_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp154082
                                                         __tmp154081))))
                                            (declare (not safe))
                                            (cons __tmp154080 '())))
                                         (__tmp154012
                                          (let ((__tmp154013
                                                 (let ((__tmp154014
                                                        (let ((__tmp154018
                                                               (if _ctor-impl153090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154073
                                  (let ((__tmp154077
                                         (let ((__tmp154078
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl153090_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154078)))
                                        (__tmp154074
                                         (let ((__tmp154075
                                                (let ((__tmp154076
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj153089_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154076))))
                                           (declare (not safe))
                                           (cons __tmp154075 _args153079_))))
                                    (declare (not safe))
                                    (cons __tmp154077 __tmp154074))))
                             (declare (not safe))
                             (cons '%#call __tmp154073))
                           (let* ((_$ctor153092_
                                   (let ((__tmp154019 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp154019)))
                                  (__tmp154020
                                   (let ((__tmp154055
                                          (let ((__tmp154056
                                                 (let ((__tmp154072
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor153092_
                                                                '())))
                                                       (__tmp154057
                                                        (let ((__tmp154058
                                                               (let ((__tmp154059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154070
                                     (let ((__tmp154071
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154071)))
                                    (__tmp154060
                                     (let ((__tmp154067
                                            (let ((__tmp154068
                                                   (let ((__tmp154069
                                                          (##structure-ref
                                                           _self153066_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp154069 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154068)))
                                           (__tmp154061
                                            (let ((__tmp154065
                                                   (let ((__tmp154066
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154066)))
                                                  (__tmp154062
                                                   (let ((__tmp154063
                                                          (let ((__tmp154064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor153087_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154063 '()))))
                                              (declare (not safe))
                                              (cons __tmp154065 __tmp154062))))
                                       (declare (not safe))
                                       (cons __tmp154067 __tmp154061))))
                                (declare (not safe))
                                (cons __tmp154070 __tmp154060))))
                         (declare (not safe))
                         (cons '%#call __tmp154059))))
                  (declare (not safe))
                  (cons __tmp154058 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154072
                                                         __tmp154057))))
                                            (declare (not safe))
                                            (cons __tmp154056 '())))
                                         (__tmp154021
                                          (let ((__tmp154022
                                                 (let ((__tmp154023
                                                        (let ((__tmp154053
                                                               (let ((__tmp154054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor153092_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154054)))
                      (__tmp154024
                       (let ((__tmp154046
                              (let ((__tmp154047
                                     (let ((__tmp154051
                                            (let ((__tmp154052
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor153092_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154052)))
                                           (__tmp154048
                                            (let ((__tmp154049
                                                   (let ((__tmp154050
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154050))))
                                              (declare (not safe))
                                              (cons __tmp154049
                                                    _args153079_))))
                                       (declare (not safe))
                                       (cons __tmp154051 __tmp154048))))
                                (declare (not safe))
                                (cons '%#call __tmp154047)))
                             (__tmp154025
                              (let ((__tmp154026
                                     (let ((__tmp154027
                                            (let ((__tmp154044
                                                   (let ((__tmp154045
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154045)))
                                                  (__tmp154028
                                                   (let ((__tmp154042
                                                          (let ((__tmp154043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154043)))
                 (__tmp154029
                  (let ((__tmp154040
                         (let ((__tmp154041
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154041)))
                        (__tmp154030
                         (let ((__tmp154037
                                (let ((__tmp154038
                                       (let ((__tmp154039
                                              (##structure-ref
                                               _self153066_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154039 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154038)))
                               (__tmp154031
                                (let ((__tmp154035
                                       (let ((__tmp154036
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154036)))
                                      (__tmp154032
                                       (let ((__tmp154033
                                              (let ((__tmp154034
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor153087_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp154034))))
                                         (declare (not safe))
                                         (cons __tmp154033 '()))))
                                  (declare (not safe))
                                  (cons __tmp154035 __tmp154032))))
                           (declare (not safe))
                           (cons __tmp154037 __tmp154031))))
                    (declare (not safe))
                    (cons __tmp154040 __tmp154030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154042
                                                           __tmp154029))))
                                              (declare (not safe))
                                              (cons __tmp154044 __tmp154028))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154027))))
                                (declare (not safe))
                                (cons __tmp154026 '()))))
                         (declare (not safe))
                         (cons __tmp154046 __tmp154025))))
                  (declare (not safe))
                  (cons __tmp154053 __tmp154024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp154023))))
                                            (declare (not safe))
                                            (cons __tmp154022 '()))))
                                     (declare (not safe))
                                     (cons __tmp154055 __tmp154021))))
                             (declare (not safe))
                             (cons '%#let-values __tmp154020))))
                      (__tmp154015
                       (let ((__tmp154016
                              (let ((__tmp154017
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153089_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154017))))
                         (declare (not safe))
                         (cons __tmp154016 '()))))
                  (declare (not safe))
                  (cons __tmp154018 __tmp154015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp154014))))
                                            (declare (not safe))
                                            (cons __tmp154013 '()))))
                                     (declare (not safe))
                                     (cons __tmp154079 __tmp154012))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154011))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154010 _stx153068_))))
                 _$e153084_)
                (let ((_$e153094_
                       (##structure-ref _klass153071_ '9 gxc#!class::t '#f)))
                  (if _$e153094_
                      ((lambda (_metaclass153097_)
                         (let* ((_$obj153099_
                                 (let ((__tmp153971 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153971)))
                                (_metakons153101_
                                 (let ((__tmp153972
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx153068_
                                           _metaclass153097_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153972
                                    'instance-init!))))
                           (let ((__tmp153973
                                  (let ((__tmp153974
                                         (let ((__tmp154005
                                                (let ((__tmp154006
                                                       (let ((__tmp154008
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153099_ '())))
                     (__tmp154007
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object153081_ '()))))
                 (declare (not safe))
                 (cons __tmp154008 __tmp154007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154006 '())))
                                               (__tmp153975
                                                (let ((__tmp153976
                                                       (let ((__tmp153977
                                                              (let ((__tmp153981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons153101_
                                 (let ((__tmp153995
                                        (let ((__tmp154003
                                               (let ((__tmp154004
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons153101_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154004)))
                                              (__tmp153996
                                               (let ((__tmp154000
                                                      (let ((__tmp154001
                                                             (let ((__tmp154002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153066_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154002 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154001)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153997
                                                      (let ((__tmp153998
                                                             (let ((__tmp153999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj153099_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153999))))
                (declare (not safe))
                (cons __tmp153998 _args153079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154000
                                                       __tmp153997))))
                                          (declare (not safe))
                                          (cons __tmp154003 __tmp153996))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153995))
                                 (let ((__tmp153982
                                        (let ((__tmp153993
                                               (let ((__tmp153994
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153994)))
                                              (__tmp153983
                                               (let ((__tmp153990
                                                      (let ((__tmp153991
                                                             (let ((__tmp153992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153066_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153992 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153991)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153984
                                                      (let ((__tmp153988
                                                             (let ((__tmp153989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153989)))
                    (__tmp153985
                     (let ((__tmp153986
                            (let ((__tmp153987
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153099_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153987))))
                       (declare (not safe))
                       (cons __tmp153986 _args153079_))))
                (declare (not safe))
                (cons __tmp153988 __tmp153985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153990
                                                       __tmp153984))))
                                          (declare (not safe))
                                          (cons __tmp153993 __tmp153983))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153982))))
                            (__tmp153978
                             (let ((__tmp153979
                                    (let ((__tmp153980
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj153099_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153980))))
                               (declare (not safe))
                               (cons __tmp153979 '()))))
                        (declare (not safe))
                        (cons __tmp153981 __tmp153978))))
                 (declare (not safe))
                 (cons '%#begin __tmp153977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153976 '()))))
                                           (declare (not safe))
                                           (cons __tmp154005 __tmp153975))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153974))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153973 _stx153068_))))
                       _$e153094_)
                      (if (##structure-ref _klass153071_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args153079_) _fields153073_)
                              (let ((__tmp153963
                                     (let ((__tmp153964
                                            (let ((__tmp153969
                                                   (let ((__tmp153970
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153970)))
                                                  (__tmp153965
                                                   (let ((__tmp153966
                                                          (let ((__tmp153967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153968
                                (##structure-ref
                                 _self153066_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153968 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153966
                                                           _args153079_))))
                                              (declare (not safe))
                                              (cons __tmp153969 __tmp153965))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153964))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153963
                                 _stx153068_))
                              (let ((__tmp153962
                                     (##structure-ref
                                      _self153066_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153961
                                     (length (##structure-ref
                                              _klass153071_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx153068_
                                 __tmp153962
                                 __tmp153961)))
                          (let ((_$obj153104_
                                 (let ((__tmp153909 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153909))))
                            (let _lp153106_ ((_rest153108_ _args153079_)
                                             (_initializers153109_ '()))
                              (let* ((___stx153635153636_ _rest153108_)
                                     (_g153113153134_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx153635153636_)))))
                                (let ((___kont153637153638_
                                       (lambda (_L153188_ _L153189_ _L153190_)
                                         (let* ((_slot153221_
                                                 (let ((__tmp153910
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L153190_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp153910)))
                                                (_off153223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153071_
                                                    _slot153221_))))
                                           (if _off153223_
                                               (let ((__tmp153912
                                                      (let ((__tmp153913
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off153223_ _L153189_))))
                (declare (not safe))
                (cons __tmp153913 _initializers153109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp153106_
                                                  _L153188_
                                                  __tmp153912))
                                               (let ((__tmp153911
                                                      (##structure-ref
                                                       _self153066_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx153068_
                                                  __tmp153911
                                                  _slot153221_))))))
                                      (___kont153639153640_
                                       (lambda ()
                                         (let ((__tmp153914
                                                (let ((__tmp153915
                                                       (let ((__tmp153938
                                                              (let ((__tmp153939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153941
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153104_ '())))
                                   (__tmp153940
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153081_ '()))))
                               (declare (not safe))
                               (cons __tmp153941 __tmp153940))))
                        (declare (not safe))
                        (cons __tmp153939 '())))
                     (__tmp153916
                      (let ((__tmp153917
                             (let ((__tmp153918
                                    (let ((__tmp153935
                                           (let ((__tmp153936
                                                  (let ((__tmp153937
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153937))))
                                             (declare (not safe))
                                             (cons __tmp153936 '())))
                                          (__tmp153919
                                           (let ((__tmp153920
                                                  (lambda (_i153148_ _r153149_)
                                                    (let ((__tmp153921
                                                           (let ((__tmp153922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153932
                                 (let ((__tmp153933
                                        (let ((__tmp153934
                                               (##structure-ref
                                                _self153066_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153934 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153933)))
                                (__tmp153923
                                 (let ((__tmp153929
                                        (let ((__tmp153930
                                               (let ((__tmp153931
                                                      (car _i153148_)))
                                                 (declare (not safe))
                                                 (cons __tmp153931 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153930)))
                                       (__tmp153924
                                        (let ((__tmp153927
                                               (let ((__tmp153928
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj153104_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153928)))
                                              (__tmp153925
                                               (let ((__tmp153926
                                                      (cdr _i153148_)))
                                                 (declare (not safe))
                                                 (cons __tmp153926 '()))))
                                          (declare (not safe))
                                          (cons __tmp153927 __tmp153925))))
                                   (declare (not safe))
                                   (cons __tmp153929 __tmp153924))))
                            (declare (not safe))
                            (cons __tmp153932 __tmp153923))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153922))))
              (declare (not safe))
              (cons __tmp153921 _r153149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153920
                                                     '()
                                                     _initializers153109_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp153935 __tmp153919))))
                               (declare (not safe))
                               (cons '%#begin __tmp153918))))
                        (declare (not safe))
                        (cons __tmp153917 '()))))
                 (declare (not safe))
                 (cons __tmp153938 __tmp153916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153915))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153914
                                            _stx153068_))))
                                      (___kont153641153642_
                                       (lambda ()
                                         (let ((__tmp153942
                                                (let ((__tmp153943
                                                       (let ((__tmp153957
                                                              (let ((__tmp153958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153960
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153104_ '())))
                                   (__tmp153959
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153081_ '()))))
                               (declare (not safe))
                               (cons __tmp153960 __tmp153959))))
                        (declare (not safe))
                        (cons __tmp153958 '())))
                     (__tmp153944
                      (let ((__tmp153945
                             (let ((__tmp153946
                                    (let ((__tmp153950
                                           (let ((__tmp153951
                                                  (let ((__tmp153955
                                                         (let ((__tmp153956
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp153956)))
                (__tmp153952
                 (let ((__tmp153953
                        (let ((__tmp153954
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj153104_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153954))))
                   (declare (not safe))
                   (cons __tmp153953 _args153079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153955
                                                          __tmp153952))))
                                             (declare (not safe))
                                             (cons '%#call __tmp153951)))
                                          (__tmp153947
                                           (let ((__tmp153948
                                                  (let ((__tmp153949
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153949))))
                                             (declare (not safe))
                                             (cons __tmp153948 '()))))
                                      (declare (not safe))
                                      (cons __tmp153950 __tmp153947))))
                               (declare (not safe))
                               (cons '%#begin __tmp153946))))
                        (declare (not safe))
                        (cons __tmp153945 '()))))
                 (declare (not safe))
                 (cons __tmp153957 __tmp153944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153943))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153942
                                            _stx153068_)))))
                                  (let* ((_g153111153151_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx153635153636_))
                                                (___kont153639153640_)
                                                (___kont153641153642_))))
                                         (___match153672153673_
                                          (lambda (_e153120153156_
                                                   _hd153119153159_
                                                   _tl153118153161_
                                                   _e153123153164_
                                                   _hd153122153167_
                                                   _tl153121153169_
                                                   _e153126153172_
                                                   _hd153125153175_
                                                   _tl153124153177_
                                                   _e153129153180_
                                                   _hd153128153183_
                                                   _tl153127153185_)
                                            (let ((_L153188_ _tl153127153185_)
                                                  (_L153189_ _hd153128153183_)
                                                  (_L153190_ _hd153125153175_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L153190_))
                                                  (___kont153637153638_
                                                   _L153188_
                                                   _L153189_
                                                   _L153190_)
                                                  (___kont153641153642_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx153635153636_))
                                        (let ((_e153120153156_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx153635153636_))))
                                          (let ((_tl153118153161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153120153156_)))
                                                (_hd153119153159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153120153156_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd153119153159_))
                                                (let ((_e153123153164_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd153119153159_))))
                                                  (let ((_tl153121153169_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153123153164_)))
                                                        (_hd153122153167_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153123153164_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd153122153167_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd153122153167_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl153121153169_))
                        (let ((_e153126153172_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153121153169_))))
                          (let ((_tl153124153177_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153126153172_)))
                                (_hd153125153175_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153126153172_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl153124153177_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl153118153161_))
                                    (let ((_e153129153180_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl153118153161_))))
                                      (let ((_tl153127153185_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e153129153180_)))
                                            (_hd153128153183_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e153129153180_))))
                                        (___match153672153673_
                                         _e153120153156_
                                         _hd153119153159_
                                         _tl153118153161_
                                         _e153123153164_
                                         _hd153122153167_
                                         _tl153121153169_
                                         _e153126153172_
                                         _hd153125153175_
                                         _tl153124153177_
                                         _e153129153180_
                                         _hd153128153183_
                                         _tl153127153185_)))
                                    (___kont153641153642_))
                                (___kont153641153642_))))
                        (___kont153641153642_))
                    (___kont153641153642_))
                (___kont153641153642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont153641153642_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g153111153151_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass153558 __method-table153559)
        (let ((__id153560
               (let ((__slot153561
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153558 'id))))
                 (if __slot153561
                     __slot153561
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153066_ _ctx153067_ _stx153068_ _args153069_)
            (let* ((_klass153071_
                    (let ((__tmp154083
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self153066_
                              __id153560
                              __klass153558
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx153068_ __tmp154083)))
                   (_fields153073_
                    (length (##structure-ref
                             _klass153071_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args153079_
                    (map (lambda (_g153074153076_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx153067_ _g153074153076_)))
                         _args153069_))
                   (_inline-make-object153081_
                    (let ((__tmp154084
                           (let ((__tmp154090
                                  (let ((__tmp154091
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154091)))
                                 (__tmp154085
                                  (let ((__tmp154087
                                         (let ((__tmp154088
                                                (let ((__tmp154089
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153066_
                                                          __id153560
                                                          __klass153558
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154089 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154088)))
                                        (__tmp154086
                                         (make-list
                                          _fields153073_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp154087 __tmp154086))))
                             (declare (not safe))
                             (cons __tmp154090 __tmp154085))))
                      (declare (not safe))
                      (cons '%#call __tmp154084))))
              (let ((_$e153084_
                     (##structure-ref _klass153071_ '6 gxc#!class::t '#f)))
                (if _$e153084_
                    ((lambda (_ctor153087_)
                       (let ((_$obj153089_
                              (let ((__tmp154192 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp154192)))
                             (_ctor-impl153090_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass153071_
                                 _ctor153087_))))
                         (let ((__tmp154193
                                (let ((__tmp154194
                                       (let ((__tmp154262
                                              (let ((__tmp154263
                                                     (let ((__tmp154265
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj153089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154264
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object153081_ '()))))
               (declare (not safe))
               (cons __tmp154265 __tmp154264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154263 '())))
                                             (__tmp154195
                                              (let ((__tmp154196
                                                     (let ((__tmp154197
                                                            (let ((__tmp154201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl153090_
                               (let ((__tmp154256
                                      (let ((__tmp154260
                                             (let ((__tmp154261
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl153090_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154261)))
                                            (__tmp154257
                                             (let ((__tmp154258
                                                    (let ((__tmp154259
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj153089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154258
                                                     _args153079_))))
                                        (declare (not safe))
                                        (cons __tmp154260 __tmp154257))))
                                 (declare (not safe))
                                 (cons '%#call __tmp154256))
                               (let* ((_$ctor153092_
                                       (let ((__tmp154202
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp154202)))
                                      (__tmp154203
                                       (let ((__tmp154238
                                              (let ((__tmp154239
                                                     (let ((__tmp154255
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor153092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154240
                    (let ((__tmp154241
                           (let ((__tmp154242
                                  (let ((__tmp154253
                                         (let ((__tmp154254
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154254)))
                                        (__tmp154243
                                         (let ((__tmp154250
                                                (let ((__tmp154251
                                                       (let ((__tmp154252
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self153066_
                         __id153560
                         __klass153558
                         '#f))))
                 (declare (not safe))
                 (cons __tmp154252 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154251)))
                                               (__tmp154244
                                                (let ((__tmp154248
                                                       (let ((__tmp154249
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153089_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154249)))
              (__tmp154245
               (let ((__tmp154246
                      (let ((__tmp154247
                             (let ()
                               (declare (not safe))
                               (cons _ctor153087_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154247))))
                 (declare (not safe))
                 (cons __tmp154246 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154248
                                                        __tmp154245))))
                                           (declare (not safe))
                                           (cons __tmp154250 __tmp154244))))
                                    (declare (not safe))
                                    (cons __tmp154253 __tmp154243))))
                             (declare (not safe))
                             (cons '%#call __tmp154242))))
                      (declare (not safe))
                      (cons __tmp154241 '()))))
               (declare (not safe))
               (cons __tmp154255 __tmp154240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154239 '())))
                                             (__tmp154204
                                              (let ((__tmp154205
                                                     (let ((__tmp154206
                                                            (let ((__tmp154236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154237
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor153092_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154237)))
                          (__tmp154207
                           (let ((__tmp154229
                                  (let ((__tmp154230
                                         (let ((__tmp154234
                                                (let ((__tmp154235
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor153092_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154235)))
                                               (__tmp154231
                                                (let ((__tmp154232
                                                       (let ((__tmp154233
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153089_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154232
                                                        _args153079_))))
                                           (declare (not safe))
                                           (cons __tmp154234 __tmp154231))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154230)))
                                 (__tmp154208
                                  (let ((__tmp154209
                                         (let ((__tmp154210
                                                (let ((__tmp154227
                                                       (let ((__tmp154228
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154228)))
              (__tmp154211
               (let ((__tmp154225
                      (let ((__tmp154226
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154226)))
                     (__tmp154212
                      (let ((__tmp154223
                             (let ((__tmp154224
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154224)))
                            (__tmp154213
                             (let ((__tmp154220
                                    (let ((__tmp154221
                                           (let ((__tmp154222
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153066_
                                                     __id153560
                                                     __klass153558
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154222 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154221)))
                                   (__tmp154214
                                    (let ((__tmp154218
                                           (let ((__tmp154219
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154219)))
                                          (__tmp154215
                                           (let ((__tmp154216
                                                  (let ((__tmp154217
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor153087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp154217))))
                                             (declare (not safe))
                                             (cons __tmp154216 '()))))
                                      (declare (not safe))
                                      (cons __tmp154218 __tmp154215))))
                               (declare (not safe))
                               (cons __tmp154220 __tmp154214))))
                        (declare (not safe))
                        (cons __tmp154223 __tmp154213))))
                 (declare (not safe))
                 (cons __tmp154225 __tmp154212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154227
                                                        __tmp154211))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154210))))
                                    (declare (not safe))
                                    (cons __tmp154209 '()))))
                             (declare (not safe))
                             (cons __tmp154229 __tmp154208))))
                      (declare (not safe))
                      (cons __tmp154236 __tmp154207))))
               (declare (not safe))
               (cons '%#if __tmp154206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154205 '()))))
                                         (declare (not safe))
                                         (cons __tmp154238 __tmp154204))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp154203))))
                          (__tmp154198
                           (let ((__tmp154199
                                  (let ((__tmp154200
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj153089_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154200))))
                             (declare (not safe))
                             (cons __tmp154199 '()))))
                      (declare (not safe))
                      (cons __tmp154201 __tmp154198))))
               (declare (not safe))
               (cons '%#begin __tmp154197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154196 '()))))
                                         (declare (not safe))
                                         (cons __tmp154262 __tmp154195))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154194))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154193 _stx153068_))))
                     _$e153084_)
                    (let ((_$e153094_
                           (##structure-ref
                            _klass153071_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e153094_
                          ((lambda (_metaclass153097_)
                             (let* ((_$obj153099_
                                     (let ((__tmp154154 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154154)))
                                    (_metakons153101_
                                     (let ((__tmp154155
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx153068_
                                               _metaclass153097_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp154155
                                        'instance-init!))))
                               (let ((__tmp154156
                                      (let ((__tmp154157
                                             (let ((__tmp154188
                                                    (let ((__tmp154189
                                                           (let ((__tmp154191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153099_ '())))
                         (__tmp154190
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object153081_ '()))))
                     (declare (not safe))
                     (cons __tmp154191 __tmp154190))))
              (declare (not safe))
              (cons __tmp154189 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154158
                                                    (let ((__tmp154159
                                                           (let ((__tmp154160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154164
                                 (if _metakons153101_
                                     (let ((__tmp154178
                                            (let ((__tmp154186
                                                   (let ((__tmp154187
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons153101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154187)))
                                                  (__tmp154179
                                                   (let ((__tmp154183
                                                          (let ((__tmp154184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154185
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153066_
                                   __id153560
                                   __klass153558
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154185 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154184)))
                 (__tmp154180
                  (let ((__tmp154181
                         (let ((__tmp154182
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj153099_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp154182))))
                    (declare (not safe))
                    (cons __tmp154181 _args153079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154183
                                                           __tmp154180))))
                                              (declare (not safe))
                                              (cons __tmp154186 __tmp154179))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154178))
                                     (let ((__tmp154165
                                            (let ((__tmp154176
                                                   (let ((__tmp154177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154177)))
                                                  (__tmp154166
                                                   (let ((__tmp154173
                                                          (let ((__tmp154174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154175
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153066_
                                   __id153560
                                   __klass153558
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154175 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154174)))
                 (__tmp154167
                  (let ((__tmp154171
                         (let ((__tmp154172
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154172)))
                        (__tmp154168
                         (let ((__tmp154169
                                (let ((__tmp154170
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj153099_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154170))))
                           (declare (not safe))
                           (cons __tmp154169 _args153079_))))
                    (declare (not safe))
                    (cons __tmp154171 __tmp154168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154173
                                                           __tmp154167))))
                                              (declare (not safe))
                                              (cons __tmp154176 __tmp154166))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154165))))
                                (__tmp154161
                                 (let ((__tmp154162
                                        (let ((__tmp154163
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj153099_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp154163))))
                                   (declare (not safe))
                                   (cons __tmp154162 '()))))
                            (declare (not safe))
                            (cons __tmp154164 __tmp154161))))
                     (declare (not safe))
                     (cons '%#begin __tmp154160))))
              (declare (not safe))
              (cons __tmp154159 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154188
                                                     __tmp154158))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp154157))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154156
                                  _stx153068_))))
                           _$e153094_)
                          (if (##structure-ref
                               _klass153071_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args153079_) _fields153073_)
                                  (let ((__tmp154146
                                         (let ((__tmp154147
                                                (let ((__tmp154152
                                                       (let ((__tmp154153
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154153)))
              (__tmp154148
               (let ((__tmp154149
                      (let ((__tmp154150
                             (let ((__tmp154151
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self153066_
                                       __id153560
                                       __klass153558
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp154151 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154150))))
                 (declare (not safe))
                 (cons __tmp154149 _args153079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154152
                                                        __tmp154148))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154147))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp154146
                                     _stx153068_))
                                  (let ((__tmp154145
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self153066_
                                            __id153560
                                            __klass153558
                                            '#f)))
                                        (__tmp154144
                                         (length (##structure-ref
                                                  _klass153071_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx153068_
                                     __tmp154145
                                     __tmp154144)))
                              (let ((_$obj153104_
                                     (let ((__tmp154092 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154092))))
                                (let _lp153106_ ((_rest153108_ _args153079_)
                                                 (_initializers153109_ '()))
                                  (let* ((___stx153677153678_ _rest153108_)
                                         (_g153113153134_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx153677153678_)))))
                                    (let ((___kont153679153680_
                                           (lambda (_L153188_
                                                    _L153189_
                                                    _L153190_)
                                             (let* ((_slot153221_
                                                     (let ((__tmp154093
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L153190_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp154093)))
                                                    (_off153223_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153071_
                                                        _slot153221_))))
                                               (if _off153223_
                                                   (let ((__tmp154095
                                                          (let ((__tmp154096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off153223_ _L153189_))))
                    (declare (not safe))
                    (cons __tmp154096 _initializers153109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp153106_
                                                      _L153188_
                                                      __tmp154095))
                                                   (let ((__tmp154094
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self153066_
                                                             __id153560
                                                             __klass153558
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx153068_
                                                      __tmp154094
                                                      _slot153221_))))))
                                          (___kont153681153682_
                                           (lambda ()
                                             (let ((__tmp154097
                                                    (let ((__tmp154098
                                                           (let ((__tmp154121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154122
                                 (let ((__tmp154124
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153104_ '())))
                                       (__tmp154123
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153081_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154124 __tmp154123))))
                            (declare (not safe))
                            (cons __tmp154122 '())))
                         (__tmp154099
                          (let ((__tmp154100
                                 (let ((__tmp154101
                                        (let ((__tmp154118
                                               (let ((__tmp154119
                                                      (let ((__tmp154120
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153104_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154119 '())))
                                              (__tmp154102
                                               (let ((__tmp154103
                                                      (lambda (_i153148_
                                                               _r153149_)
                                                        (let ((__tmp154104
                                                               (let ((__tmp154105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154115
                                     (let ((__tmp154116
                                            (let ((__tmp154117
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153066_
                                                      __id153560
                                                      __klass153558
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154117 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154116)))
                                    (__tmp154106
                                     (let ((__tmp154112
                                            (let ((__tmp154113
                                                   (let ((__tmp154114
                                                          (car _i153148_)))
                                                     (declare (not safe))
                                                     (cons __tmp154114 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154113)))
                                           (__tmp154107
                                            (let ((__tmp154110
                                                   (let ((__tmp154111
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154111)))
                                                  (__tmp154108
                                                   (let ((__tmp154109
                                                          (cdr _i153148_)))
                                                     (declare (not safe))
                                                     (cons __tmp154109 '()))))
                                              (declare (not safe))
                                              (cons __tmp154110 __tmp154108))))
                                       (declare (not safe))
                                       (cons __tmp154112 __tmp154107))))
                                (declare (not safe))
                                (cons __tmp154115 __tmp154106))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp154105))))
                  (declare (not safe))
                  (cons __tmp154104 _r153149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp154103
                                                         '()
                                                         _initializers153109_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp154118
                                                  __tmp154102))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154101))))
                            (declare (not safe))
                            (cons __tmp154100 '()))))
                     (declare (not safe))
                     (cons __tmp154121 __tmp154099))))
              (declare (not safe))
              (cons '%#let-values __tmp154098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154097
                                                _stx153068_))))
                                          (___kont153683153684_
                                           (lambda ()
                                             (let ((__tmp154125
                                                    (let ((__tmp154126
                                                           (let ((__tmp154140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154141
                                 (let ((__tmp154143
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153104_ '())))
                                       (__tmp154142
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153081_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154143 __tmp154142))))
                            (declare (not safe))
                            (cons __tmp154141 '())))
                         (__tmp154127
                          (let ((__tmp154128
                                 (let ((__tmp154129
                                        (let ((__tmp154133
                                               (let ((__tmp154134
                                                      (let ((__tmp154138
                                                             (let ((__tmp154139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154139)))
                    (__tmp154135
                     (let ((__tmp154136
                            (let ((__tmp154137
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153104_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154137))))
                       (declare (not safe))
                       (cons __tmp154136 _args153079_))))
                (declare (not safe))
                (cons __tmp154138 __tmp154135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp154134)))
                                              (__tmp154130
                                               (let ((__tmp154131
                                                      (let ((__tmp154132
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153104_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154131 '()))))
                                          (declare (not safe))
                                          (cons __tmp154133 __tmp154130))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154129))))
                            (declare (not safe))
                            (cons __tmp154128 '()))))
                     (declare (not safe))
                     (cons __tmp154140 __tmp154127))))
              (declare (not safe))
              (cons '%#let-values __tmp154126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154125
                                                _stx153068_)))))
                                      (let* ((_g153111153151_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx153677153678_))
                                                    (___kont153681153682_)
                                                    (___kont153683153684_))))
                                             (___match153714153715_
                                              (lambda (_e153120153156_
                                                       _hd153119153159_
                                                       _tl153118153161_
                                                       _e153123153164_
                                                       _hd153122153167_
                                                       _tl153121153169_
                                                       _e153126153172_
                                                       _hd153125153175_
                                                       _tl153124153177_
                                                       _e153129153180_
                                                       _hd153128153183_
                                                       _tl153127153185_)
                                                (let ((_L153188_
                                                       _tl153127153185_)
                                                      (_L153189_
                                                       _hd153128153183_)
                                                      (_L153190_
                                                       _hd153125153175_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L153190_))
                                                      (___kont153679153680_
                                                       _L153188_
                                                       _L153189_
                                                       _L153190_)
                                                      (___kont153683153684_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx153677153678_))
                                            (let ((_e153120153156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx153677153678_))))
                                              (let ((_tl153118153161_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e153120153156_)))
                                                    (_hd153119153159_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e153120153156_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd153119153159_))
                                                    (let ((_e153123153164_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd153119153159_))))
                                                      (let ((_tl153121153169_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e153123153164_)))
                    (_hd153122153167_
                     (let () (declare (not safe)) (##car _e153123153164_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd153122153167_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd153122153167_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153121153169_))
                            (let ((_e153126153172_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl153121153169_))))
                              (let ((_tl153124153177_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153126153172_)))
                                    (_hd153125153175_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153126153172_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153124153177_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl153118153161_))
                                        (let ((_e153129153180_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl153118153161_))))
                                          (let ((_tl153127153185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153129153180_)))
                                                (_hd153128153183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153129153180_))))
                                            (___match153714153715_
                                             _e153120153156_
                                             _hd153119153159_
                                             _tl153118153161_
                                             _e153123153164_
                                             _hd153122153167_
                                             _tl153121153169_
                                             _e153126153172_
                                             _hd153125153175_
                                             _tl153124153177_
                                             _e153129153180_
                                             _hd153128153183_
                                             _tl153127153185_)))
                                        (___kont153683153684_))
                                    (___kont153683153684_))))
                            (___kont153683153684_))
                        (___kont153683153684_))
                    (___kont153683153684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont153683153684_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g153111153151_))))))))))))))))))
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
      (lambda (_self152888_ _ctx152889_ _stx152890_ _args152891_)
        (let* ((_g152893152903_
                (lambda (_g152894152900_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152894152900_))))
               (_g152892152941_
                (lambda (_g152894152906_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152894152906_))
                      (let ((_e152898152908_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152894152906_))))
                        (let ((_hd152897152911_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152898152908_)))
                              (_tl152896152913_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152898152908_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152896152913_))
                              ((lambda (_L152916_)
                                 (let* ((_klass152927_
                                         (let ((__tmp154266
                                                (##structure-ref
                                                 _self152888_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152890_
                                            __tmp154266)))
                                        (_field152929_
                                         (let ((__tmp154267
                                                (##structure-ref
                                                 _self152888_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152927_
                                            __tmp154267)))
                                        (_object152931_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152889_
                                            _L152916_))))
                                   (if (##structure-ref
                                        _klass152927_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp154344
                                              (let ((__tmp154353
                                                     (if (##structure-ref
                                                          _self152888_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp154345
                                                     (let ((__tmp154350
                                                            (let ((__tmp154351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154352
                                  (##structure-ref
                                   _self152888_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp154352 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154351)))
                   (__tmp154346
                    (let ((__tmp154348
                           (let ((__tmp154349
                                  (let ()
                                    (declare (not safe))
                                    (cons _field152929_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp154349)))
                          (__tmp154347
                           (let ()
                             (declare (not safe))
                             (cons _object152931_ '()))))
                      (declare (not safe))
                      (cons __tmp154348 __tmp154347))))
               (declare (not safe))
               (cons __tmp154350 __tmp154346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154353
                                                      __tmp154345))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154344
                                          _stx152890_))
                                       (if (##structure-ref
                                            _klass152927_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154334
                                                  (let ((__tmp154343
                                                         (if (##structure-ref
                                                              _self152888_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp154335
                                                         (let ((__tmp154340
                                                                (let ((__tmp154341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154342
                                      (##structure-ref
                                       _self152888_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154342 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154341)))
                       (__tmp154336
                        (let ((__tmp154338
                               (let ((__tmp154339
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152929_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154339)))
                              (__tmp154337
                               (let ()
                                 (declare (not safe))
                                 (cons _object152931_ '()))))
                          (declare (not safe))
                          (cons __tmp154338 __tmp154337))))
                   (declare (not safe))
                   (cons __tmp154340 __tmp154336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154343
                                                          __tmp154335))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154334
                                              _stx152890_))
                                           (let ((_$e152934_
                                                  (let ((__tmp154268
                                                         (##structure-ref
                                                          _self152888_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152927_
                                                     __tmp154268))))
                                             (if _$e152934_
                                                 ((lambda (_klass152937_)
                                                    (let ((__tmp154324
                                                           (let ((__tmp154333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152888_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp154325
                          (let ((__tmp154330
                                 (let ((__tmp154331
                                        (let ((__tmp154332
                                               (##structure-ref
                                                _self152888_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154332 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154331)))
                                (__tmp154326
                                 (let ((__tmp154328
                                        (let ((__tmp154329
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field152929_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154329)))
                                       (__tmp154327
                                        (let ()
                                          (declare (not safe))
                                          (cons _object152931_ '()))))
                                   (declare (not safe))
                                   (cons __tmp154328 __tmp154327))))
                            (declare (not safe))
                            (cons __tmp154330 __tmp154326))))
                     (declare (not safe))
                     (cons __tmp154333 __tmp154325))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp154324 _stx152890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e152934_)
                                                 (if (##structure-ref
                                                      _self152888_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp154278
                                                            (let* ((_$obj152939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154279 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp154279)))
                           (__tmp154280
                            (let ((__tmp154320
                                   (let ((__tmp154321
                                          (let ((__tmp154323
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj152939_ '())))
                                                (__tmp154322
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object152931_ '()))))
                                            (declare (not safe))
                                            (cons __tmp154323 __tmp154322))))
                                     (declare (not safe))
                                     (cons __tmp154321 '())))
                                  (__tmp154281
                                   (let ((__tmp154282
                                          (let ((__tmp154283
                                                 (let ((__tmp154312
                                                        (let ((__tmp154313
                                                               (let ((__tmp154317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154318
                                     (let ((__tmp154319
                                            (##structure-ref
                                             _klass152927_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp154319 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp154318)))
                             (__tmp154314
                              (let ((__tmp154315
                                     (let ((__tmp154316
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj152939_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154316))))
                                (declare (not safe))
                                (cons __tmp154315 '()))))
                         (declare (not safe))
                         (cons __tmp154317 __tmp154314))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp154313)))
               (__tmp154284
                (let ((__tmp154301
                       (let ((__tmp154302
                              (let ((__tmp154309
                                     (let ((__tmp154310
                                            (let ((__tmp154311
                                                   (##structure-ref
                                                    _self152888_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp154311 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154310)))
                                    (__tmp154303
                                     (let ((__tmp154307
                                            (let ((__tmp154308
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152929_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154308)))
                                           (__tmp154304
                                            (let ((__tmp154305
                                                   (let ((__tmp154306
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154306))))
                                              (declare (not safe))
                                              (cons __tmp154305 '()))))
                                       (declare (not safe))
                                       (cons __tmp154307 __tmp154304))))
                                (declare (not safe))
                                (cons __tmp154309 __tmp154303))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp154302)))
                      (__tmp154285
                       (let ((__tmp154286
                              (let ((__tmp154287
                                     (let ((__tmp154299
                                            (let ((__tmp154300
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154300)))
                                           (__tmp154288
                                            (let ((__tmp154296
                                                   (let ((__tmp154297
                                                          (let ((__tmp154298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152888_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp154298 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154297)))
                                                  (__tmp154289
                                                   (let ((__tmp154294
                                                          (let ((__tmp154295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj152939_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154295)))
                 (__tmp154290
                  (let ((__tmp154291
                         (let ((__tmp154292
                                (let ((__tmp154293
                                       (##structure-ref
                                        _self152888_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp154293 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154292))))
                    (declare (not safe))
                    (cons __tmp154291 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154294
                                                           __tmp154290))))
                                              (declare (not safe))
                                              (cons __tmp154296 __tmp154289))))
                                       (declare (not safe))
                                       (cons __tmp154299 __tmp154288))))
                                (declare (not safe))
                                (cons '%#call __tmp154287))))
                         (declare (not safe))
                         (cons __tmp154286 '()))))
                  (declare (not safe))
                  (cons __tmp154301 __tmp154285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154312
                                                         __tmp154284))))
                                            (declare (not safe))
                                            (cons '%#if __tmp154283))))
                                     (declare (not safe))
                                     (cons __tmp154282 '()))))
                              (declare (not safe))
                              (cons __tmp154320 __tmp154281))))
                      (declare (not safe))
                      (cons '%#let-values __tmp154280))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154278 _stx152890_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp154269
                                                            (let ((__tmp154270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154276
                                  (let ((__tmp154277
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154277)))
                                 (__tmp154271
                                  (let ((__tmp154272
                                         (let ((__tmp154273
                                                (let ((__tmp154274
                                                       (let ((__tmp154275
                                                              (##structure-ref
                                                               _self152888_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp154275
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp154274))))
                                           (declare (not safe))
                                           (cons __tmp154273 '()))))
                                    (declare (not safe))
                                    (cons _object152931_ __tmp154272))))
                             (declare (not safe))
                             (cons __tmp154276 __tmp154271))))
                      (declare (not safe))
                      (cons '%#call __tmp154270))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154269 _stx152890_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152897152911_)
                              (let ()
                                (declare (not safe))
                                (_g152893152903_ _g152894152906_)))))
                      (let ()
                        (declare (not safe))
                        (_g152893152903_ _g152894152906_))))))
          (declare (not safe))
          (_g152892152941_ _args152891_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass153562 __method-table153563)
        (let ((__id153564
               (let ((__slot153567
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153562 'id))))
                 (if __slot153567
                     __slot153567
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?153565
               (let ((__slot153568
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153562 'checked?))))
                 (if __slot153568
                     __slot153568
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot153566
               (let ((__slot153569
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153562 'slot))))
                 (if __slot153569
                     __slot153569
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self152888_ _ctx152889_ _stx152890_ _args152891_)
            (let* ((_g152893152903_
                    (lambda (_g152894152900_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152894152900_))))
                   (_g152892152941_
                    (lambda (_g152894152906_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152894152906_))
                          (let ((_e152898152908_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152894152906_))))
                            (let ((_hd152897152911_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152898152908_)))
                                  (_tl152896152913_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152898152908_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152896152913_))
                                  ((lambda (_L152916_)
                                     (let* ((_klass152927_
                                             (let ((__tmp154354
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152888_
                                                       __id153564
                                                       __klass153562
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152890_
                                                __tmp154354)))
                                            (_field152929_
                                             (let ((__tmp154355
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152888_
                                                       __slot153566
                                                       __klass153562
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152927_
                                                __tmp154355)))
                                            (_object152931_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152889_
                                                _L152916_))))
                                       (if (##structure-ref
                                            _klass152927_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154432
                                                  (let ((__tmp154441
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152888_
                        __checked?153565
                        __klass153562
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp154433
                 (let ((__tmp154438
                        (let ((__tmp154439
                               (let ((__tmp154440
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152888_
                                         __id153564
                                         __klass153562
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp154440 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154439)))
                       (__tmp154434
                        (let ((__tmp154436
                               (let ((__tmp154437
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152929_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154437)))
                              (__tmp154435
                               (let ()
                                 (declare (not safe))
                                 (cons _object152931_ '()))))
                          (declare (not safe))
                          (cons __tmp154436 __tmp154435))))
                   (declare (not safe))
                   (cons __tmp154438 __tmp154434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154441
                                                          __tmp154433))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154432
                                              _stx152890_))
                                           (if (##structure-ref
                                                _klass152927_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154422
                                                      (let ((__tmp154431
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152888_
                            __checked?153565
                            __klass153562
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp154423
                     (let ((__tmp154428
                            (let ((__tmp154429
                                   (let ((__tmp154430
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152888_
                                             __id153564
                                             __klass153562
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp154430 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154429)))
                           (__tmp154424
                            (let ((__tmp154426
                                   (let ((__tmp154427
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152929_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154427)))
                                  (__tmp154425
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152931_ '()))))
                              (declare (not safe))
                              (cons __tmp154426 __tmp154425))))
                       (declare (not safe))
                       (cons __tmp154428 __tmp154424))))
                (declare (not safe))
                (cons __tmp154431 __tmp154423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154422
                                                  _stx152890_))
                                               (let ((_$e152934_
                                                      (let ((__tmp154356
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152888_
                        __slot153566
                        __klass153562
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152927_ __tmp154356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e152934_
                                                     ((lambda (_klass152937_)
                                                        (let ((__tmp154412
                                                               (let ((__tmp154421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152888_
                                     __checked?153565
                                     __klass153562
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp154413
                              (let ((__tmp154418
                                     (let ((__tmp154419
                                            (let ((__tmp154420
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152888_
                                                      __id153564
                                                      __klass153562
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154420 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154419)))
                                    (__tmp154414
                                     (let ((__tmp154416
                                            (let ((__tmp154417
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152929_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154417)))
                                           (__tmp154415
                                            (let ()
                                              (declare (not safe))
                                              (cons _object152931_ '()))))
                                       (declare (not safe))
                                       (cons __tmp154416 __tmp154415))))
                                (declare (not safe))
                                (cons __tmp154418 __tmp154414))))
                         (declare (not safe))
                         (cons __tmp154421 __tmp154413))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp154412 _stx152890_)))
              _$e152934_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152888_
                                                            __checked?153565
                                                            __klass153562
                                                            '#f))
                                                         (let ((__tmp154366
                                                                (let* ((_$obj152939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp154367 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp154367)))
                               (__tmp154368
                                (let ((__tmp154408
                                       (let ((__tmp154409
                                              (let ((__tmp154411
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj152939_
                                                             '())))
                                                    (__tmp154410
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object152931_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp154411
                                                      __tmp154410))))
                                         (declare (not safe))
                                         (cons __tmp154409 '())))
                                      (__tmp154369
                                       (let ((__tmp154370
                                              (let ((__tmp154371
                                                     (let ((__tmp154400
                                                            (let ((__tmp154401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154405
                                  (let ((__tmp154406
                                         (let ((__tmp154407
                                                (##structure-ref
                                                 _klass152927_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp154407 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp154406)))
                                 (__tmp154402
                                  (let ((__tmp154403
                                         (let ((__tmp154404
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj152939_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154404))))
                                    (declare (not safe))
                                    (cons __tmp154403 '()))))
                             (declare (not safe))
                             (cons __tmp154405 __tmp154402))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp154401)))
                   (__tmp154372
                    (let ((__tmp154389
                           (let ((__tmp154390
                                  (let ((__tmp154397
                                         (let ((__tmp154398
                                                (let ((__tmp154399
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152888_
                                                          __id153564
                                                          __klass153562
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154399 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154398)))
                                        (__tmp154391
                                         (let ((__tmp154395
                                                (let ((__tmp154396
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152929_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154396)))
                                               (__tmp154392
                                                (let ((__tmp154393
                                                       (let ((__tmp154394
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152939_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154393 '()))))
                                           (declare (not safe))
                                           (cons __tmp154395 __tmp154392))))
                                    (declare (not safe))
                                    (cons __tmp154397 __tmp154391))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp154390)))
                          (__tmp154373
                           (let ((__tmp154374
                                  (let ((__tmp154375
                                         (let ((__tmp154387
                                                (let ((__tmp154388
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154388)))
                                               (__tmp154376
                                                (let ((__tmp154384
                                                       (let ((__tmp154385
                                                              (let ((__tmp154386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152888_
                                __id153564
                                __klass153562
                                '#f))))
                        (declare (not safe))
                        (cons __tmp154386 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154385)))
              (__tmp154377
               (let ((__tmp154382
                      (let ((__tmp154383
                             (let ()
                               (declare (not safe))
                               (cons _$obj152939_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154383)))
                     (__tmp154378
                      (let ((__tmp154379
                             (let ((__tmp154380
                                    (let ((__tmp154381
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152888_
                                              __slot153566
                                              __klass153562
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp154381 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154380))))
                        (declare (not safe))
                        (cons __tmp154379 '()))))
                 (declare (not safe))
                 (cons __tmp154382 __tmp154378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154384
                                                        __tmp154377))))
                                           (declare (not safe))
                                           (cons __tmp154387 __tmp154376))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154375))))
                             (declare (not safe))
                             (cons __tmp154374 '()))))
                      (declare (not safe))
                      (cons __tmp154389 __tmp154373))))
               (declare (not safe))
               (cons __tmp154400 __tmp154372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp154371))))
                                         (declare (not safe))
                                         (cons __tmp154370 '()))))
                                  (declare (not safe))
                                  (cons __tmp154408 __tmp154369))))
                          (declare (not safe))
                          (cons '%#let-values __tmp154368))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154366 _stx152890_))
                 (let ((__tmp154357
                        (let ((__tmp154358
                               (let ((__tmp154364
                                      (let ((__tmp154365
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp154365)))
                                     (__tmp154359
                                      (let ((__tmp154360
                                             (let ((__tmp154361
                                                    (let ((__tmp154362
                                                           (let ((__tmp154363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152888_
                             __slot153566
                             __klass153562
                             '#f))))
                     (declare (not safe))
                     (cons __tmp154363 '()))))
              (declare (not safe))
              (cons '%#quote __tmp154362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154361 '()))))
                                        (declare (not safe))
                                        (cons _object152931_ __tmp154360))))
                                 (declare (not safe))
                                 (cons __tmp154364 __tmp154359))))
                          (declare (not safe))
                          (cons '%#call __tmp154358))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154357 _stx152890_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152897152911_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152893152903_ _g152894152906_)))))
                          (let ()
                            (declare (not safe))
                            (_g152893152903_ _g152894152906_))))))
              (declare (not safe))
              (_g152892152941_ _args152891_))))))
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
      (lambda (_self152692_ _ctx152693_ _stx152694_ _args152695_)
        (let* ((_g152697152711_
                (lambda (_g152698152708_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152698152708_))))
               (_g152696152763_
                (lambda (_g152698152714_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152698152714_))
                      (let ((_e152703152716_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152698152714_))))
                        (let ((_hd152702152719_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152703152716_)))
                              (_tl152701152721_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152703152716_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152701152721_))
                              (let ((_e152706152724_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152701152721_))))
                                (let ((_hd152705152727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152706152724_)))
                                      (_tl152704152729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152706152724_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152704152729_))
                                      ((lambda (_L152732_ _L152733_)
                                         (let* ((_klass152747_
                                                 (let ((__tmp154442
                                                        (##structure-ref
                                                         _self152692_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx152694_
                                                    __tmp154442)))
                                                (_field152749_
                                                 (let ((__tmp154443
                                                        (##structure-ref
                                                         _self152692_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152747_
                                                    __tmp154443)))
                                                (_object152751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152693_
                                                    _L152733_)))
                                                (_value152753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152693_
                                                    _L152732_))))
                                           (if (##structure-ref
                                                _klass152747_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154525
                                                      (let ((__tmp154535
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self152692_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp154526
                     (let ((__tmp154532
                            (let ((__tmp154533
                                   (let ((__tmp154534
                                          (##structure-ref
                                           _self152692_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154534 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154533)))
                           (__tmp154527
                            (let ((__tmp154530
                                   (let ((__tmp154531
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152749_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154531)))
                                  (__tmp154528
                                   (let ((__tmp154529
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152753_ '()))))
                                     (declare (not safe))
                                     (cons _object152751_ __tmp154529))))
                              (declare (not safe))
                              (cons __tmp154530 __tmp154528))))
                       (declare (not safe))
                       (cons __tmp154532 __tmp154527))))
                (declare (not safe))
                (cons __tmp154535 __tmp154526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154525
                                                  _stx152694_))
                                               (if (##structure-ref
                                                    _klass152747_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154514
                                                          (let ((__tmp154524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self152692_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154515
                         (let ((__tmp154521
                                (let ((__tmp154522
                                       (let ((__tmp154523
                                              (##structure-ref
                                               _self152692_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154523 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154522)))
                               (__tmp154516
                                (let ((__tmp154519
                                       (let ((__tmp154520
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152749_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154520)))
                                      (__tmp154517
                                       (let ((__tmp154518
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152753_ '()))))
                                         (declare (not safe))
                                         (cons _object152751_ __tmp154518))))
                                  (declare (not safe))
                                  (cons __tmp154519 __tmp154517))))
                           (declare (not safe))
                           (cons __tmp154521 __tmp154516))))
                    (declare (not safe))
                    (cons __tmp154524 __tmp154515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154514
                                                      _stx152694_))
                                                   (let ((_$e152756_
                                                          (let ((__tmp154444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self152692_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152747_ __tmp154444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152756_
                                                         ((lambda (_klass152759_)
                                                            (let ((__tmp154503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154513
                                  (if (##structure-ref
                                       _self152692_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp154504
                                  (let ((__tmp154510
                                         (let ((__tmp154511
                                                (let ((__tmp154512
                                                       (##structure-ref
                                                        _self152692_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp154512 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154511)))
                                        (__tmp154505
                                         (let ((__tmp154508
                                                (let ((__tmp154509
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152749_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154509)))
                                               (__tmp154506
                                                (let ((__tmp154507
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152753_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152751_
                                                        __tmp154507))))
                                           (declare (not safe))
                                           (cons __tmp154508 __tmp154506))))
                                    (declare (not safe))
                                    (cons __tmp154510 __tmp154505))))
                             (declare (not safe))
                             (cons __tmp154513 __tmp154504))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp154503 _stx152694_)))
                  _$e152756_)
                 (if (##structure-ref _self152692_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp154455
                            (let* ((_$obj152761_
                                    (let ((__tmp154456 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp154456)))
                                   (__tmp154457
                                    (let ((__tmp154499
                                           (let ((__tmp154500
                                                  (let ((__tmp154502
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp154501
                 (let () (declare (not safe)) (cons _object152751_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154502
                                                          __tmp154501))))
                                             (declare (not safe))
                                             (cons __tmp154500 '())))
                                          (__tmp154458
                                           (let ((__tmp154459
                                                  (let ((__tmp154460
                                                         (let ((__tmp154491
                                                                (let ((__tmp154492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154496
                                      (let ((__tmp154497
                                             (let ((__tmp154498
                                                    (##structure-ref
                                                     _klass152747_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp154498 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp154497)))
                                     (__tmp154493
                                      (let ((__tmp154494
                                             (let ((__tmp154495
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152761_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154495))))
                                        (declare (not safe))
                                        (cons __tmp154494 '()))))
                                 (declare (not safe))
                                 (cons __tmp154496 __tmp154493))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp154492)))
                       (__tmp154461
                        (let ((__tmp154479
                               (let ((__tmp154480
                                      (let ((__tmp154488
                                             (let ((__tmp154489
                                                    (let ((__tmp154490
                                                           (##structure-ref
                                                            _self152692_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp154490 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154489)))
                                            (__tmp154481
                                             (let ((__tmp154486
                                                    (let ((__tmp154487
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154487)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154482
                                                    (let ((__tmp154484
                                                           (let ((__tmp154485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152761_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154485)))
                  (__tmp154483
                   (let () (declare (not safe)) (cons _value152753_ '()))))
              (declare (not safe))
              (cons __tmp154484 __tmp154483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154486
                                                     __tmp154482))))
                                        (declare (not safe))
                                        (cons __tmp154488 __tmp154481))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp154480)))
                              (__tmp154462
                               (let ((__tmp154463
                                      (let ((__tmp154464
                                             (let ((__tmp154477
                                                    (let ((__tmp154478
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154478)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154465
                                                    (let ((__tmp154474
                                                           (let ((__tmp154475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154476
                                 (##structure-ref
                                  _self152692_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp154476 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154475)))
                  (__tmp154466
                   (let ((__tmp154472
                          (let ((__tmp154473
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152761_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp154473)))
                         (__tmp154467
                          (let ((__tmp154469
                                 (let ((__tmp154470
                                        (let ((__tmp154471
                                               (##structure-ref
                                                _self152692_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154471 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp154470)))
                                (__tmp154468
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152753_ '()))))
                            (declare (not safe))
                            (cons __tmp154469 __tmp154468))))
                     (declare (not safe))
                     (cons __tmp154472 __tmp154467))))
              (declare (not safe))
              (cons __tmp154474 __tmp154466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154477
                                                     __tmp154465))))
                                        (declare (not safe))
                                        (cons '%#call __tmp154464))))
                                 (declare (not safe))
                                 (cons __tmp154463 '()))))
                          (declare (not safe))
                          (cons __tmp154479 __tmp154462))))
                   (declare (not safe))
                   (cons __tmp154491 __tmp154461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp154460))))
                                             (declare (not safe))
                                             (cons __tmp154459 '()))))
                                      (declare (not safe))
                                      (cons __tmp154499 __tmp154458))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154457))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154455 _stx152694_))
                     (let ((__tmp154445
                            (let ((__tmp154446
                                   (let ((__tmp154453
                                          (let ((__tmp154454
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp154454)))
                                         (__tmp154447
                                          (let ((__tmp154448
                                                 (let ((__tmp154450
                                                        (let ((__tmp154451
                                                               (let ((__tmp154452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self152692_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp154452 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154451)))
               (__tmp154449
                (let () (declare (not safe)) (cons _value152753_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154450
                                                         __tmp154449))))
                                            (declare (not safe))
                                            (cons _object152751_
                                                  __tmp154448))))
                                     (declare (not safe))
                                     (cons __tmp154453 __tmp154447))))
                              (declare (not safe))
                              (cons '%#call __tmp154446))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154445 _stx152694_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152705152727_
                                       _hd152702152719_)
                                      (let ()
                                        (declare (not safe))
                                        (_g152697152711_ _g152698152714_)))))
                              (let ()
                                (declare (not safe))
                                (_g152697152711_ _g152698152714_)))))
                      (let ()
                        (declare (not safe))
                        (_g152697152711_ _g152698152714_))))))
          (declare (not safe))
          (_g152696152763_ _args152695_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass153570 __method-table153571)
        (let ((__id153572
               (let ((__slot153575
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153570 'id))))
                 (if __slot153575
                     __slot153575
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?153573
               (let ((__slot153576
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153570 'checked?))))
                 (if __slot153576
                     __slot153576
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot153574
               (let ((__slot153577
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153570 'slot))))
                 (if __slot153577
                     __slot153577
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self152692_ _ctx152693_ _stx152694_ _args152695_)
            (let* ((_g152697152711_
                    (lambda (_g152698152708_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152698152708_))))
                   (_g152696152763_
                    (lambda (_g152698152714_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152698152714_))
                          (let ((_e152703152716_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152698152714_))))
                            (let ((_hd152702152719_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152703152716_)))
                                  (_tl152701152721_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152703152716_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152701152721_))
                                  (let ((_e152706152724_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152701152721_))))
                                    (let ((_hd152705152727_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152706152724_)))
                                          (_tl152704152729_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152706152724_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152704152729_))
                                          ((lambda (_L152732_ _L152733_)
                                             (let* ((_klass152747_
                                                     (let ((__tmp154536
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152692_
                                                               __id153572
                                                               __klass153570
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx152694_
                                                        __tmp154536)))
                                                    (_field152749_
                                                     (let ((__tmp154537
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152692_
                                                               __slot153574
                                                               __klass153570
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152747_
                                                        __tmp154537)))
                                                    (_object152751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152693_
                                                        _L152733_)))
                                                    (_value152753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152693_
                                                        _L152732_))))
                                               (if (##structure-ref
                                                    _klass152747_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154619
                                                          (let ((__tmp154629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152692_
                                __checked?153573
                                __klass153570
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154620
                         (let ((__tmp154626
                                (let ((__tmp154627
                                       (let ((__tmp154628
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self152692_
                                                 __id153572
                                                 __klass153570
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp154628 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154627)))
                               (__tmp154621
                                (let ((__tmp154624
                                       (let ((__tmp154625
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152749_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154625)))
                                      (__tmp154622
                                       (let ((__tmp154623
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152753_ '()))))
                                         (declare (not safe))
                                         (cons _object152751_ __tmp154623))))
                                  (declare (not safe))
                                  (cons __tmp154624 __tmp154622))))
                           (declare (not safe))
                           (cons __tmp154626 __tmp154621))))
                    (declare (not safe))
                    (cons __tmp154629 __tmp154620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154619
                                                      _stx152694_))
                                                   (if (##structure-ref
                                                        _klass152747_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp154608
                                                              (let ((__tmp154618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self152692_
                                    __checked?153573
                                    __klass153570
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp154609
                             (let ((__tmp154615
                                    (let ((__tmp154616
                                           (let ((__tmp154617
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152692_
                                                     __id153572
                                                     __klass153570
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154617 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154616)))
                                   (__tmp154610
                                    (let ((__tmp154613
                                           (let ((__tmp154614
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152749_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154614)))
                                          (__tmp154611
                                           (let ((__tmp154612
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152753_ '()))))
                                             (declare (not safe))
                                             (cons _object152751_
                                                   __tmp154612))))
                                      (declare (not safe))
                                      (cons __tmp154613 __tmp154611))))
                               (declare (not safe))
                               (cons __tmp154615 __tmp154610))))
                        (declare (not safe))
                        (cons __tmp154618 __tmp154609))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp154608 _stx152694_))
               (let ((_$e152756_
                      (let ((__tmp154538
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152692_
                                __slot153574
                                __klass153570
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152747_
                         __tmp154538))))
                 (if _$e152756_
                     ((lambda (_klass152759_)
                        (let ((__tmp154597
                               (let ((__tmp154607
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152692_
                                             __checked?153573
                                             __klass153570
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp154598
                                      (let ((__tmp154604
                                             (let ((__tmp154605
                                                    (let ((__tmp154606
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self152692_
                                                              __id153572
                                                              __klass153570
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp154606 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154605)))
                                            (__tmp154599
                                             (let ((__tmp154602
                                                    (let ((__tmp154603
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154603)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154600
                                                    (let ((__tmp154601
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152751_ __tmp154601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154602
                                                     __tmp154600))))
                                        (declare (not safe))
                                        (cons __tmp154604 __tmp154599))))
                                 (declare (not safe))
                                 (cons __tmp154607 __tmp154598))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp154597 _stx152694_)))
                      _$e152756_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152692_
                            __checked?153573
                            __klass153570
                            '#f))
                         (let ((__tmp154549
                                (let* ((_$obj152761_
                                        (let ((__tmp154550 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp154550)))
                                       (__tmp154551
                                        (let ((__tmp154593
                                               (let ((__tmp154594
                                                      (let ((__tmp154596
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152761_ '())))
                    (__tmp154595
                     (let () (declare (not safe)) (cons _object152751_ '()))))
                (declare (not safe))
                (cons __tmp154596 __tmp154595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154594 '())))
                                              (__tmp154552
                                               (let ((__tmp154553
                                                      (let ((__tmp154554
                                                             (let ((__tmp154585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154586
                                   (let ((__tmp154590
                                          (let ((__tmp154591
                                                 (let ((__tmp154592
                                                        (##structure-ref
                                                         _klass152747_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp154592 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp154591)))
                                         (__tmp154587
                                          (let ((__tmp154588
                                                 (let ((__tmp154589
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152761_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154589))))
                                            (declare (not safe))
                                            (cons __tmp154588 '()))))
                                     (declare (not safe))
                                     (cons __tmp154590 __tmp154587))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp154586)))
                           (__tmp154555
                            (let ((__tmp154573
                                   (let ((__tmp154574
                                          (let ((__tmp154582
                                                 (let ((__tmp154583
                                                        (let ((__tmp154584
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self152692_
                          __id153572
                          __klass153570
                          '#f))))
                  (declare (not safe))
                  (cons __tmp154584 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154583)))
                                                (__tmp154575
                                                 (let ((__tmp154580
                                                        (let ((__tmp154581
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152749_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154581)))
               (__tmp154576
                (let ((__tmp154578
                       (let ((__tmp154579
                              (let ()
                                (declare (not safe))
                                (cons _$obj152761_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154579)))
                      (__tmp154577
                       (let () (declare (not safe)) (cons _value152753_ '()))))
                  (declare (not safe))
                  (cons __tmp154578 __tmp154577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154580
                                                         __tmp154576))))
                                            (declare (not safe))
                                            (cons __tmp154582 __tmp154575))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp154574)))
                                  (__tmp154556
                                   (let ((__tmp154557
                                          (let ((__tmp154558
                                                 (let ((__tmp154571
                                                        (let ((__tmp154572
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154572)))
               (__tmp154559
                (let ((__tmp154568
                       (let ((__tmp154569
                              (let ((__tmp154570
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self152692_
                                        __id153572
                                        __klass153570
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp154570 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154569)))
                      (__tmp154560
                       (let ((__tmp154566
                              (let ((__tmp154567
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152761_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154567)))
                             (__tmp154561
                              (let ((__tmp154563
                                     (let ((__tmp154564
                                            (let ((__tmp154565
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152692_
                                                      __slot153574
                                                      __klass153570
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154565 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154564)))
                                    (__tmp154562
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152753_ '()))))
                                (declare (not safe))
                                (cons __tmp154563 __tmp154562))))
                         (declare (not safe))
                         (cons __tmp154566 __tmp154561))))
                  (declare (not safe))
                  (cons __tmp154568 __tmp154560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154571
                                                         __tmp154559))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154558))))
                                     (declare (not safe))
                                     (cons __tmp154557 '()))))
                              (declare (not safe))
                              (cons __tmp154573 __tmp154556))))
                       (declare (not safe))
                       (cons __tmp154585 __tmp154555))))
                (declare (not safe))
                (cons '%#if __tmp154554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154553 '()))))
                                          (declare (not safe))
                                          (cons __tmp154593 __tmp154552))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154551))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154549 _stx152694_))
                         (let ((__tmp154539
                                (let ((__tmp154540
                                       (let ((__tmp154547
                                              (let ((__tmp154548
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp154548)))
                                             (__tmp154541
                                              (let ((__tmp154542
                                                     (let ((__tmp154544
                                                            (let ((__tmp154545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154546
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152692_
                                     __slot153574
                                     __klass153570
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp154546 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154545)))
                   (__tmp154543
                    (let () (declare (not safe)) (cons _value152753_ '()))))
               (declare (not safe))
               (cons __tmp154544 __tmp154543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152751_
                                                      __tmp154542))))
                                         (declare (not safe))
                                         (cons __tmp154547 __tmp154541))))
                                  (declare (not safe))
                                  (cons '%#call __tmp154540))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp154539
                            _stx152694_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152705152727_
                                           _hd152702152719_)
                                          (let ()
                                            (declare (not safe))
                                            (_g152697152711_
                                             _g152698152714_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g152697152711_ _g152698152714_)))))
                          (let ()
                            (declare (not safe))
                            (_g152697152711_ _g152698152714_))))))
              (declare (not safe))
              (_g152696152763_ _args152695_))))))
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
      (lambda (_self152525_ _ctx152526_ _stx152527_ _args152528_)
        (let* ((_self152529152538_ _self152525_)
               (_E152531152542_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152529152538_))))
               (_K152532152549_
                (lambda (_inline152545_ _dispatch152546_ _arity152547_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self152525_ _args152528_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx152527_
                         _arity152547_)))
                  (if _inline152545_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp154635
                               (let ((__tmp154636
                                      (_inline152545_ _stx152527_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154636
                                  _stx152527_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx152526_ __tmp154635)))
                      (if _dispatch152546_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch152546_))
                            (let ((__tmp154630
                                   (let ((__tmp154631
                                          (let ((__tmp154632
                                                 (let ((__tmp154633
                                                        (let ((__tmp154634
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch152546_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154633
                                                         _args152528_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154632))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp154631
                                      _stx152527_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx152526_ __tmp154630)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx152526_ _stx152527_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152529152538_ 'gxc#!lambda::t))
              (let* ((_e152533152552_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152529152538_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152534152555_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152529152538_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152558_ _e152534152555_)
                     (_e152535152560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152529152538_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch152563_ _e152535152560_)
                     (_e152536152565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152529152538_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline152568_ _e152536152565_))
                (declare (not safe))
                (_K152532152549_
                 _inline152568_
                 _dispatch152563_
                 _arity152558_))
              (let () (declare (not safe)) (_E152531152542_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self152363_ _ctx152364_ _stx152365_ _args152366_)
        (let* ((_self152367152374_ _self152363_)
               (_E152369152378_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152367152374_))))
               (_K152370152392_
                (lambda (_clauses152381_)
                  (let ((_$e152387_
                         (let ((__tmp154637
                                (lambda (_g152382152384_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g152382152384_
                                     _args152366_)))))
                           (declare (not safe))
                           (find __tmp154637 _clauses152381_))))
                    (if _$e152387_
                        ((lambda (_clause152390_)
                           (let ((__method153848
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause152390_
                                     'optimize-call))))
                             (if __method153848
                                 (__method153848
                                  _clause152390_
                                  _ctx152364_
                                  _stx152365_
                                  _args152366_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause152390_
                                          'optimize-call)))))
                         _$e152387_)
                        (let ((__tmp154638
                               (map gxc#!lambda-arity _clauses152381_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx152365_
                           __tmp154638)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152367152374_
                 'gxc#!case-lambda::t))
              (let* ((_e152371152395_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152367152374_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152372152398_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152367152374_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses152401_ _e152372152398_))
                (declare (not safe))
                (_K152370152392_ _clauses152401_))
              (let () (declare (not safe)) (_E152369152378_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self152177_ _args152178_)
        (let* ((_self152179152186_ _self152177_)
               (_E152181152190_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152179152186_))))
               (_K152182152230_
                (lambda (_arity152193_)
                  (let* ((_arity152194152203_ _arity152193_)
                         (_E152197152207_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity152194152203_)))))
                    (let ((_K152201152227_
                           (lambda ()
                             (fx= (length _args152178_) _arity152193_)))
                          (_K152198152213_
                           (lambda (_arity152211_)
                             (fx>= (length _args152178_) _arity152211_))))
                      (let ((_try-match152196152223_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity152194152203_))
                                   (let ((_tl152200152218_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity152194152203_)))
                                         (_hd152199152216_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity152194152203_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl152200152218_))
                                         (let ((_arity152221_
                                                _hd152199152216_))
                                           (declare (not safe))
                                           (_K152198152213_ _arity152221_))
                                         (let ()
                                           (declare (not safe))
                                           (_E152197152207_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E152197152207_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity152194152203_))
                            (let () (declare (not safe)) (_K152201152227_))
                            (let ()
                              (declare (not safe))
                              (_try-match152196152223_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152179152186_ 'gxc#!lambda::t))
              (let* ((_e152183152233_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152179152186_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152184152236_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152179152186_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152239_ _e152184152236_))
                (declare (not safe))
                (_K152182152230_ _arity152239_))
              (let () (declare (not safe)) (_E152181152190_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self152061_ _ctx152062_ _stx152063_ _args152064_)
        (let* ((_self152065152073_ _self152061_)
               (_E152067152077_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152065152073_))))
               (_K152068152161_
                (lambda (_dispatch152080_ _table152081_)
                  (let* ((_g152082152091_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch152080_)))
                         (_else152084152099_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch152080_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx152062_ _stx152063_))))
                         (_K152086152145_
                          (lambda (_main152102_ _keys152103_)
                            (let ((_g154639_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx152063_
                                      _args152064_))))
                              (begin
                                (let ((_g154640_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g154639_)
                                             (##vector-length _g154639_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g154640_ 2)))
                                      (error "Context expects 2 values"
                                             _g154640_)))
                                (let ((_pargs152105_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154639_ 0)))
                                      (_kwargs152106_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154639_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main152102_))
                                    (if _table152081_
                                        (let ((_xargs152113_
                                               (map (lambda (_key152108_)
                                                      (let ((_$e152110_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key152108_ _kwargs152106_))))
                (if _$e152110_ (values _$e152110_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys152103_)))
                                          (for-each
                                           (lambda (_kw152115_)
                                             (if (memq (car _kw152115_)
                                                       _keys152103_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx152063_
                                                    _keys152103_
                                                    _kw152115_))))
                                           _kwargs152106_)
                                          (let ((__tmp154692
                                                 (let ((__tmp154693
                                                        (let ((__tmp154694
                                                               (let ((__tmp154699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154700
                                     (let ()
                                       (declare (not safe))
                                       (cons _main152102_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154700)))
                             (__tmp154695
                              (let ((__tmp154697
                                     (let ((__tmp154698
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154698)))
                                    (__tmp154696
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs152105_
                                               _xargs152113_))))
                                (declare (not safe))
                                (cons __tmp154697 __tmp154696))))
                         (declare (not safe))
                         (cons __tmp154699 __tmp154695))))
                  (declare (not safe))
                  (cons '%#call __tmp154694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154693
                                                    _stx152063_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152062_
                                             __tmp154692)))
                                        (let* ((_kwt152117_
                                                (let ((__tmp154641
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp154641)))
                                               (_kwvars152120_
                                                (map (lambda (_g154642_)
                                                       (let ((__tmp154643
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp154643)))
                                                     _kwargs152106_))
                                               (_kwbind152125_
                                                (map (lambda (_kw152122_
                                                              _kwvar152123_)
                                                       (let ((__tmp154646
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar152123_ '())))
                     (__tmp154644
                      (let ((__tmp154645 (cdr _kw152122_)))
                        (declare (not safe))
                        (cons __tmp154645 '()))))
                 (declare (not safe))
                 (cons __tmp154646 __tmp154644)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152106_
                                                     _kwvars152120_))
                                               (_kwset152130_
                                                (map (lambda (_kw152127_
                                                              _kwvar152128_)
                                                       (let ((__tmp154647
                                                              (let ((__tmp154648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154656
                                    (let ((__tmp154657
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt152117_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154657)))
                                   (__tmp154649
                                    (let ((__tmp154653
                                           (let ((__tmp154654
                                                  (let ((__tmp154655
                                                         (car _kw152127_)))
                                                    (declare (not safe))
                                                    (cons __tmp154655 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154654)))
                                          (__tmp154650
                                           (let ((__tmp154651
                                                  (let ((__tmp154652
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar152128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154652))))
                                             (declare (not safe))
                                             (cons __tmp154651 '()))))
                                      (declare (not safe))
                                      (cons __tmp154653 __tmp154650))))
                               (declare (not safe))
                               (cons __tmp154656 __tmp154649))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp154648))))
                 (declare (not safe))
                 (cons '%#call __tmp154647)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152106_
                                                     _kwvars152120_))
                                               (_xkwargs152135_
                                                (map (lambda (_kw152132_
                                                              _kwvar152133_)
                                                       (let ((__tmp154660
                                                              (car _kw152132_))
                                                             (__tmp154658
                                                              (let ((__tmp154659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar152133_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154659))))
                 (declare (not safe))
                 (cons __tmp154660 __tmp154658)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152106_
                                                     _kwvars152120_))
                                               (_xargs152142_
                                                (map (lambda (_key152137_)
                                                       (let ((_$e152139_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key152137_ _xkwargs152135_))))
                 (if _$e152139_ (values _$e152139_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys152103_)))
                                          (let ((__tmp154661
                                                 (let ((__tmp154662
                                                        (let ((__tmp154663
                                                               (let ((__tmp154664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154665
                                     (let ((__tmp154666
                                            (let ((__tmp154680
                                                   (let ((__tmp154681
                                                          (let ((__tmp154691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt152117_ '())))
                        (__tmp154682
                         (let ((__tmp154683
                                (let ((__tmp154684
                                       (let ((__tmp154685
                                              (let ((__tmp154686
                                                     (let ((__tmp154688
                                                            (let ((__tmp154689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154690 (length _kwargs152106_)))
                             (declare (not safe))
                             (cons __tmp154690 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154689)))
                   (__tmp154687
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp154688 __tmp154687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp154686))))
                                         (declare (not safe))
                                         (cons '%#call __tmp154685))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp154684
                                   _stx152063_))))
                           (declare (not safe))
                           (cons __tmp154683 '()))))
                    (declare (not safe))
                    (cons __tmp154691 __tmp154682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154681 '())))
                                                  (__tmp154667
                                                   (let ((__tmp154668
                                                          (let ((__tmp154669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154670
                                (let ((__tmp154671
                                       (let ((__tmp154672
                                              (let ((__tmp154673
                                                     (let ((__tmp154678
                                                            (let ((__tmp154679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main152102_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154679)))
                   (__tmp154674
                    (let ((__tmp154676
                           (let ((__tmp154677
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt152117_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154677)))
                          (__tmp154675
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs152105_ _xargs152142_))))
                      (declare (not safe))
                      (cons __tmp154676 __tmp154675))))
               (declare (not safe))
               (cons __tmp154678 __tmp154674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp154673))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154672
                                          _stx152063_))))
                                  (declare (not safe))
                                  (cons __tmp154671 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp154670 _kwset152130_))))
                    (declare (not safe))
                    (cons '%#begin __tmp154669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154668 '()))))
                                              (declare (not safe))
                                              (cons __tmp154680 __tmp154667))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp154666))))
                                (declare (not safe))
                                (cons __tmp154665 '()))))
                         (declare (not safe))
                         (cons _kwbind152125_ __tmp154664))))
                  (declare (not safe))
                  (cons '%#let-values __tmp154663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154662
                                                    _stx152063_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152062_
                                             __tmp154661)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g152082152091_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e152087152148_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152082152091_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e152088152151_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152082152091_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys152154_ _e152088152151_)
                               (_e152089152156_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152082152091_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main152159_ _e152089152156_))
                          (declare (not safe))
                          (_K152086152145_ _main152159_ _keys152154_))
                        (let () (declare (not safe)) (_else152084152099_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152065152073_
                 'gxc#!kw-lambda::t))
              (let* ((_e152069152164_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152065152073_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152070152167_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152065152073_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table152170_ _e152070152167_)
                     (_e152071152172_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152065152073_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch152175_ _e152071152172_))
                (declare (not safe))
                (_K152068152161_ _dispatch152175_ _table152170_))
              (let () (declare (not safe)) (_E152067152077_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx151674_ _args151675_)
        (let _lp151677_ ((_rest151679_ _args151675_)
                         (_pargs151680_ '())
                         (_kwargs151681_ '()))
          (let* ((___stx153728153729_ _rest151679_)
                 (_g151687151739_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153728153729_)))))
            (let ((___kont153730153731_
                   (lambda (_L151918_ _L151919_)
                     (let ((__tmp154701
                            (let ()
                              (declare (not safe))
                              (cons _L151919_ _pargs151680_))))
                       (declare (not safe))
                       (_lp151677_ _L151918_ __tmp154701 _kwargs151681_))))
                  (___kont153732153733_
                   (lambda (_L151864_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151864_ _pargs151680_))
                             (reverse _kwargs151681_))))
                  (___kont153734153735_
                   (lambda (_L151811_ _L151812_ _L151813_)
                     (let ((_kw151830_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151813_))))
                       (if (assq _kw151830_ _kwargs151681_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx151674_
                              _kw151830_))
                           (let ((__tmp154702
                                  (let ((__tmp154703
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151830_ _L151812_))))
                                    (declare (not safe))
                                    (cons __tmp154703 _kwargs151681_))))
                             (declare (not safe))
                             (_lp151677_
                              _L151811_
                              _pargs151680_
                              __tmp154702))))))
                  (___kont153736153737_
                   (lambda (_L151759_ _L151760_)
                     (let ((__tmp154704
                            (let ()
                              (declare (not safe))
                              (cons _L151760_ _pargs151680_))))
                       (declare (not safe))
                       (_lp151677_ _L151759_ __tmp154704 _kwargs151681_))))
                  (___kont153738153739_
                   (lambda ()
                     (values (reverse _pargs151680_)
                             (reverse _kwargs151681_)))))
              (let* ((_g151686151746_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153728153729_))
                            (___kont153738153739_)
                            (let () (declare (not safe)) (_g151687151739_)))))
                     (___match153835153836_
                      (lambda (_e151720151779_
                               _hd151719151782_
                               _tl151718151784_
                               _e151723151787_
                               _hd151722151790_
                               _tl151721151792_
                               _e151726151795_
                               _hd151725151798_
                               _tl151724151800_
                               _e151729151803_
                               _hd151728151806_
                               _tl151727151808_)
                        (let ((_L151811_ _tl151727151808_)
                              (_L151812_ _hd151728151806_)
                              (_L151813_ _hd151725151798_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151813_))
                              (___kont153734153735_
                               _L151811_
                               _L151812_
                               _L151813_)
                              (___kont153736153737_
                               _tl151718151784_
                               _hd151719151782_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153728153729_))
                    (let ((_e151693151883_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153728153729_))))
                      (let ((_tl151691151888_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151693151883_)))
                            (_hd151692151886_
                             (let ()
                               (declare (not safe))
                               (##car _e151693151883_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd151692151886_))
                            (let ((_e151696151891_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd151692151886_))))
                              (let ((_tl151694151896_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151696151891_)))
                                    (_hd151695151894_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151696151891_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd151695151894_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd151695151894_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl151694151896_))
                                            (let ((_e151699151899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl151694151896_))))
                                              (let ((_tl151697151904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151699151899_)))
                                                    (_hd151698151902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151699151899_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd151698151902_))
                                                    (let ((_e151700151907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151698151902_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151700151907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151697151904_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151691151888_))
                          (let ((_e151703151910_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151691151888_))))
                            (let ((_tl151701151915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151703151910_)))
                                  (_hd151702151913_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151703151910_))))
                              (___kont153730153731_
                               _tl151701151915_
                               _hd151702151913_)))
                          (___kont153736153737_
                           _tl151691151888_
                           _hd151692151886_))
                      (___kont153736153737_ _tl151691151888_ _hd151692151886_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151700151907_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151697151904_))
                          (___kont153732153733_ _tl151691151888_)
                          (___kont153736153737_
                           _tl151691151888_
                           _hd151692151886_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151697151904_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151691151888_))
                              (let ((_e151729151803_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151691151888_))))
                                (let ((_tl151727151808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151729151803_)))
                                      (_hd151728151806_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151729151803_))))
                                  (___match153835153836_
                                   _e151693151883_
                                   _hd151692151886_
                                   _tl151691151888_
                                   _e151696151891_
                                   _hd151695151894_
                                   _tl151694151896_
                                   _e151699151899_
                                   _hd151698151902_
                                   _tl151697151904_
                                   _e151729151803_
                                   _hd151728151806_
                                   _tl151727151808_)))
                              (___kont153736153737_
                               _tl151691151888_
                               _hd151692151886_))
                          (___kont153736153737_
                           _tl151691151888_
                           _hd151692151886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151697151904_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl151691151888_))
                                                            (let ((_e151729151803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl151691151888_))))
                      (let ((_tl151727151808_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151729151803_)))
                            (_hd151728151806_
                             (let ()
                               (declare (not safe))
                               (##car _e151729151803_))))
                        (___match153835153836_
                         _e151693151883_
                         _hd151692151886_
                         _tl151691151888_
                         _e151696151891_
                         _hd151695151894_
                         _tl151694151896_
                         _e151699151899_
                         _hd151698151902_
                         _tl151697151904_
                         _e151729151803_
                         _hd151728151806_
                         _tl151727151808_)))
                    (___kont153736153737_ _tl151691151888_ _hd151692151886_))
                (___kont153736153737_ _tl151691151888_ _hd151692151886_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153736153737_
                                             _tl151691151888_
                                             _hd151692151886_))
                                        (___kont153736153737_
                                         _tl151691151888_
                                         _hd151692151886_))
                                    (___kont153736153737_
                                     _tl151691151888_
                                     _hd151692151886_))))
                            (___kont153736153737_
                             _tl151691151888_
                             _hd151692151886_))))
                    (let () (declare (not safe)) (_g151686151746_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self151669_ _ctx151670_ _stx151671_ _args151672_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx151670_ _stx151671_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
