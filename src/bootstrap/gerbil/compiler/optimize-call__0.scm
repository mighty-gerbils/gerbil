(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710140934)
  (begin
    (define gxc#&optimize-call::t
      (let ((__tmp153850 (list gxc#&basic-xform::t))
            (__tmp153848
             (let ((__tmp153849
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp153849 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#&optimize-call::t
         '&optimize-call
         __tmp153850
         '()
         __tmp153848
         '#f)))
    (define gxc#&optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#&optimize-call::t)))
    (define gxc#make-&optimize-call
      (lambda _$args153551_
        (apply make-instance gxc#&optimize-call::t _$args153551_)))
    (define gxc#&optimize-call-bind-methods!
      (let ((__tmp153851
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
        (make-promise __tmp153851)))
    (define gxc#apply-optimize-call
      (lambda (_stx153543_)
        (force gxc#&optimize-call-bind-methods!)
        (let* ((_self153546_
                (let ((__obj153845
                       (let ()
                         (declare (not safe))
                         (##structure gxc#&optimize-call::t))))
                  __obj153845))
               (__tmp153852
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self153546_ _stx153543_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp153852
           gxc#current-compile-method
           _self153546_))))
    (define gxc#optimize-call%
      (lambda (_self153397_ _stx153398_)
        (let* ((___stx153596153597_ _stx153398_)
               (_g153401153421_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx153596153597_)))))
          (let ((___kont153598153599_
                 (lambda (_L153465_ _L153466_)
                   (let* ((_rator-id153484_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L153466_)))
                          (_rator-type153486_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id153484_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type153486_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153853
                                  (##structure-ref
                                   _rator-type153486_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id153484_
                              '" => "
                              _rator-type153486_
                              '" "
                              __tmp153853))
                           (let ((_optimized153489_
                                  (let ((__method153846
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type153486_
                                            'optimize-call))))
                                    (if __method153846
                                        (__method153846
                                         _rator-type153486_
                                         _self153397_
                                         _stx153398_
                                         _L153465_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type153486_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type153486_))
                                 _optimized153489_
                                 (let* ((___stx153578153579_ _optimized153489_)
                                        (_g153492153502_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx153578153579_)))))
                                   (let ((___kont153580153581_
                                          (lambda (_L153522_)
                                            (let ((__tmp153854
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L153522_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153854
                                               _stx153398_))))
                                         (___kont153582153583_
                                          (lambda () _optimized153489_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx153578153579_))
                                         (let ((_e153497153514_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx153578153579_))))
                                           (let ((_tl153495153519_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e153497153514_)))
                                                 (_hd153496153517_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e153497153514_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd153496153517_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd153496153517_))
                                                     (___kont153580153581_
                                                      _tl153495153519_)
                                                     (___kont153582153583_))
                                                 (___kont153582153583_))))
                                         (___kont153582153583_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type153486_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self153397_ _stx153398_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx153398_
                                _rator-type153486_)))))))
                (___kont153600153601_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self153397_ _stx153398_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx153596153597_))
                (let ((_e153407153433_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx153596153597_))))
                  (let ((_tl153405153438_
                         (let () (declare (not safe)) (##cdr _e153407153433_)))
                        (_hd153406153436_
                         (let ()
                           (declare (not safe))
                           (##car _e153407153433_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl153405153438_))
                        (let ((_e153410153441_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153405153438_))))
                          (let ((_tl153408153446_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153410153441_)))
                                (_hd153409153444_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153410153441_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd153409153444_))
                                (let ((_e153413153449_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd153409153444_))))
                                  (let ((_tl153411153454_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e153413153449_)))
                                        (_hd153412153452_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e153413153449_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd153412153452_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd153412153452_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl153411153454_))
                                                (let ((_e153416153457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl153411153454_))))
                                                  (let ((_tl153414153462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153416153457_)))
                                                        (_hd153415153460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153416153457_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl153414153462_))
                                                        (___kont153598153599_
                                                         _tl153408153446_
                                                         _hd153415153460_)
                                                        (___kont153600153601_))))
                                                (___kont153600153601_))
                                            (___kont153600153601_))
                                        (___kont153600153601_))))
                                (___kont153600153601_))))
                        (___kont153600153601_))))
                (___kont153600153601_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self153350_ _ctx153351_ _stx153352_ _args153353_)
        (let* ((_g153355153365_
                (lambda (_g153356153362_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153356153362_))))
               (_g153354153394_
                (lambda (_g153356153368_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153356153368_))
                      (let ((_e153360153370_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153356153368_))))
                        (let ((_hd153359153373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153360153370_)))
                              (_tl153358153375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153360153370_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl153358153375_))
                              ((lambda (_L153378_)
                                 (let* ((_klass153389_
                                         (let ((__tmp153855
                                                (##structure-ref
                                                 _self153350_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx153352_
                                            __tmp153855)))
                                        (_object153391_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx153351_
                                            _L153378_))))
                                   (if (##structure-ref
                                        _klass153389_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153871
                                              (let ((__tmp153872
                                                     (let ((__tmp153874
                                                            (let ((__tmp153875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153876
                                  (##structure-ref
                                   _klass153389_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153876 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153875)))
                   (__tmp153873
                    (let () (declare (not safe)) (cons _object153391_ '()))))
               (declare (not safe))
               (cons __tmp153874 __tmp153873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153872))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153871
                                          _stx153352_))
                                       (if (##structure-ref
                                            _klass153389_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153865
                                                  (let ((__tmp153866
                                                         (let ((__tmp153868
                                                                (let ((__tmp153869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153870
                                      (##structure-ref
                                       _klass153389_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153870 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153869)))
                       (__tmp153867
                        (let ()
                          (declare (not safe))
                          (cons _object153391_ '()))))
                   (declare (not safe))
                   (cons __tmp153868 __tmp153867))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153866))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153865
                                              _stx153352_))
                                           (let ((__tmp153856
                                                  (let ((__tmp153857
                                                         (let ((__tmp153863
                                                                (let ((__tmp153864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153864)))
                       (__tmp153858
                        (let ((__tmp153860
                               (let ((__tmp153861
                                      (let ((__tmp153862
                                             (##structure-ref
                                              _self153350_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153862 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153861)))
                              (__tmp153859
                               (let ()
                                 (declare (not safe))
                                 (cons _object153391_ '()))))
                          (declare (not safe))
                          (cons __tmp153860 __tmp153859))))
                   (declare (not safe))
                   (cons __tmp153863 __tmp153858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153857))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153856
                                              _stx153352_))))))
                               _hd153359153373_)
                              (let ()
                                (declare (not safe))
                                (_g153355153365_ _g153356153368_)))))
                      (let ()
                        (declare (not safe))
                        (_g153355153365_ _g153356153368_))))))
          (declare (not safe))
          (_g153354153394_ _args153353_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass153553 __method-table153554)
        (let ((__id153555
               (let ((__slot153556
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153553 'id))))
                 (if __slot153556
                     __slot153556
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153350_ _ctx153351_ _stx153352_ _args153353_)
            (let* ((_g153355153365_
                    (lambda (_g153356153362_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153356153362_))))
                   (_g153354153394_
                    (lambda (_g153356153368_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153356153368_))
                          (let ((_e153360153370_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153356153368_))))
                            (let ((_hd153359153373_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153360153370_)))
                                  (_tl153358153375_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153360153370_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl153358153375_))
                                  ((lambda (_L153378_)
                                     (let* ((_klass153389_
                                             (let ((__tmp153877
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153350_
                                                       __id153555
                                                       __klass153553
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx153352_
                                                __tmp153877)))
                                            (_object153391_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx153351_
                                                _L153378_))))
                                       (if (##structure-ref
                                            _klass153389_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153893
                                                  (let ((__tmp153894
                                                         (let ((__tmp153896
                                                                (let ((__tmp153897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153898
                                      (##structure-ref
                                       _klass153389_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153898 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153897)))
                       (__tmp153895
                        (let ()
                          (declare (not safe))
                          (cons _object153391_ '()))))
                   (declare (not safe))
                   (cons __tmp153896 __tmp153895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153894))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153893
                                              _stx153352_))
                                           (if (##structure-ref
                                                _klass153389_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153887
                                                      (let ((__tmp153888
                                                             (let ((__tmp153890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153891
                                   (let ((__tmp153892
                                          (##structure-ref
                                           _klass153389_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153892 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153891)))
                           (__tmp153889
                            (let ()
                              (declare (not safe))
                              (cons _object153391_ '()))))
                       (declare (not safe))
                       (cons __tmp153890 __tmp153889))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153887
                                                  _stx153352_))
                                               (let ((__tmp153878
                                                      (let ((__tmp153879
                                                             (let ((__tmp153885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153886
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153886)))
                           (__tmp153880
                            (let ((__tmp153882
                                   (let ((__tmp153883
                                          (let ((__tmp153884
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self153350_
                                                    __id153555
                                                    __klass153553
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153884 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153883)))
                                  (__tmp153881
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153391_ '()))))
                              (declare (not safe))
                              (cons __tmp153882 __tmp153881))))
                       (declare (not safe))
                       (cons __tmp153885 __tmp153880))))
                (declare (not safe))
                (cons '%#call __tmp153879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153878
                                                  _stx153352_))))))
                                   _hd153359153373_)
                                  (let ()
                                    (declare (not safe))
                                    (_g153355153365_ _g153356153368_)))))
                          (let ()
                            (declare (not safe))
                            (_g153355153365_ _g153356153368_))))))
              (declare (not safe))
              (_g153354153394_ _args153353_))))))
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
      (lambda (_self153065_ _ctx153066_ _stx153067_ _args153068_)
        (let* ((_klass153070_
                (let ((__tmp153899
                       (##structure-ref _self153065_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx153067_ __tmp153899)))
               (_fields153072_
                (length (##structure-ref _klass153070_ '5 gxc#!class::t '#f)))
               (_args153078_
                (map (lambda (_g153073153075_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx153066_ _g153073153075_)))
                     _args153068_))
               (_inline-make-object153080_
                (let ((__tmp153900
                       (let ((__tmp153906
                              (let ((__tmp153907
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153907)))
                             (__tmp153901
                              (let ((__tmp153903
                                     (let ((__tmp153904
                                            (let ((__tmp153905
                                                   (##structure-ref
                                                    _self153065_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153905 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153904)))
                                    (__tmp153902
                                     (make-list _fields153072_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp153903 __tmp153902))))
                         (declare (not safe))
                         (cons __tmp153906 __tmp153901))))
                  (declare (not safe))
                  (cons '%#call __tmp153900))))
          (let ((_$e153083_
                 (##structure-ref _klass153070_ '6 gxc#!class::t '#f)))
            (if _$e153083_
                ((lambda (_ctor153086_)
                   (let ((_$obj153088_
                          (let ((__tmp154008 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp154008)))
                         (_ctor-impl153089_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass153070_
                             _ctor153086_))))
                     (let ((__tmp154009
                            (let ((__tmp154010
                                   (let ((__tmp154078
                                          (let ((__tmp154079
                                                 (let ((__tmp154081
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153088_
                                                                '())))
                                                       (__tmp154080
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object153080_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp154081
                                                         __tmp154080))))
                                            (declare (not safe))
                                            (cons __tmp154079 '())))
                                         (__tmp154011
                                          (let ((__tmp154012
                                                 (let ((__tmp154013
                                                        (let ((__tmp154017
                                                               (if _ctor-impl153089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154072
                                  (let ((__tmp154076
                                         (let ((__tmp154077
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl153089_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154077)))
                                        (__tmp154073
                                         (let ((__tmp154074
                                                (let ((__tmp154075
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj153088_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154075))))
                                           (declare (not safe))
                                           (cons __tmp154074 _args153078_))))
                                    (declare (not safe))
                                    (cons __tmp154076 __tmp154073))))
                             (declare (not safe))
                             (cons '%#call __tmp154072))
                           (let* ((_$ctor153091_
                                   (let ((__tmp154018 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp154018)))
                                  (__tmp154019
                                   (let ((__tmp154054
                                          (let ((__tmp154055
                                                 (let ((__tmp154071
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor153091_
                                                                '())))
                                                       (__tmp154056
                                                        (let ((__tmp154057
                                                               (let ((__tmp154058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154069
                                     (let ((__tmp154070
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154070)))
                                    (__tmp154059
                                     (let ((__tmp154066
                                            (let ((__tmp154067
                                                   (let ((__tmp154068
                                                          (##structure-ref
                                                           _self153065_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp154068 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154067)))
                                           (__tmp154060
                                            (let ((__tmp154064
                                                   (let ((__tmp154065
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154065)))
                                                  (__tmp154061
                                                   (let ((__tmp154062
                                                          (let ((__tmp154063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor153086_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154062 '()))))
                                              (declare (not safe))
                                              (cons __tmp154064 __tmp154061))))
                                       (declare (not safe))
                                       (cons __tmp154066 __tmp154060))))
                                (declare (not safe))
                                (cons __tmp154069 __tmp154059))))
                         (declare (not safe))
                         (cons '%#call __tmp154058))))
                  (declare (not safe))
                  (cons __tmp154057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154071
                                                         __tmp154056))))
                                            (declare (not safe))
                                            (cons __tmp154055 '())))
                                         (__tmp154020
                                          (let ((__tmp154021
                                                 (let ((__tmp154022
                                                        (let ((__tmp154052
                                                               (let ((__tmp154053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor153091_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154053)))
                      (__tmp154023
                       (let ((__tmp154045
                              (let ((__tmp154046
                                     (let ((__tmp154050
                                            (let ((__tmp154051
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor153091_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154051)))
                                           (__tmp154047
                                            (let ((__tmp154048
                                                   (let ((__tmp154049
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154049))))
                                              (declare (not safe))
                                              (cons __tmp154048
                                                    _args153078_))))
                                       (declare (not safe))
                                       (cons __tmp154050 __tmp154047))))
                                (declare (not safe))
                                (cons '%#call __tmp154046)))
                             (__tmp154024
                              (let ((__tmp154025
                                     (let ((__tmp154026
                                            (let ((__tmp154043
                                                   (let ((__tmp154044
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154044)))
                                                  (__tmp154027
                                                   (let ((__tmp154041
                                                          (let ((__tmp154042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154042)))
                 (__tmp154028
                  (let ((__tmp154039
                         (let ((__tmp154040
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154040)))
                        (__tmp154029
                         (let ((__tmp154036
                                (let ((__tmp154037
                                       (let ((__tmp154038
                                              (##structure-ref
                                               _self153065_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154038 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154037)))
                               (__tmp154030
                                (let ((__tmp154034
                                       (let ((__tmp154035
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154035)))
                                      (__tmp154031
                                       (let ((__tmp154032
                                              (let ((__tmp154033
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor153086_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp154033))))
                                         (declare (not safe))
                                         (cons __tmp154032 '()))))
                                  (declare (not safe))
                                  (cons __tmp154034 __tmp154031))))
                           (declare (not safe))
                           (cons __tmp154036 __tmp154030))))
                    (declare (not safe))
                    (cons __tmp154039 __tmp154029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154041
                                                           __tmp154028))))
                                              (declare (not safe))
                                              (cons __tmp154043 __tmp154027))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154026))))
                                (declare (not safe))
                                (cons __tmp154025 '()))))
                         (declare (not safe))
                         (cons __tmp154045 __tmp154024))))
                  (declare (not safe))
                  (cons __tmp154052 __tmp154023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp154022))))
                                            (declare (not safe))
                                            (cons __tmp154021 '()))))
                                     (declare (not safe))
                                     (cons __tmp154054 __tmp154020))))
                             (declare (not safe))
                             (cons '%#let-values __tmp154019))))
                      (__tmp154014
                       (let ((__tmp154015
                              (let ((__tmp154016
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153088_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154016))))
                         (declare (not safe))
                         (cons __tmp154015 '()))))
                  (declare (not safe))
                  (cons __tmp154017 __tmp154014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp154013))))
                                            (declare (not safe))
                                            (cons __tmp154012 '()))))
                                     (declare (not safe))
                                     (cons __tmp154078 __tmp154011))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154010))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154009 _stx153067_))))
                 _$e153083_)
                (let ((_$e153093_
                       (##structure-ref _klass153070_ '9 gxc#!class::t '#f)))
                  (if _$e153093_
                      ((lambda (_metaclass153096_)
                         (let* ((_$obj153098_
                                 (let ((__tmp153970 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153970)))
                                (_metakons153100_
                                 (let ((__tmp153971
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx153067_
                                           _metaclass153096_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153971
                                    'instance-init!))))
                           (let ((__tmp153972
                                  (let ((__tmp153973
                                         (let ((__tmp154004
                                                (let ((__tmp154005
                                                       (let ((__tmp154007
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153098_ '())))
                     (__tmp154006
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object153080_ '()))))
                 (declare (not safe))
                 (cons __tmp154007 __tmp154006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154005 '())))
                                               (__tmp153974
                                                (let ((__tmp153975
                                                       (let ((__tmp153976
                                                              (let ((__tmp153980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons153100_
                                 (let ((__tmp153994
                                        (let ((__tmp154002
                                               (let ((__tmp154003
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons153100_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154003)))
                                              (__tmp153995
                                               (let ((__tmp153999
                                                      (let ((__tmp154000
                                                             (let ((__tmp154001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153065_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp154001 '()))))
                (declare (not safe))
                (cons '%#ref __tmp154000)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153996
                                                      (let ((__tmp153997
                                                             (let ((__tmp153998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj153098_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153998))))
                (declare (not safe))
                (cons __tmp153997 _args153078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153999
                                                       __tmp153996))))
                                          (declare (not safe))
                                          (cons __tmp154002 __tmp153995))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153994))
                                 (let ((__tmp153981
                                        (let ((__tmp153992
                                               (let ((__tmp153993
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153993)))
                                              (__tmp153982
                                               (let ((__tmp153989
                                                      (let ((__tmp153990
                                                             (let ((__tmp153991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153065_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153991 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153990)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153983
                                                      (let ((__tmp153987
                                                             (let ((__tmp153988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153988)))
                    (__tmp153984
                     (let ((__tmp153985
                            (let ((__tmp153986
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153098_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153986))))
                       (declare (not safe))
                       (cons __tmp153985 _args153078_))))
                (declare (not safe))
                (cons __tmp153987 __tmp153984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153989
                                                       __tmp153983))))
                                          (declare (not safe))
                                          (cons __tmp153992 __tmp153982))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153981))))
                            (__tmp153977
                             (let ((__tmp153978
                                    (let ((__tmp153979
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj153098_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153979))))
                               (declare (not safe))
                               (cons __tmp153978 '()))))
                        (declare (not safe))
                        (cons __tmp153980 __tmp153977))))
                 (declare (not safe))
                 (cons '%#begin __tmp153976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153975 '()))))
                                           (declare (not safe))
                                           (cons __tmp154004 __tmp153974))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153973))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153972 _stx153067_))))
                       _$e153093_)
                      (if (##structure-ref _klass153070_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args153078_) _fields153072_)
                              (let ((__tmp153962
                                     (let ((__tmp153963
                                            (let ((__tmp153968
                                                   (let ((__tmp153969
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153969)))
                                                  (__tmp153964
                                                   (let ((__tmp153965
                                                          (let ((__tmp153966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153967
                                (##structure-ref
                                 _self153065_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153967 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153965
                                                           _args153078_))))
                                              (declare (not safe))
                                              (cons __tmp153968 __tmp153964))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153963))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153962
                                 _stx153067_))
                              (let ((__tmp153961
                                     (##structure-ref
                                      _self153065_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153960
                                     (length (##structure-ref
                                              _klass153070_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx153067_
                                 __tmp153961
                                 __tmp153960)))
                          (let ((_$obj153103_
                                 (let ((__tmp153908 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153908))))
                            (let _lp153105_ ((_rest153107_ _args153078_)
                                             (_initializers153108_ '()))
                              (let* ((___stx153634153635_ _rest153107_)
                                     (_g153112153133_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx153634153635_)))))
                                (let ((___kont153636153637_
                                       (lambda (_L153187_ _L153188_ _L153189_)
                                         (let* ((_slot153220_
                                                 (let ((__tmp153909
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L153189_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp153909)))
                                                (_off153222_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153070_
                                                    _slot153220_))))
                                           (if _off153222_
                                               (let ((__tmp153911
                                                      (let ((__tmp153912
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off153222_ _L153188_))))
                (declare (not safe))
                (cons __tmp153912 _initializers153108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp153105_
                                                  _L153187_
                                                  __tmp153911))
                                               (let ((__tmp153910
                                                      (##structure-ref
                                                       _self153065_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx153067_
                                                  __tmp153910
                                                  _slot153220_))))))
                                      (___kont153638153639_
                                       (lambda ()
                                         (let ((__tmp153913
                                                (let ((__tmp153914
                                                       (let ((__tmp153937
                                                              (let ((__tmp153938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153940
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153103_ '())))
                                   (__tmp153939
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153080_ '()))))
                               (declare (not safe))
                               (cons __tmp153940 __tmp153939))))
                        (declare (not safe))
                        (cons __tmp153938 '())))
                     (__tmp153915
                      (let ((__tmp153916
                             (let ((__tmp153917
                                    (let ((__tmp153934
                                           (let ((__tmp153935
                                                  (let ((__tmp153936
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153936))))
                                             (declare (not safe))
                                             (cons __tmp153935 '())))
                                          (__tmp153918
                                           (let ((__tmp153919
                                                  (lambda (_i153147_ _r153148_)
                                                    (let ((__tmp153920
                                                           (let ((__tmp153921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153931
                                 (let ((__tmp153932
                                        (let ((__tmp153933
                                               (##structure-ref
                                                _self153065_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153933 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153932)))
                                (__tmp153922
                                 (let ((__tmp153928
                                        (let ((__tmp153929
                                               (let ((__tmp153930
                                                      (car _i153147_)))
                                                 (declare (not safe))
                                                 (cons __tmp153930 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153929)))
                                       (__tmp153923
                                        (let ((__tmp153926
                                               (let ((__tmp153927
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj153103_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153927)))
                                              (__tmp153924
                                               (let ((__tmp153925
                                                      (cdr _i153147_)))
                                                 (declare (not safe))
                                                 (cons __tmp153925 '()))))
                                          (declare (not safe))
                                          (cons __tmp153926 __tmp153924))))
                                   (declare (not safe))
                                   (cons __tmp153928 __tmp153923))))
                            (declare (not safe))
                            (cons __tmp153931 __tmp153922))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153921))))
              (declare (not safe))
              (cons __tmp153920 _r153148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153919
                                                     '()
                                                     _initializers153108_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp153934 __tmp153918))))
                               (declare (not safe))
                               (cons '%#begin __tmp153917))))
                        (declare (not safe))
                        (cons __tmp153916 '()))))
                 (declare (not safe))
                 (cons __tmp153937 __tmp153915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153914))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153913
                                            _stx153067_))))
                                      (___kont153640153641_
                                       (lambda ()
                                         (let ((__tmp153941
                                                (let ((__tmp153942
                                                       (let ((__tmp153956
                                                              (let ((__tmp153957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153959
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153103_ '())))
                                   (__tmp153958
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153080_ '()))))
                               (declare (not safe))
                               (cons __tmp153959 __tmp153958))))
                        (declare (not safe))
                        (cons __tmp153957 '())))
                     (__tmp153943
                      (let ((__tmp153944
                             (let ((__tmp153945
                                    (let ((__tmp153949
                                           (let ((__tmp153950
                                                  (let ((__tmp153954
                                                         (let ((__tmp153955
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp153955)))
                (__tmp153951
                 (let ((__tmp153952
                        (let ((__tmp153953
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj153103_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153953))))
                   (declare (not safe))
                   (cons __tmp153952 _args153078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153954
                                                          __tmp153951))))
                                             (declare (not safe))
                                             (cons '%#call __tmp153950)))
                                          (__tmp153946
                                           (let ((__tmp153947
                                                  (let ((__tmp153948
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153948))))
                                             (declare (not safe))
                                             (cons __tmp153947 '()))))
                                      (declare (not safe))
                                      (cons __tmp153949 __tmp153946))))
                               (declare (not safe))
                               (cons '%#begin __tmp153945))))
                        (declare (not safe))
                        (cons __tmp153944 '()))))
                 (declare (not safe))
                 (cons __tmp153956 __tmp153943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153942))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153941
                                            _stx153067_)))))
                                  (let* ((_g153110153150_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx153634153635_))
                                                (___kont153638153639_)
                                                (___kont153640153641_))))
                                         (___match153671153672_
                                          (lambda (_e153119153155_
                                                   _hd153118153158_
                                                   _tl153117153160_
                                                   _e153122153163_
                                                   _hd153121153166_
                                                   _tl153120153168_
                                                   _e153125153171_
                                                   _hd153124153174_
                                                   _tl153123153176_
                                                   _e153128153179_
                                                   _hd153127153182_
                                                   _tl153126153184_)
                                            (let ((_L153187_ _tl153126153184_)
                                                  (_L153188_ _hd153127153182_)
                                                  (_L153189_ _hd153124153174_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L153189_))
                                                  (___kont153636153637_
                                                   _L153187_
                                                   _L153188_
                                                   _L153189_)
                                                  (___kont153640153641_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx153634153635_))
                                        (let ((_e153119153155_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx153634153635_))))
                                          (let ((_tl153117153160_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153119153155_)))
                                                (_hd153118153158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153119153155_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd153118153158_))
                                                (let ((_e153122153163_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd153118153158_))))
                                                  (let ((_tl153120153168_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153122153163_)))
                                                        (_hd153121153166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153122153163_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd153121153166_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd153121153166_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl153120153168_))
                        (let ((_e153125153171_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153120153168_))))
                          (let ((_tl153123153176_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153125153171_)))
                                (_hd153124153174_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153125153171_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl153123153176_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl153117153160_))
                                    (let ((_e153128153179_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl153117153160_))))
                                      (let ((_tl153126153184_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e153128153179_)))
                                            (_hd153127153182_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e153128153179_))))
                                        (___match153671153672_
                                         _e153119153155_
                                         _hd153118153158_
                                         _tl153117153160_
                                         _e153122153163_
                                         _hd153121153166_
                                         _tl153120153168_
                                         _e153125153171_
                                         _hd153124153174_
                                         _tl153123153176_
                                         _e153128153179_
                                         _hd153127153182_
                                         _tl153126153184_)))
                                    (___kont153640153641_))
                                (___kont153640153641_))))
                        (___kont153640153641_))
                    (___kont153640153641_))
                (___kont153640153641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont153640153641_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g153110153150_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass153557 __method-table153558)
        (let ((__id153559
               (let ((__slot153560
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153557 'id))))
                 (if __slot153560
                     __slot153560
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153065_ _ctx153066_ _stx153067_ _args153068_)
            (let* ((_klass153070_
                    (let ((__tmp154082
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self153065_
                              __id153559
                              __klass153557
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx153067_ __tmp154082)))
                   (_fields153072_
                    (length (##structure-ref
                             _klass153070_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args153078_
                    (map (lambda (_g153073153075_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx153066_ _g153073153075_)))
                         _args153068_))
                   (_inline-make-object153080_
                    (let ((__tmp154083
                           (let ((__tmp154089
                                  (let ((__tmp154090
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154090)))
                                 (__tmp154084
                                  (let ((__tmp154086
                                         (let ((__tmp154087
                                                (let ((__tmp154088
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153065_
                                                          __id153559
                                                          __klass153557
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154088 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154087)))
                                        (__tmp154085
                                         (make-list
                                          _fields153072_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp154086 __tmp154085))))
                             (declare (not safe))
                             (cons __tmp154089 __tmp154084))))
                      (declare (not safe))
                      (cons '%#call __tmp154083))))
              (let ((_$e153083_
                     (##structure-ref _klass153070_ '6 gxc#!class::t '#f)))
                (if _$e153083_
                    ((lambda (_ctor153086_)
                       (let ((_$obj153088_
                              (let ((__tmp154191 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp154191)))
                             (_ctor-impl153089_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass153070_
                                 _ctor153086_))))
                         (let ((__tmp154192
                                (let ((__tmp154193
                                       (let ((__tmp154261
                                              (let ((__tmp154262
                                                     (let ((__tmp154264
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj153088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154263
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object153080_ '()))))
               (declare (not safe))
               (cons __tmp154264 __tmp154263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154262 '())))
                                             (__tmp154194
                                              (let ((__tmp154195
                                                     (let ((__tmp154196
                                                            (let ((__tmp154200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl153089_
                               (let ((__tmp154255
                                      (let ((__tmp154259
                                             (let ((__tmp154260
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl153089_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154260)))
                                            (__tmp154256
                                             (let ((__tmp154257
                                                    (let ((__tmp154258
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj153088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154257
                                                     _args153078_))))
                                        (declare (not safe))
                                        (cons __tmp154259 __tmp154256))))
                                 (declare (not safe))
                                 (cons '%#call __tmp154255))
                               (let* ((_$ctor153091_
                                       (let ((__tmp154201
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp154201)))
                                      (__tmp154202
                                       (let ((__tmp154237
                                              (let ((__tmp154238
                                                     (let ((__tmp154254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor153091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154239
                    (let ((__tmp154240
                           (let ((__tmp154241
                                  (let ((__tmp154252
                                         (let ((__tmp154253
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154253)))
                                        (__tmp154242
                                         (let ((__tmp154249
                                                (let ((__tmp154250
                                                       (let ((__tmp154251
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self153065_
                         __id153559
                         __klass153557
                         '#f))))
                 (declare (not safe))
                 (cons __tmp154251 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154250)))
                                               (__tmp154243
                                                (let ((__tmp154247
                                                       (let ((__tmp154248
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153088_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154248)))
              (__tmp154244
               (let ((__tmp154245
                      (let ((__tmp154246
                             (let ()
                               (declare (not safe))
                               (cons _ctor153086_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154246))))
                 (declare (not safe))
                 (cons __tmp154245 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154247
                                                        __tmp154244))))
                                           (declare (not safe))
                                           (cons __tmp154249 __tmp154243))))
                                    (declare (not safe))
                                    (cons __tmp154252 __tmp154242))))
                             (declare (not safe))
                             (cons '%#call __tmp154241))))
                      (declare (not safe))
                      (cons __tmp154240 '()))))
               (declare (not safe))
               (cons __tmp154254 __tmp154239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154238 '())))
                                             (__tmp154203
                                              (let ((__tmp154204
                                                     (let ((__tmp154205
                                                            (let ((__tmp154235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154236
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor153091_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154236)))
                          (__tmp154206
                           (let ((__tmp154228
                                  (let ((__tmp154229
                                         (let ((__tmp154233
                                                (let ((__tmp154234
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor153091_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154234)))
                                               (__tmp154230
                                                (let ((__tmp154231
                                                       (let ((__tmp154232
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153088_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154231
                                                        _args153078_))))
                                           (declare (not safe))
                                           (cons __tmp154233 __tmp154230))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154229)))
                                 (__tmp154207
                                  (let ((__tmp154208
                                         (let ((__tmp154209
                                                (let ((__tmp154226
                                                       (let ((__tmp154227
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154227)))
              (__tmp154210
               (let ((__tmp154224
                      (let ((__tmp154225
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154225)))
                     (__tmp154211
                      (let ((__tmp154222
                             (let ((__tmp154223
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154223)))
                            (__tmp154212
                             (let ((__tmp154219
                                    (let ((__tmp154220
                                           (let ((__tmp154221
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153065_
                                                     __id153559
                                                     __klass153557
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154221 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154220)))
                                   (__tmp154213
                                    (let ((__tmp154217
                                           (let ((__tmp154218
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154218)))
                                          (__tmp154214
                                           (let ((__tmp154215
                                                  (let ((__tmp154216
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor153086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp154216))))
                                             (declare (not safe))
                                             (cons __tmp154215 '()))))
                                      (declare (not safe))
                                      (cons __tmp154217 __tmp154214))))
                               (declare (not safe))
                               (cons __tmp154219 __tmp154213))))
                        (declare (not safe))
                        (cons __tmp154222 __tmp154212))))
                 (declare (not safe))
                 (cons __tmp154224 __tmp154211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154226
                                                        __tmp154210))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154209))))
                                    (declare (not safe))
                                    (cons __tmp154208 '()))))
                             (declare (not safe))
                             (cons __tmp154228 __tmp154207))))
                      (declare (not safe))
                      (cons __tmp154235 __tmp154206))))
               (declare (not safe))
               (cons '%#if __tmp154205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154204 '()))))
                                         (declare (not safe))
                                         (cons __tmp154237 __tmp154203))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp154202))))
                          (__tmp154197
                           (let ((__tmp154198
                                  (let ((__tmp154199
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj153088_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154199))))
                             (declare (not safe))
                             (cons __tmp154198 '()))))
                      (declare (not safe))
                      (cons __tmp154200 __tmp154197))))
               (declare (not safe))
               (cons '%#begin __tmp154196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154195 '()))))
                                         (declare (not safe))
                                         (cons __tmp154261 __tmp154194))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154193))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154192 _stx153067_))))
                     _$e153083_)
                    (let ((_$e153093_
                           (##structure-ref
                            _klass153070_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e153093_
                          ((lambda (_metaclass153096_)
                             (let* ((_$obj153098_
                                     (let ((__tmp154153 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154153)))
                                    (_metakons153100_
                                     (let ((__tmp154154
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx153067_
                                               _metaclass153096_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp154154
                                        'instance-init!))))
                               (let ((__tmp154155
                                      (let ((__tmp154156
                                             (let ((__tmp154187
                                                    (let ((__tmp154188
                                                           (let ((__tmp154190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153098_ '())))
                         (__tmp154189
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object153080_ '()))))
                     (declare (not safe))
                     (cons __tmp154190 __tmp154189))))
              (declare (not safe))
              (cons __tmp154188 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154157
                                                    (let ((__tmp154158
                                                           (let ((__tmp154159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154163
                                 (if _metakons153100_
                                     (let ((__tmp154177
                                            (let ((__tmp154185
                                                   (let ((__tmp154186
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons153100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154186)))
                                                  (__tmp154178
                                                   (let ((__tmp154182
                                                          (let ((__tmp154183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154184
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153065_
                                   __id153559
                                   __klass153557
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154184 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154183)))
                 (__tmp154179
                  (let ((__tmp154180
                         (let ((__tmp154181
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj153098_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp154181))))
                    (declare (not safe))
                    (cons __tmp154180 _args153078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154182
                                                           __tmp154179))))
                                              (declare (not safe))
                                              (cons __tmp154185 __tmp154178))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154177))
                                     (let ((__tmp154164
                                            (let ((__tmp154175
                                                   (let ((__tmp154176
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154176)))
                                                  (__tmp154165
                                                   (let ((__tmp154172
                                                          (let ((__tmp154173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154174
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153065_
                                   __id153559
                                   __klass153557
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154174 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154173)))
                 (__tmp154166
                  (let ((__tmp154170
                         (let ((__tmp154171
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154171)))
                        (__tmp154167
                         (let ((__tmp154168
                                (let ((__tmp154169
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj153098_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154169))))
                           (declare (not safe))
                           (cons __tmp154168 _args153078_))))
                    (declare (not safe))
                    (cons __tmp154170 __tmp154167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154172
                                                           __tmp154166))))
                                              (declare (not safe))
                                              (cons __tmp154175 __tmp154165))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154164))))
                                (__tmp154160
                                 (let ((__tmp154161
                                        (let ((__tmp154162
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj153098_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp154162))))
                                   (declare (not safe))
                                   (cons __tmp154161 '()))))
                            (declare (not safe))
                            (cons __tmp154163 __tmp154160))))
                     (declare (not safe))
                     (cons '%#begin __tmp154159))))
              (declare (not safe))
              (cons __tmp154158 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154187
                                                     __tmp154157))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp154156))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154155
                                  _stx153067_))))
                           _$e153093_)
                          (if (##structure-ref
                               _klass153070_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args153078_) _fields153072_)
                                  (let ((__tmp154145
                                         (let ((__tmp154146
                                                (let ((__tmp154151
                                                       (let ((__tmp154152
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154152)))
              (__tmp154147
               (let ((__tmp154148
                      (let ((__tmp154149
                             (let ((__tmp154150
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self153065_
                                       __id153559
                                       __klass153557
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp154150 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154149))))
                 (declare (not safe))
                 (cons __tmp154148 _args153078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154151
                                                        __tmp154147))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154146))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp154145
                                     _stx153067_))
                                  (let ((__tmp154144
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self153065_
                                            __id153559
                                            __klass153557
                                            '#f)))
                                        (__tmp154143
                                         (length (##structure-ref
                                                  _klass153070_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx153067_
                                     __tmp154144
                                     __tmp154143)))
                              (let ((_$obj153103_
                                     (let ((__tmp154091 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154091))))
                                (let _lp153105_ ((_rest153107_ _args153078_)
                                                 (_initializers153108_ '()))
                                  (let* ((___stx153676153677_ _rest153107_)
                                         (_g153112153133_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx153676153677_)))))
                                    (let ((___kont153678153679_
                                           (lambda (_L153187_
                                                    _L153188_
                                                    _L153189_)
                                             (let* ((_slot153220_
                                                     (let ((__tmp154092
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L153189_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp154092)))
                                                    (_off153222_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153070_
                                                        _slot153220_))))
                                               (if _off153222_
                                                   (let ((__tmp154094
                                                          (let ((__tmp154095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off153222_ _L153188_))))
                    (declare (not safe))
                    (cons __tmp154095 _initializers153108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp153105_
                                                      _L153187_
                                                      __tmp154094))
                                                   (let ((__tmp154093
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self153065_
                                                             __id153559
                                                             __klass153557
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx153067_
                                                      __tmp154093
                                                      _slot153220_))))))
                                          (___kont153680153681_
                                           (lambda ()
                                             (let ((__tmp154096
                                                    (let ((__tmp154097
                                                           (let ((__tmp154120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154121
                                 (let ((__tmp154123
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153103_ '())))
                                       (__tmp154122
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153080_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154123 __tmp154122))))
                            (declare (not safe))
                            (cons __tmp154121 '())))
                         (__tmp154098
                          (let ((__tmp154099
                                 (let ((__tmp154100
                                        (let ((__tmp154117
                                               (let ((__tmp154118
                                                      (let ((__tmp154119
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153103_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154118 '())))
                                              (__tmp154101
                                               (let ((__tmp154102
                                                      (lambda (_i153147_
                                                               _r153148_)
                                                        (let ((__tmp154103
                                                               (let ((__tmp154104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154114
                                     (let ((__tmp154115
                                            (let ((__tmp154116
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153065_
                                                      __id153559
                                                      __klass153557
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154116 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154115)))
                                    (__tmp154105
                                     (let ((__tmp154111
                                            (let ((__tmp154112
                                                   (let ((__tmp154113
                                                          (car _i153147_)))
                                                     (declare (not safe))
                                                     (cons __tmp154113 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154112)))
                                           (__tmp154106
                                            (let ((__tmp154109
                                                   (let ((__tmp154110
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154110)))
                                                  (__tmp154107
                                                   (let ((__tmp154108
                                                          (cdr _i153147_)))
                                                     (declare (not safe))
                                                     (cons __tmp154108 '()))))
                                              (declare (not safe))
                                              (cons __tmp154109 __tmp154107))))
                                       (declare (not safe))
                                       (cons __tmp154111 __tmp154106))))
                                (declare (not safe))
                                (cons __tmp154114 __tmp154105))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp154104))))
                  (declare (not safe))
                  (cons __tmp154103 _r153148_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp154102
                                                         '()
                                                         _initializers153108_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp154117
                                                  __tmp154101))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154100))))
                            (declare (not safe))
                            (cons __tmp154099 '()))))
                     (declare (not safe))
                     (cons __tmp154120 __tmp154098))))
              (declare (not safe))
              (cons '%#let-values __tmp154097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154096
                                                _stx153067_))))
                                          (___kont153682153683_
                                           (lambda ()
                                             (let ((__tmp154124
                                                    (let ((__tmp154125
                                                           (let ((__tmp154139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154140
                                 (let ((__tmp154142
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153103_ '())))
                                       (__tmp154141
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153080_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154142 __tmp154141))))
                            (declare (not safe))
                            (cons __tmp154140 '())))
                         (__tmp154126
                          (let ((__tmp154127
                                 (let ((__tmp154128
                                        (let ((__tmp154132
                                               (let ((__tmp154133
                                                      (let ((__tmp154137
                                                             (let ((__tmp154138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154138)))
                    (__tmp154134
                     (let ((__tmp154135
                            (let ((__tmp154136
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153103_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154136))))
                       (declare (not safe))
                       (cons __tmp154135 _args153078_))))
                (declare (not safe))
                (cons __tmp154137 __tmp154134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp154133)))
                                              (__tmp154129
                                               (let ((__tmp154130
                                                      (let ((__tmp154131
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153103_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154130 '()))))
                                          (declare (not safe))
                                          (cons __tmp154132 __tmp154129))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154128))))
                            (declare (not safe))
                            (cons __tmp154127 '()))))
                     (declare (not safe))
                     (cons __tmp154139 __tmp154126))))
              (declare (not safe))
              (cons '%#let-values __tmp154125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154124
                                                _stx153067_)))))
                                      (let* ((_g153110153150_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx153676153677_))
                                                    (___kont153680153681_)
                                                    (___kont153682153683_))))
                                             (___match153713153714_
                                              (lambda (_e153119153155_
                                                       _hd153118153158_
                                                       _tl153117153160_
                                                       _e153122153163_
                                                       _hd153121153166_
                                                       _tl153120153168_
                                                       _e153125153171_
                                                       _hd153124153174_
                                                       _tl153123153176_
                                                       _e153128153179_
                                                       _hd153127153182_
                                                       _tl153126153184_)
                                                (let ((_L153187_
                                                       _tl153126153184_)
                                                      (_L153188_
                                                       _hd153127153182_)
                                                      (_L153189_
                                                       _hd153124153174_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L153189_))
                                                      (___kont153678153679_
                                                       _L153187_
                                                       _L153188_
                                                       _L153189_)
                                                      (___kont153682153683_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx153676153677_))
                                            (let ((_e153119153155_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx153676153677_))))
                                              (let ((_tl153117153160_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e153119153155_)))
                                                    (_hd153118153158_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e153119153155_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd153118153158_))
                                                    (let ((_e153122153163_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd153118153158_))))
                                                      (let ((_tl153120153168_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e153122153163_)))
                    (_hd153121153166_
                     (let () (declare (not safe)) (##car _e153122153163_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd153121153166_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd153121153166_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153120153168_))
                            (let ((_e153125153171_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl153120153168_))))
                              (let ((_tl153123153176_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153125153171_)))
                                    (_hd153124153174_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153125153171_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153123153176_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl153117153160_))
                                        (let ((_e153128153179_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl153117153160_))))
                                          (let ((_tl153126153184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153128153179_)))
                                                (_hd153127153182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153128153179_))))
                                            (___match153713153714_
                                             _e153119153155_
                                             _hd153118153158_
                                             _tl153117153160_
                                             _e153122153163_
                                             _hd153121153166_
                                             _tl153120153168_
                                             _e153125153171_
                                             _hd153124153174_
                                             _tl153123153176_
                                             _e153128153179_
                                             _hd153127153182_
                                             _tl153126153184_)))
                                        (___kont153682153683_))
                                    (___kont153682153683_))))
                            (___kont153682153683_))
                        (___kont153682153683_))
                    (___kont153682153683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont153682153683_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g153110153150_))))))))))))))))))
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
      (lambda (_self152887_ _ctx152888_ _stx152889_ _args152890_)
        (let* ((_g152892152902_
                (lambda (_g152893152899_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152893152899_))))
               (_g152891152940_
                (lambda (_g152893152905_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152893152905_))
                      (let ((_e152897152907_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152893152905_))))
                        (let ((_hd152896152910_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152897152907_)))
                              (_tl152895152912_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152897152907_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152895152912_))
                              ((lambda (_L152915_)
                                 (let* ((_klass152926_
                                         (let ((__tmp154265
                                                (##structure-ref
                                                 _self152887_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152889_
                                            __tmp154265)))
                                        (_field152928_
                                         (let ((__tmp154266
                                                (##structure-ref
                                                 _self152887_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152926_
                                            __tmp154266)))
                                        (_object152930_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152888_
                                            _L152915_))))
                                   (if (##structure-ref
                                        _klass152926_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp154343
                                              (let ((__tmp154352
                                                     (if (##structure-ref
                                                          _self152887_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp154344
                                                     (let ((__tmp154349
                                                            (let ((__tmp154350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154351
                                  (##structure-ref
                                   _self152887_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp154351 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154350)))
                   (__tmp154345
                    (let ((__tmp154347
                           (let ((__tmp154348
                                  (let ()
                                    (declare (not safe))
                                    (cons _field152928_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp154348)))
                          (__tmp154346
                           (let ()
                             (declare (not safe))
                             (cons _object152930_ '()))))
                      (declare (not safe))
                      (cons __tmp154347 __tmp154346))))
               (declare (not safe))
               (cons __tmp154349 __tmp154345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154352
                                                      __tmp154344))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154343
                                          _stx152889_))
                                       (if (##structure-ref
                                            _klass152926_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154333
                                                  (let ((__tmp154342
                                                         (if (##structure-ref
                                                              _self152887_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp154334
                                                         (let ((__tmp154339
                                                                (let ((__tmp154340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154341
                                      (##structure-ref
                                       _self152887_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154341 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154340)))
                       (__tmp154335
                        (let ((__tmp154337
                               (let ((__tmp154338
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152928_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154338)))
                              (__tmp154336
                               (let ()
                                 (declare (not safe))
                                 (cons _object152930_ '()))))
                          (declare (not safe))
                          (cons __tmp154337 __tmp154336))))
                   (declare (not safe))
                   (cons __tmp154339 __tmp154335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154342
                                                          __tmp154334))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154333
                                              _stx152889_))
                                           (let ((_$e152933_
                                                  (let ((__tmp154267
                                                         (##structure-ref
                                                          _self152887_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152926_
                                                     __tmp154267))))
                                             (if _$e152933_
                                                 ((lambda (_klass152936_)
                                                    (let ((__tmp154323
                                                           (let ((__tmp154332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152887_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp154324
                          (let ((__tmp154329
                                 (let ((__tmp154330
                                        (let ((__tmp154331
                                               (##structure-ref
                                                _self152887_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154331 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154330)))
                                (__tmp154325
                                 (let ((__tmp154327
                                        (let ((__tmp154328
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field152928_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154328)))
                                       (__tmp154326
                                        (let ()
                                          (declare (not safe))
                                          (cons _object152930_ '()))))
                                   (declare (not safe))
                                   (cons __tmp154327 __tmp154326))))
                            (declare (not safe))
                            (cons __tmp154329 __tmp154325))))
                     (declare (not safe))
                     (cons __tmp154332 __tmp154324))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp154323 _stx152889_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e152933_)
                                                 (if (##structure-ref
                                                      _self152887_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp154277
                                                            (let* ((_$obj152938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154278 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp154278)))
                           (__tmp154279
                            (let ((__tmp154319
                                   (let ((__tmp154320
                                          (let ((__tmp154322
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj152938_ '())))
                                                (__tmp154321
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object152930_ '()))))
                                            (declare (not safe))
                                            (cons __tmp154322 __tmp154321))))
                                     (declare (not safe))
                                     (cons __tmp154320 '())))
                                  (__tmp154280
                                   (let ((__tmp154281
                                          (let ((__tmp154282
                                                 (let ((__tmp154311
                                                        (let ((__tmp154312
                                                               (let ((__tmp154316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154317
                                     (let ((__tmp154318
                                            (##structure-ref
                                             _klass152926_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp154318 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp154317)))
                             (__tmp154313
                              (let ((__tmp154314
                                     (let ((__tmp154315
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj152938_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154315))))
                                (declare (not safe))
                                (cons __tmp154314 '()))))
                         (declare (not safe))
                         (cons __tmp154316 __tmp154313))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp154312)))
               (__tmp154283
                (let ((__tmp154300
                       (let ((__tmp154301
                              (let ((__tmp154308
                                     (let ((__tmp154309
                                            (let ((__tmp154310
                                                   (##structure-ref
                                                    _self152887_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp154310 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154309)))
                                    (__tmp154302
                                     (let ((__tmp154306
                                            (let ((__tmp154307
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152928_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154307)))
                                           (__tmp154303
                                            (let ((__tmp154304
                                                   (let ((__tmp154305
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154305))))
                                              (declare (not safe))
                                              (cons __tmp154304 '()))))
                                       (declare (not safe))
                                       (cons __tmp154306 __tmp154303))))
                                (declare (not safe))
                                (cons __tmp154308 __tmp154302))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp154301)))
                      (__tmp154284
                       (let ((__tmp154285
                              (let ((__tmp154286
                                     (let ((__tmp154298
                                            (let ((__tmp154299
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154299)))
                                           (__tmp154287
                                            (let ((__tmp154295
                                                   (let ((__tmp154296
                                                          (let ((__tmp154297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152887_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp154297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154296)))
                                                  (__tmp154288
                                                   (let ((__tmp154293
                                                          (let ((__tmp154294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj152938_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154294)))
                 (__tmp154289
                  (let ((__tmp154290
                         (let ((__tmp154291
                                (let ((__tmp154292
                                       (##structure-ref
                                        _self152887_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp154292 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154291))))
                    (declare (not safe))
                    (cons __tmp154290 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154293
                                                           __tmp154289))))
                                              (declare (not safe))
                                              (cons __tmp154295 __tmp154288))))
                                       (declare (not safe))
                                       (cons __tmp154298 __tmp154287))))
                                (declare (not safe))
                                (cons '%#call __tmp154286))))
                         (declare (not safe))
                         (cons __tmp154285 '()))))
                  (declare (not safe))
                  (cons __tmp154300 __tmp154284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154311
                                                         __tmp154283))))
                                            (declare (not safe))
                                            (cons '%#if __tmp154282))))
                                     (declare (not safe))
                                     (cons __tmp154281 '()))))
                              (declare (not safe))
                              (cons __tmp154319 __tmp154280))))
                      (declare (not safe))
                      (cons '%#let-values __tmp154279))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154277 _stx152889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp154268
                                                            (let ((__tmp154269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154275
                                  (let ((__tmp154276
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154276)))
                                 (__tmp154270
                                  (let ((__tmp154271
                                         (let ((__tmp154272
                                                (let ((__tmp154273
                                                       (let ((__tmp154274
                                                              (##structure-ref
                                                               _self152887_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp154274
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp154273))))
                                           (declare (not safe))
                                           (cons __tmp154272 '()))))
                                    (declare (not safe))
                                    (cons _object152930_ __tmp154271))))
                             (declare (not safe))
                             (cons __tmp154275 __tmp154270))))
                      (declare (not safe))
                      (cons '%#call __tmp154269))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154268 _stx152889_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152896152910_)
                              (let ()
                                (declare (not safe))
                                (_g152892152902_ _g152893152905_)))))
                      (let ()
                        (declare (not safe))
                        (_g152892152902_ _g152893152905_))))))
          (declare (not safe))
          (_g152891152940_ _args152890_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass153561 __method-table153562)
        (let ((__checked?153563
               (let ((__slot153566
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153561 'checked?))))
                 (if __slot153566
                     __slot153566
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot153564
               (let ((__slot153567
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153561 'slot))))
                 (if __slot153567
                     __slot153567
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id153565
               (let ((__slot153568
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153561 'id))))
                 (if __slot153568
                     __slot153568
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152887_ _ctx152888_ _stx152889_ _args152890_)
            (let* ((_g152892152902_
                    (lambda (_g152893152899_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152893152899_))))
                   (_g152891152940_
                    (lambda (_g152893152905_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152893152905_))
                          (let ((_e152897152907_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152893152905_))))
                            (let ((_hd152896152910_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152897152907_)))
                                  (_tl152895152912_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152897152907_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152895152912_))
                                  ((lambda (_L152915_)
                                     (let* ((_klass152926_
                                             (let ((__tmp154353
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152887_
                                                       __id153565
                                                       __klass153561
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152889_
                                                __tmp154353)))
                                            (_field152928_
                                             (let ((__tmp154354
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152887_
                                                       __slot153564
                                                       __klass153561
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152926_
                                                __tmp154354)))
                                            (_object152930_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152888_
                                                _L152915_))))
                                       (if (##structure-ref
                                            _klass152926_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154431
                                                  (let ((__tmp154440
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152887_
                        __checked?153563
                        __klass153561
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp154432
                 (let ((__tmp154437
                        (let ((__tmp154438
                               (let ((__tmp154439
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152887_
                                         __id153565
                                         __klass153561
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp154439 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154438)))
                       (__tmp154433
                        (let ((__tmp154435
                               (let ((__tmp154436
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152928_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154436)))
                              (__tmp154434
                               (let ()
                                 (declare (not safe))
                                 (cons _object152930_ '()))))
                          (declare (not safe))
                          (cons __tmp154435 __tmp154434))))
                   (declare (not safe))
                   (cons __tmp154437 __tmp154433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154440
                                                          __tmp154432))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154431
                                              _stx152889_))
                                           (if (##structure-ref
                                                _klass152926_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154421
                                                      (let ((__tmp154430
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152887_
                            __checked?153563
                            __klass153561
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp154422
                     (let ((__tmp154427
                            (let ((__tmp154428
                                   (let ((__tmp154429
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152887_
                                             __id153565
                                             __klass153561
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp154429 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154428)))
                           (__tmp154423
                            (let ((__tmp154425
                                   (let ((__tmp154426
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152928_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154426)))
                                  (__tmp154424
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152930_ '()))))
                              (declare (not safe))
                              (cons __tmp154425 __tmp154424))))
                       (declare (not safe))
                       (cons __tmp154427 __tmp154423))))
                (declare (not safe))
                (cons __tmp154430 __tmp154422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154421
                                                  _stx152889_))
                                               (let ((_$e152933_
                                                      (let ((__tmp154355
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152887_
                        __slot153564
                        __klass153561
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152926_ __tmp154355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e152933_
                                                     ((lambda (_klass152936_)
                                                        (let ((__tmp154411
                                                               (let ((__tmp154420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152887_
                                     __checked?153563
                                     __klass153561
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp154412
                              (let ((__tmp154417
                                     (let ((__tmp154418
                                            (let ((__tmp154419
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152887_
                                                      __id153565
                                                      __klass153561
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154419 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154418)))
                                    (__tmp154413
                                     (let ((__tmp154415
                                            (let ((__tmp154416
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152928_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154416)))
                                           (__tmp154414
                                            (let ()
                                              (declare (not safe))
                                              (cons _object152930_ '()))))
                                       (declare (not safe))
                                       (cons __tmp154415 __tmp154414))))
                                (declare (not safe))
                                (cons __tmp154417 __tmp154413))))
                         (declare (not safe))
                         (cons __tmp154420 __tmp154412))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp154411 _stx152889_)))
              _$e152933_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152887_
                                                            __checked?153563
                                                            __klass153561
                                                            '#f))
                                                         (let ((__tmp154365
                                                                (let* ((_$obj152938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp154366 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp154366)))
                               (__tmp154367
                                (let ((__tmp154407
                                       (let ((__tmp154408
                                              (let ((__tmp154410
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj152938_
                                                             '())))
                                                    (__tmp154409
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object152930_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp154410
                                                      __tmp154409))))
                                         (declare (not safe))
                                         (cons __tmp154408 '())))
                                      (__tmp154368
                                       (let ((__tmp154369
                                              (let ((__tmp154370
                                                     (let ((__tmp154399
                                                            (let ((__tmp154400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154404
                                  (let ((__tmp154405
                                         (let ((__tmp154406
                                                (##structure-ref
                                                 _klass152926_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp154406 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp154405)))
                                 (__tmp154401
                                  (let ((__tmp154402
                                         (let ((__tmp154403
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj152938_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154403))))
                                    (declare (not safe))
                                    (cons __tmp154402 '()))))
                             (declare (not safe))
                             (cons __tmp154404 __tmp154401))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp154400)))
                   (__tmp154371
                    (let ((__tmp154388
                           (let ((__tmp154389
                                  (let ((__tmp154396
                                         (let ((__tmp154397
                                                (let ((__tmp154398
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152887_
                                                          __id153565
                                                          __klass153561
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154398 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154397)))
                                        (__tmp154390
                                         (let ((__tmp154394
                                                (let ((__tmp154395
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152928_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154395)))
                                               (__tmp154391
                                                (let ((__tmp154392
                                                       (let ((__tmp154393
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152938_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154392 '()))))
                                           (declare (not safe))
                                           (cons __tmp154394 __tmp154391))))
                                    (declare (not safe))
                                    (cons __tmp154396 __tmp154390))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp154389)))
                          (__tmp154372
                           (let ((__tmp154373
                                  (let ((__tmp154374
                                         (let ((__tmp154386
                                                (let ((__tmp154387
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154387)))
                                               (__tmp154375
                                                (let ((__tmp154383
                                                       (let ((__tmp154384
                                                              (let ((__tmp154385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152887_
                                __id153565
                                __klass153561
                                '#f))))
                        (declare (not safe))
                        (cons __tmp154385 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154384)))
              (__tmp154376
               (let ((__tmp154381
                      (let ((__tmp154382
                             (let ()
                               (declare (not safe))
                               (cons _$obj152938_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154382)))
                     (__tmp154377
                      (let ((__tmp154378
                             (let ((__tmp154379
                                    (let ((__tmp154380
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152887_
                                              __slot153564
                                              __klass153561
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp154380 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154379))))
                        (declare (not safe))
                        (cons __tmp154378 '()))))
                 (declare (not safe))
                 (cons __tmp154381 __tmp154377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154383
                                                        __tmp154376))))
                                           (declare (not safe))
                                           (cons __tmp154386 __tmp154375))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154374))))
                             (declare (not safe))
                             (cons __tmp154373 '()))))
                      (declare (not safe))
                      (cons __tmp154388 __tmp154372))))
               (declare (not safe))
               (cons __tmp154399 __tmp154371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp154370))))
                                         (declare (not safe))
                                         (cons __tmp154369 '()))))
                                  (declare (not safe))
                                  (cons __tmp154407 __tmp154368))))
                          (declare (not safe))
                          (cons '%#let-values __tmp154367))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154365 _stx152889_))
                 (let ((__tmp154356
                        (let ((__tmp154357
                               (let ((__tmp154363
                                      (let ((__tmp154364
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp154364)))
                                     (__tmp154358
                                      (let ((__tmp154359
                                             (let ((__tmp154360
                                                    (let ((__tmp154361
                                                           (let ((__tmp154362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152887_
                             __slot153564
                             __klass153561
                             '#f))))
                     (declare (not safe))
                     (cons __tmp154362 '()))))
              (declare (not safe))
              (cons '%#quote __tmp154361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154360 '()))))
                                        (declare (not safe))
                                        (cons _object152930_ __tmp154359))))
                                 (declare (not safe))
                                 (cons __tmp154363 __tmp154358))))
                          (declare (not safe))
                          (cons '%#call __tmp154357))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154356 _stx152889_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152896152910_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152892152902_ _g152893152905_)))))
                          (let ()
                            (declare (not safe))
                            (_g152892152902_ _g152893152905_))))))
              (declare (not safe))
              (_g152891152940_ _args152890_))))))
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
      (lambda (_self152691_ _ctx152692_ _stx152693_ _args152694_)
        (let* ((_g152696152710_
                (lambda (_g152697152707_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152697152707_))))
               (_g152695152762_
                (lambda (_g152697152713_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152697152713_))
                      (let ((_e152702152715_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152697152713_))))
                        (let ((_hd152701152718_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152702152715_)))
                              (_tl152700152720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152702152715_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152700152720_))
                              (let ((_e152705152723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152700152720_))))
                                (let ((_hd152704152726_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152705152723_)))
                                      (_tl152703152728_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152705152723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152703152728_))
                                      ((lambda (_L152731_ _L152732_)
                                         (let* ((_klass152746_
                                                 (let ((__tmp154441
                                                        (##structure-ref
                                                         _self152691_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx152693_
                                                    __tmp154441)))
                                                (_field152748_
                                                 (let ((__tmp154442
                                                        (##structure-ref
                                                         _self152691_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152746_
                                                    __tmp154442)))
                                                (_object152750_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152692_
                                                    _L152732_)))
                                                (_value152752_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152692_
                                                    _L152731_))))
                                           (if (##structure-ref
                                                _klass152746_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154524
                                                      (let ((__tmp154534
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self152691_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp154525
                     (let ((__tmp154531
                            (let ((__tmp154532
                                   (let ((__tmp154533
                                          (##structure-ref
                                           _self152691_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154533 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154532)))
                           (__tmp154526
                            (let ((__tmp154529
                                   (let ((__tmp154530
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152748_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154530)))
                                  (__tmp154527
                                   (let ((__tmp154528
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152752_ '()))))
                                     (declare (not safe))
                                     (cons _object152750_ __tmp154528))))
                              (declare (not safe))
                              (cons __tmp154529 __tmp154527))))
                       (declare (not safe))
                       (cons __tmp154531 __tmp154526))))
                (declare (not safe))
                (cons __tmp154534 __tmp154525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154524
                                                  _stx152693_))
                                               (if (##structure-ref
                                                    _klass152746_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154513
                                                          (let ((__tmp154523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self152691_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154514
                         (let ((__tmp154520
                                (let ((__tmp154521
                                       (let ((__tmp154522
                                              (##structure-ref
                                               _self152691_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154522 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154521)))
                               (__tmp154515
                                (let ((__tmp154518
                                       (let ((__tmp154519
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152748_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154519)))
                                      (__tmp154516
                                       (let ((__tmp154517
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152752_ '()))))
                                         (declare (not safe))
                                         (cons _object152750_ __tmp154517))))
                                  (declare (not safe))
                                  (cons __tmp154518 __tmp154516))))
                           (declare (not safe))
                           (cons __tmp154520 __tmp154515))))
                    (declare (not safe))
                    (cons __tmp154523 __tmp154514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154513
                                                      _stx152693_))
                                                   (let ((_$e152755_
                                                          (let ((__tmp154443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self152691_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152746_ __tmp154443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152755_
                                                         ((lambda (_klass152758_)
                                                            (let ((__tmp154502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154512
                                  (if (##structure-ref
                                       _self152691_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp154503
                                  (let ((__tmp154509
                                         (let ((__tmp154510
                                                (let ((__tmp154511
                                                       (##structure-ref
                                                        _self152691_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp154511 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154510)))
                                        (__tmp154504
                                         (let ((__tmp154507
                                                (let ((__tmp154508
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152748_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154508)))
                                               (__tmp154505
                                                (let ((__tmp154506
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152752_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152750_
                                                        __tmp154506))))
                                           (declare (not safe))
                                           (cons __tmp154507 __tmp154505))))
                                    (declare (not safe))
                                    (cons __tmp154509 __tmp154504))))
                             (declare (not safe))
                             (cons __tmp154512 __tmp154503))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp154502 _stx152693_)))
                  _$e152755_)
                 (if (##structure-ref _self152691_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp154454
                            (let* ((_$obj152760_
                                    (let ((__tmp154455 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp154455)))
                                   (__tmp154456
                                    (let ((__tmp154498
                                           (let ((__tmp154499
                                                  (let ((__tmp154501
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp154500
                 (let () (declare (not safe)) (cons _object152750_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154501
                                                          __tmp154500))))
                                             (declare (not safe))
                                             (cons __tmp154499 '())))
                                          (__tmp154457
                                           (let ((__tmp154458
                                                  (let ((__tmp154459
                                                         (let ((__tmp154490
                                                                (let ((__tmp154491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154495
                                      (let ((__tmp154496
                                             (let ((__tmp154497
                                                    (##structure-ref
                                                     _klass152746_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp154497 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp154496)))
                                     (__tmp154492
                                      (let ((__tmp154493
                                             (let ((__tmp154494
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152760_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154494))))
                                        (declare (not safe))
                                        (cons __tmp154493 '()))))
                                 (declare (not safe))
                                 (cons __tmp154495 __tmp154492))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp154491)))
                       (__tmp154460
                        (let ((__tmp154478
                               (let ((__tmp154479
                                      (let ((__tmp154487
                                             (let ((__tmp154488
                                                    (let ((__tmp154489
                                                           (##structure-ref
                                                            _self152691_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp154489 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154488)))
                                            (__tmp154480
                                             (let ((__tmp154485
                                                    (let ((__tmp154486
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154486)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154481
                                                    (let ((__tmp154483
                                                           (let ((__tmp154484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152760_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154484)))
                  (__tmp154482
                   (let () (declare (not safe)) (cons _value152752_ '()))))
              (declare (not safe))
              (cons __tmp154483 __tmp154482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154485
                                                     __tmp154481))))
                                        (declare (not safe))
                                        (cons __tmp154487 __tmp154480))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp154479)))
                              (__tmp154461
                               (let ((__tmp154462
                                      (let ((__tmp154463
                                             (let ((__tmp154476
                                                    (let ((__tmp154477
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154477)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154464
                                                    (let ((__tmp154473
                                                           (let ((__tmp154474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154475
                                 (##structure-ref
                                  _self152691_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp154475 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154474)))
                  (__tmp154465
                   (let ((__tmp154471
                          (let ((__tmp154472
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152760_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp154472)))
                         (__tmp154466
                          (let ((__tmp154468
                                 (let ((__tmp154469
                                        (let ((__tmp154470
                                               (##structure-ref
                                                _self152691_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154470 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp154469)))
                                (__tmp154467
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152752_ '()))))
                            (declare (not safe))
                            (cons __tmp154468 __tmp154467))))
                     (declare (not safe))
                     (cons __tmp154471 __tmp154466))))
              (declare (not safe))
              (cons __tmp154473 __tmp154465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154476
                                                     __tmp154464))))
                                        (declare (not safe))
                                        (cons '%#call __tmp154463))))
                                 (declare (not safe))
                                 (cons __tmp154462 '()))))
                          (declare (not safe))
                          (cons __tmp154478 __tmp154461))))
                   (declare (not safe))
                   (cons __tmp154490 __tmp154460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp154459))))
                                             (declare (not safe))
                                             (cons __tmp154458 '()))))
                                      (declare (not safe))
                                      (cons __tmp154498 __tmp154457))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154456))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154454 _stx152693_))
                     (let ((__tmp154444
                            (let ((__tmp154445
                                   (let ((__tmp154452
                                          (let ((__tmp154453
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp154453)))
                                         (__tmp154446
                                          (let ((__tmp154447
                                                 (let ((__tmp154449
                                                        (let ((__tmp154450
                                                               (let ((__tmp154451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self152691_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp154451 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154450)))
               (__tmp154448
                (let () (declare (not safe)) (cons _value152752_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154449
                                                         __tmp154448))))
                                            (declare (not safe))
                                            (cons _object152750_
                                                  __tmp154447))))
                                     (declare (not safe))
                                     (cons __tmp154452 __tmp154446))))
                              (declare (not safe))
                              (cons '%#call __tmp154445))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154444 _stx152693_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152704152726_
                                       _hd152701152718_)
                                      (let ()
                                        (declare (not safe))
                                        (_g152696152710_ _g152697152713_)))))
                              (let ()
                                (declare (not safe))
                                (_g152696152710_ _g152697152713_)))))
                      (let ()
                        (declare (not safe))
                        (_g152696152710_ _g152697152713_))))))
          (declare (not safe))
          (_g152695152762_ _args152694_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass153569 __method-table153570)
        (let ((__checked?153571
               (let ((__slot153574
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153569 'checked?))))
                 (if __slot153574
                     __slot153574
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot153572
               (let ((__slot153575
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153569 'slot))))
                 (if __slot153575
                     __slot153575
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id153573
               (let ((__slot153576
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153569 'id))))
                 (if __slot153576
                     __slot153576
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152691_ _ctx152692_ _stx152693_ _args152694_)
            (let* ((_g152696152710_
                    (lambda (_g152697152707_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152697152707_))))
                   (_g152695152762_
                    (lambda (_g152697152713_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152697152713_))
                          (let ((_e152702152715_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152697152713_))))
                            (let ((_hd152701152718_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152702152715_)))
                                  (_tl152700152720_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152702152715_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152700152720_))
                                  (let ((_e152705152723_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152700152720_))))
                                    (let ((_hd152704152726_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152705152723_)))
                                          (_tl152703152728_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152705152723_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152703152728_))
                                          ((lambda (_L152731_ _L152732_)
                                             (let* ((_klass152746_
                                                     (let ((__tmp154535
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152691_
                                                               __id153573
                                                               __klass153569
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx152693_
                                                        __tmp154535)))
                                                    (_field152748_
                                                     (let ((__tmp154536
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152691_
                                                               __slot153572
                                                               __klass153569
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152746_
                                                        __tmp154536)))
                                                    (_object152750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152692_
                                                        _L152732_)))
                                                    (_value152752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152692_
                                                        _L152731_))))
                                               (if (##structure-ref
                                                    _klass152746_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154618
                                                          (let ((__tmp154628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152691_
                                __checked?153571
                                __klass153569
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154619
                         (let ((__tmp154625
                                (let ((__tmp154626
                                       (let ((__tmp154627
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self152691_
                                                 __id153573
                                                 __klass153569
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp154627 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154626)))
                               (__tmp154620
                                (let ((__tmp154623
                                       (let ((__tmp154624
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152748_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154624)))
                                      (__tmp154621
                                       (let ((__tmp154622
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152752_ '()))))
                                         (declare (not safe))
                                         (cons _object152750_ __tmp154622))))
                                  (declare (not safe))
                                  (cons __tmp154623 __tmp154621))))
                           (declare (not safe))
                           (cons __tmp154625 __tmp154620))))
                    (declare (not safe))
                    (cons __tmp154628 __tmp154619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154618
                                                      _stx152693_))
                                                   (if (##structure-ref
                                                        _klass152746_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp154607
                                                              (let ((__tmp154617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self152691_
                                    __checked?153571
                                    __klass153569
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp154608
                             (let ((__tmp154614
                                    (let ((__tmp154615
                                           (let ((__tmp154616
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152691_
                                                     __id153573
                                                     __klass153569
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154616 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154615)))
                                   (__tmp154609
                                    (let ((__tmp154612
                                           (let ((__tmp154613
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152748_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154613)))
                                          (__tmp154610
                                           (let ((__tmp154611
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152752_ '()))))
                                             (declare (not safe))
                                             (cons _object152750_
                                                   __tmp154611))))
                                      (declare (not safe))
                                      (cons __tmp154612 __tmp154610))))
                               (declare (not safe))
                               (cons __tmp154614 __tmp154609))))
                        (declare (not safe))
                        (cons __tmp154617 __tmp154608))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp154607 _stx152693_))
               (let ((_$e152755_
                      (let ((__tmp154537
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152691_
                                __slot153572
                                __klass153569
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152746_
                         __tmp154537))))
                 (if _$e152755_
                     ((lambda (_klass152758_)
                        (let ((__tmp154596
                               (let ((__tmp154606
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152691_
                                             __checked?153571
                                             __klass153569
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp154597
                                      (let ((__tmp154603
                                             (let ((__tmp154604
                                                    (let ((__tmp154605
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self152691_
                                                              __id153573
                                                              __klass153569
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp154605 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154604)))
                                            (__tmp154598
                                             (let ((__tmp154601
                                                    (let ((__tmp154602
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154602)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154599
                                                    (let ((__tmp154600
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152750_ __tmp154600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154601
                                                     __tmp154599))))
                                        (declare (not safe))
                                        (cons __tmp154603 __tmp154598))))
                                 (declare (not safe))
                                 (cons __tmp154606 __tmp154597))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp154596 _stx152693_)))
                      _$e152755_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152691_
                            __checked?153571
                            __klass153569
                            '#f))
                         (let ((__tmp154548
                                (let* ((_$obj152760_
                                        (let ((__tmp154549 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp154549)))
                                       (__tmp154550
                                        (let ((__tmp154592
                                               (let ((__tmp154593
                                                      (let ((__tmp154595
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152760_ '())))
                    (__tmp154594
                     (let () (declare (not safe)) (cons _object152750_ '()))))
                (declare (not safe))
                (cons __tmp154595 __tmp154594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154593 '())))
                                              (__tmp154551
                                               (let ((__tmp154552
                                                      (let ((__tmp154553
                                                             (let ((__tmp154584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154585
                                   (let ((__tmp154589
                                          (let ((__tmp154590
                                                 (let ((__tmp154591
                                                        (##structure-ref
                                                         _klass152746_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp154591 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp154590)))
                                         (__tmp154586
                                          (let ((__tmp154587
                                                 (let ((__tmp154588
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152760_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154588))))
                                            (declare (not safe))
                                            (cons __tmp154587 '()))))
                                     (declare (not safe))
                                     (cons __tmp154589 __tmp154586))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp154585)))
                           (__tmp154554
                            (let ((__tmp154572
                                   (let ((__tmp154573
                                          (let ((__tmp154581
                                                 (let ((__tmp154582
                                                        (let ((__tmp154583
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self152691_
                          __id153573
                          __klass153569
                          '#f))))
                  (declare (not safe))
                  (cons __tmp154583 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154582)))
                                                (__tmp154574
                                                 (let ((__tmp154579
                                                        (let ((__tmp154580
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152748_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154580)))
               (__tmp154575
                (let ((__tmp154577
                       (let ((__tmp154578
                              (let ()
                                (declare (not safe))
                                (cons _$obj152760_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154578)))
                      (__tmp154576
                       (let () (declare (not safe)) (cons _value152752_ '()))))
                  (declare (not safe))
                  (cons __tmp154577 __tmp154576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154579
                                                         __tmp154575))))
                                            (declare (not safe))
                                            (cons __tmp154581 __tmp154574))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp154573)))
                                  (__tmp154555
                                   (let ((__tmp154556
                                          (let ((__tmp154557
                                                 (let ((__tmp154570
                                                        (let ((__tmp154571
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154571)))
               (__tmp154558
                (let ((__tmp154567
                       (let ((__tmp154568
                              (let ((__tmp154569
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self152691_
                                        __id153573
                                        __klass153569
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp154569 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154568)))
                      (__tmp154559
                       (let ((__tmp154565
                              (let ((__tmp154566
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152760_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154566)))
                             (__tmp154560
                              (let ((__tmp154562
                                     (let ((__tmp154563
                                            (let ((__tmp154564
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152691_
                                                      __slot153572
                                                      __klass153569
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154564 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154563)))
                                    (__tmp154561
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152752_ '()))))
                                (declare (not safe))
                                (cons __tmp154562 __tmp154561))))
                         (declare (not safe))
                         (cons __tmp154565 __tmp154560))))
                  (declare (not safe))
                  (cons __tmp154567 __tmp154559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154570
                                                         __tmp154558))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154557))))
                                     (declare (not safe))
                                     (cons __tmp154556 '()))))
                              (declare (not safe))
                              (cons __tmp154572 __tmp154555))))
                       (declare (not safe))
                       (cons __tmp154584 __tmp154554))))
                (declare (not safe))
                (cons '%#if __tmp154553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154552 '()))))
                                          (declare (not safe))
                                          (cons __tmp154592 __tmp154551))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154550))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154548 _stx152693_))
                         (let ((__tmp154538
                                (let ((__tmp154539
                                       (let ((__tmp154546
                                              (let ((__tmp154547
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp154547)))
                                             (__tmp154540
                                              (let ((__tmp154541
                                                     (let ((__tmp154543
                                                            (let ((__tmp154544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154545
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152691_
                                     __slot153572
                                     __klass153569
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp154545 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154544)))
                   (__tmp154542
                    (let () (declare (not safe)) (cons _value152752_ '()))))
               (declare (not safe))
               (cons __tmp154543 __tmp154542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152750_
                                                      __tmp154541))))
                                         (declare (not safe))
                                         (cons __tmp154546 __tmp154540))))
                                  (declare (not safe))
                                  (cons '%#call __tmp154539))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp154538
                            _stx152693_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152704152726_
                                           _hd152701152718_)
                                          (let ()
                                            (declare (not safe))
                                            (_g152696152710_
                                             _g152697152713_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g152696152710_ _g152697152713_)))))
                          (let ()
                            (declare (not safe))
                            (_g152696152710_ _g152697152713_))))))
              (declare (not safe))
              (_g152695152762_ _args152694_))))))
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
      (lambda (_self152524_ _ctx152525_ _stx152526_ _args152527_)
        (let* ((_self152528152537_ _self152524_)
               (_E152530152541_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152528152537_))))
               (_K152531152548_
                (lambda (_inline152544_ _dispatch152545_ _arity152546_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self152524_ _args152527_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx152526_
                         _arity152546_)))
                  (if _inline152544_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp154634
                               (let ((__tmp154635
                                      (_inline152544_ _stx152526_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154635
                                  _stx152526_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx152525_ __tmp154634)))
                      (if _dispatch152545_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch152545_))
                            (let ((__tmp154629
                                   (let ((__tmp154630
                                          (let ((__tmp154631
                                                 (let ((__tmp154632
                                                        (let ((__tmp154633
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch152545_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154632
                                                         _args152527_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154631))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp154630
                                      _stx152526_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx152525_ __tmp154629)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx152525_ _stx152526_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152528152537_ 'gxc#!lambda::t))
              (let* ((_e152532152551_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152528152537_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152533152554_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152528152537_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152557_ _e152533152554_)
                     (_e152534152559_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152528152537_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch152562_ _e152534152559_)
                     (_e152535152564_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152528152537_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline152567_ _e152535152564_))
                (declare (not safe))
                (_K152531152548_
                 _inline152567_
                 _dispatch152562_
                 _arity152557_))
              (let () (declare (not safe)) (_E152530152541_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self152362_ _ctx152363_ _stx152364_ _args152365_)
        (let* ((_self152366152373_ _self152362_)
               (_E152368152377_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152366152373_))))
               (_K152369152391_
                (lambda (_clauses152380_)
                  (let ((_$e152386_
                         (let ((__tmp154636
                                (lambda (_g152381152383_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g152381152383_
                                     _args152365_)))))
                           (declare (not safe))
                           (find __tmp154636 _clauses152380_))))
                    (if _$e152386_
                        ((lambda (_clause152389_)
                           (let ((__method153847
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause152389_
                                     'optimize-call))))
                             (if __method153847
                                 (__method153847
                                  _clause152389_
                                  _ctx152363_
                                  _stx152364_
                                  _args152365_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause152389_
                                          'optimize-call)))))
                         _$e152386_)
                        (let ((__tmp154637
                               (map gxc#!lambda-arity _clauses152380_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx152364_
                           __tmp154637)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152366152373_
                 'gxc#!case-lambda::t))
              (let* ((_e152370152394_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152366152373_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152371152397_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152366152373_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses152400_ _e152371152397_))
                (declare (not safe))
                (_K152369152391_ _clauses152400_))
              (let () (declare (not safe)) (_E152368152377_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self152176_ _args152177_)
        (let* ((_self152178152185_ _self152176_)
               (_E152180152189_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152178152185_))))
               (_K152181152229_
                (lambda (_arity152192_)
                  (let* ((_arity152193152202_ _arity152192_)
                         (_E152196152206_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity152193152202_)))))
                    (let ((_K152200152226_
                           (lambda ()
                             (fx= (length _args152177_) _arity152192_)))
                          (_K152197152212_
                           (lambda (_arity152210_)
                             (fx>= (length _args152177_) _arity152210_))))
                      (let ((_try-match152195152222_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity152193152202_))
                                   (let ((_tl152199152217_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity152193152202_)))
                                         (_hd152198152215_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity152193152202_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl152199152217_))
                                         (let ((_arity152220_
                                                _hd152198152215_))
                                           (declare (not safe))
                                           (_K152197152212_ _arity152220_))
                                         (let ()
                                           (declare (not safe))
                                           (_E152196152206_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E152196152206_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity152193152202_))
                            (let () (declare (not safe)) (_K152200152226_))
                            (let ()
                              (declare (not safe))
                              (_try-match152195152222_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152178152185_ 'gxc#!lambda::t))
              (let* ((_e152182152232_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152178152185_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152183152235_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152178152185_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152238_ _e152183152235_))
                (declare (not safe))
                (_K152181152229_ _arity152238_))
              (let () (declare (not safe)) (_E152180152189_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self152060_ _ctx152061_ _stx152062_ _args152063_)
        (let* ((_self152064152072_ _self152060_)
               (_E152066152076_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152064152072_))))
               (_K152067152160_
                (lambda (_dispatch152079_ _table152080_)
                  (let* ((_g152081152090_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch152079_)))
                         (_else152083152098_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch152079_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx152061_ _stx152062_))))
                         (_K152085152144_
                          (lambda (_main152101_ _keys152102_)
                            (let ((_g154638_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx152062_
                                      _args152063_))))
                              (begin
                                (let ((_g154639_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g154638_)
                                             (##vector-length _g154638_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g154639_ 2)))
                                      (error "Context expects 2 values"
                                             _g154639_)))
                                (let ((_pargs152104_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154638_ 0)))
                                      (_kwargs152105_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154638_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main152101_))
                                    (if _table152080_
                                        (let ((_xargs152112_
                                               (map (lambda (_key152107_)
                                                      (let ((_$e152109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key152107_ _kwargs152105_))))
                (if _$e152109_ (values _$e152109_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys152102_)))
                                          (for-each
                                           (lambda (_kw152114_)
                                             (if (memq (car _kw152114_)
                                                       _keys152102_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx152062_
                                                    _keys152102_
                                                    _kw152114_))))
                                           _kwargs152105_)
                                          (let ((__tmp154691
                                                 (let ((__tmp154692
                                                        (let ((__tmp154693
                                                               (let ((__tmp154698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154699
                                     (let ()
                                       (declare (not safe))
                                       (cons _main152101_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154699)))
                             (__tmp154694
                              (let ((__tmp154696
                                     (let ((__tmp154697
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154697)))
                                    (__tmp154695
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs152104_
                                               _xargs152112_))))
                                (declare (not safe))
                                (cons __tmp154696 __tmp154695))))
                         (declare (not safe))
                         (cons __tmp154698 __tmp154694))))
                  (declare (not safe))
                  (cons '%#call __tmp154693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154692
                                                    _stx152062_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152061_
                                             __tmp154691)))
                                        (let* ((_kwt152116_
                                                (let ((__tmp154640
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp154640)))
                                               (_kwvars152119_
                                                (map (lambda (_g154641_)
                                                       (let ((__tmp154642
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp154642)))
                                                     _kwargs152105_))
                                               (_kwbind152124_
                                                (map (lambda (_kw152121_
                                                              _kwvar152122_)
                                                       (let ((__tmp154645
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar152122_ '())))
                     (__tmp154643
                      (let ((__tmp154644 (cdr _kw152121_)))
                        (declare (not safe))
                        (cons __tmp154644 '()))))
                 (declare (not safe))
                 (cons __tmp154645 __tmp154643)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152105_
                                                     _kwvars152119_))
                                               (_kwset152129_
                                                (map (lambda (_kw152126_
                                                              _kwvar152127_)
                                                       (let ((__tmp154646
                                                              (let ((__tmp154647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154655
                                    (let ((__tmp154656
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt152116_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154656)))
                                   (__tmp154648
                                    (let ((__tmp154652
                                           (let ((__tmp154653
                                                  (let ((__tmp154654
                                                         (car _kw152126_)))
                                                    (declare (not safe))
                                                    (cons __tmp154654 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154653)))
                                          (__tmp154649
                                           (let ((__tmp154650
                                                  (let ((__tmp154651
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar152127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154651))))
                                             (declare (not safe))
                                             (cons __tmp154650 '()))))
                                      (declare (not safe))
                                      (cons __tmp154652 __tmp154649))))
                               (declare (not safe))
                               (cons __tmp154655 __tmp154648))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp154647))))
                 (declare (not safe))
                 (cons '%#call __tmp154646)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152105_
                                                     _kwvars152119_))
                                               (_xkwargs152134_
                                                (map (lambda (_kw152131_
                                                              _kwvar152132_)
                                                       (let ((__tmp154659
                                                              (car _kw152131_))
                                                             (__tmp154657
                                                              (let ((__tmp154658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar152132_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154658))))
                 (declare (not safe))
                 (cons __tmp154659 __tmp154657)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152105_
                                                     _kwvars152119_))
                                               (_xargs152141_
                                                (map (lambda (_key152136_)
                                                       (let ((_$e152138_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key152136_ _xkwargs152134_))))
                 (if _$e152138_ (values _$e152138_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys152102_)))
                                          (let ((__tmp154660
                                                 (let ((__tmp154661
                                                        (let ((__tmp154662
                                                               (let ((__tmp154663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154664
                                     (let ((__tmp154665
                                            (let ((__tmp154679
                                                   (let ((__tmp154680
                                                          (let ((__tmp154690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt152116_ '())))
                        (__tmp154681
                         (let ((__tmp154682
                                (let ((__tmp154683
                                       (let ((__tmp154684
                                              (let ((__tmp154685
                                                     (let ((__tmp154687
                                                            (let ((__tmp154688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154689 (length _kwargs152105_)))
                             (declare (not safe))
                             (cons __tmp154689 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154688)))
                   (__tmp154686
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp154687 __tmp154686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp154685))))
                                         (declare (not safe))
                                         (cons '%#call __tmp154684))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp154683
                                   _stx152062_))))
                           (declare (not safe))
                           (cons __tmp154682 '()))))
                    (declare (not safe))
                    (cons __tmp154690 __tmp154681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154680 '())))
                                                  (__tmp154666
                                                   (let ((__tmp154667
                                                          (let ((__tmp154668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154669
                                (let ((__tmp154670
                                       (let ((__tmp154671
                                              (let ((__tmp154672
                                                     (let ((__tmp154677
                                                            (let ((__tmp154678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main152101_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154678)))
                   (__tmp154673
                    (let ((__tmp154675
                           (let ((__tmp154676
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt152116_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154676)))
                          (__tmp154674
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs152104_ _xargs152141_))))
                      (declare (not safe))
                      (cons __tmp154675 __tmp154674))))
               (declare (not safe))
               (cons __tmp154677 __tmp154673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp154672))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154671
                                          _stx152062_))))
                                  (declare (not safe))
                                  (cons __tmp154670 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp154669 _kwset152129_))))
                    (declare (not safe))
                    (cons '%#begin __tmp154668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154667 '()))))
                                              (declare (not safe))
                                              (cons __tmp154679 __tmp154666))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp154665))))
                                (declare (not safe))
                                (cons __tmp154664 '()))))
                         (declare (not safe))
                         (cons _kwbind152124_ __tmp154663))))
                  (declare (not safe))
                  (cons '%#let-values __tmp154662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154661
                                                    _stx152062_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152061_
                                             __tmp154660)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g152081152090_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e152086152147_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152081152090_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e152087152150_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152081152090_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys152153_ _e152087152150_)
                               (_e152088152155_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152081152090_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main152158_ _e152088152155_))
                          (declare (not safe))
                          (_K152085152144_ _main152158_ _keys152153_))
                        (let () (declare (not safe)) (_else152083152098_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152064152072_
                 'gxc#!kw-lambda::t))
              (let* ((_e152068152163_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152064152072_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152069152166_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152064152072_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table152169_ _e152069152166_)
                     (_e152070152171_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152064152072_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch152174_ _e152070152171_))
                (declare (not safe))
                (_K152067152160_ _dispatch152174_ _table152169_))
              (let () (declare (not safe)) (_E152066152076_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx151673_ _args151674_)
        (let _lp151676_ ((_rest151678_ _args151674_)
                         (_pargs151679_ '())
                         (_kwargs151680_ '()))
          (let* ((___stx153727153728_ _rest151678_)
                 (_g151686151738_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153727153728_)))))
            (let ((___kont153729153730_
                   (lambda (_L151917_ _L151918_)
                     (let ((__tmp154700
                            (let ()
                              (declare (not safe))
                              (cons _L151918_ _pargs151679_))))
                       (declare (not safe))
                       (_lp151676_ _L151917_ __tmp154700 _kwargs151680_))))
                  (___kont153731153732_
                   (lambda (_L151863_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151863_ _pargs151679_))
                             (reverse _kwargs151680_))))
                  (___kont153733153734_
                   (lambda (_L151810_ _L151811_ _L151812_)
                     (let ((_kw151829_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151812_))))
                       (if (assq _kw151829_ _kwargs151680_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx151673_
                              _kw151829_))
                           (let ((__tmp154701
                                  (let ((__tmp154702
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151829_ _L151811_))))
                                    (declare (not safe))
                                    (cons __tmp154702 _kwargs151680_))))
                             (declare (not safe))
                             (_lp151676_
                              _L151810_
                              _pargs151679_
                              __tmp154701))))))
                  (___kont153735153736_
                   (lambda (_L151758_ _L151759_)
                     (let ((__tmp154703
                            (let ()
                              (declare (not safe))
                              (cons _L151759_ _pargs151679_))))
                       (declare (not safe))
                       (_lp151676_ _L151758_ __tmp154703 _kwargs151680_))))
                  (___kont153737153738_
                   (lambda ()
                     (values (reverse _pargs151679_)
                             (reverse _kwargs151680_)))))
              (let* ((_g151685151745_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153727153728_))
                            (___kont153737153738_)
                            (let () (declare (not safe)) (_g151686151738_)))))
                     (___match153834153835_
                      (lambda (_e151719151778_
                               _hd151718151781_
                               _tl151717151783_
                               _e151722151786_
                               _hd151721151789_
                               _tl151720151791_
                               _e151725151794_
                               _hd151724151797_
                               _tl151723151799_
                               _e151728151802_
                               _hd151727151805_
                               _tl151726151807_)
                        (let ((_L151810_ _tl151726151807_)
                              (_L151811_ _hd151727151805_)
                              (_L151812_ _hd151724151797_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151812_))
                              (___kont153733153734_
                               _L151810_
                               _L151811_
                               _L151812_)
                              (___kont153735153736_
                               _tl151717151783_
                               _hd151718151781_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153727153728_))
                    (let ((_e151692151882_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153727153728_))))
                      (let ((_tl151690151887_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151692151882_)))
                            (_hd151691151885_
                             (let ()
                               (declare (not safe))
                               (##car _e151692151882_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd151691151885_))
                            (let ((_e151695151890_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd151691151885_))))
                              (let ((_tl151693151895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151695151890_)))
                                    (_hd151694151893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151695151890_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd151694151893_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd151694151893_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl151693151895_))
                                            (let ((_e151698151898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl151693151895_))))
                                              (let ((_tl151696151903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151698151898_)))
                                                    (_hd151697151901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151698151898_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd151697151901_))
                                                    (let ((_e151699151906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151697151901_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151699151906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151696151903_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151690151887_))
                          (let ((_e151702151909_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151690151887_))))
                            (let ((_tl151700151914_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151702151909_)))
                                  (_hd151701151912_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151702151909_))))
                              (___kont153729153730_
                               _tl151700151914_
                               _hd151701151912_)))
                          (___kont153735153736_
                           _tl151690151887_
                           _hd151691151885_))
                      (___kont153735153736_ _tl151690151887_ _hd151691151885_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151699151906_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151696151903_))
                          (___kont153731153732_ _tl151690151887_)
                          (___kont153735153736_
                           _tl151690151887_
                           _hd151691151885_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151696151903_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151690151887_))
                              (let ((_e151728151802_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151690151887_))))
                                (let ((_tl151726151807_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151728151802_)))
                                      (_hd151727151805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151728151802_))))
                                  (___match153834153835_
                                   _e151692151882_
                                   _hd151691151885_
                                   _tl151690151887_
                                   _e151695151890_
                                   _hd151694151893_
                                   _tl151693151895_
                                   _e151698151898_
                                   _hd151697151901_
                                   _tl151696151903_
                                   _e151728151802_
                                   _hd151727151805_
                                   _tl151726151807_)))
                              (___kont153735153736_
                               _tl151690151887_
                               _hd151691151885_))
                          (___kont153735153736_
                           _tl151690151887_
                           _hd151691151885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151696151903_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl151690151887_))
                                                            (let ((_e151728151802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl151690151887_))))
                      (let ((_tl151726151807_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151728151802_)))
                            (_hd151727151805_
                             (let ()
                               (declare (not safe))
                               (##car _e151728151802_))))
                        (___match153834153835_
                         _e151692151882_
                         _hd151691151885_
                         _tl151690151887_
                         _e151695151890_
                         _hd151694151893_
                         _tl151693151895_
                         _e151698151898_
                         _hd151697151901_
                         _tl151696151903_
                         _e151728151802_
                         _hd151727151805_
                         _tl151726151807_)))
                    (___kont153735153736_ _tl151690151887_ _hd151691151885_))
                (___kont153735153736_ _tl151690151887_ _hd151691151885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153735153736_
                                             _tl151690151887_
                                             _hd151691151885_))
                                        (___kont153735153736_
                                         _tl151690151887_
                                         _hd151691151885_))
                                    (___kont153735153736_
                                     _tl151690151887_
                                     _hd151691151885_))))
                            (___kont153735153736_
                             _tl151690151887_
                             _hd151691151885_))))
                    (let () (declare (not safe)) (_g151685151745_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self151668_ _ctx151669_ _stx151670_ _args151671_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx151669_ _stx151670_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
