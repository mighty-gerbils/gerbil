(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1710155063)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp153848 (list gxc#::basic-xform::t))
            (__tmp153846
             (let ((__tmp153847
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp153847 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp153848
         '()
         __tmp153846
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _$args153549_
        (apply make-instance gxc#::optimize-call::t _$args153549_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp153849
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (make-promise __tmp153849)))
    (define gxc#apply-optimize-call
      (lambda (_stx153541_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_self153544_
                (let ((__obj153843
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj153843))
               (__tmp153850
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self153544_ _stx153541_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp153850
           gxc#current-compile-method
           _self153544_))))
    (define gxc#optimize-call%
      (lambda (_self153395_ _stx153396_)
        (let* ((___stx153594153595_ _stx153396_)
               (_g153399153419_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx153594153595_)))))
          (let ((___kont153596153597_
                 (lambda (_L153463_ _L153464_)
                   (let* ((_rator-id153482_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L153464_)))
                          (_rator-type153484_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id153482_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type153484_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp153851
                                  (##structure-ref
                                   _rator-type153484_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id153482_
                              '" => "
                              _rator-type153484_
                              '" "
                              __tmp153851))
                           (let ((_optimized153487_
                                  (let ((__method153844
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type153484_
                                            'optimize-call))))
                                    (if __method153844
                                        (__method153844
                                         _rator-type153484_
                                         _self153395_
                                         _stx153396_
                                         _L153463_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type153484_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type153484_))
                                 _optimized153487_
                                 (let* ((___stx153576153577_ _optimized153487_)
                                        (_g153490153500_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx153576153577_)))))
                                   (let ((___kont153578153579_
                                          (lambda (_L153520_)
                                            (let ((__tmp153852
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L153520_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp153852
                                               _stx153396_))))
                                         (___kont153580153581_
                                          (lambda () _optimized153487_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx153576153577_))
                                         (let ((_e153495153512_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx153576153577_))))
                                           (let ((_tl153493153517_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e153495153512_)))
                                                 (_hd153494153515_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e153495153512_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd153494153515_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd153494153515_))
                                                     (___kont153578153579_
                                                      _tl153493153517_)
                                                     (___kont153580153581_))
                                                 (___kont153580153581_))))
                                         (___kont153580153581_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type153484_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _self153395_ _stx153396_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx153396_
                                _rator-type153484_)))))))
                (___kont153598153599_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _self153395_ _stx153396_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx153594153595_))
                (let ((_e153405153431_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx153594153595_))))
                  (let ((_tl153403153436_
                         (let () (declare (not safe)) (##cdr _e153405153431_)))
                        (_hd153404153434_
                         (let ()
                           (declare (not safe))
                           (##car _e153405153431_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl153403153436_))
                        (let ((_e153408153439_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153403153436_))))
                          (let ((_tl153406153444_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153408153439_)))
                                (_hd153407153442_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153408153439_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd153407153442_))
                                (let ((_e153411153447_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd153407153442_))))
                                  (let ((_tl153409153452_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e153411153447_)))
                                        (_hd153410153450_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e153411153447_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd153410153450_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd153410153450_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl153409153452_))
                                                (let ((_e153414153455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl153409153452_))))
                                                  (let ((_tl153412153460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153414153455_)))
                                                        (_hd153413153458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153414153455_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl153412153460_))
                                                        (___kont153596153597_
                                                         _tl153406153444_
                                                         _hd153413153458_)
                                                        (___kont153598153599_))))
                                                (___kont153598153599_))
                                            (___kont153598153599_))
                                        (___kont153598153599_))))
                                (___kont153598153599_))))
                        (___kont153598153599_))))
                (___kont153598153599_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self153348_ _ctx153349_ _stx153350_ _args153351_)
        (let* ((_g153353153363_
                (lambda (_g153354153360_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g153354153360_))))
               (_g153352153392_
                (lambda (_g153354153366_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g153354153366_))
                      (let ((_e153358153368_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g153354153366_))))
                        (let ((_hd153357153371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e153358153368_)))
                              (_tl153356153373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e153358153368_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl153356153373_))
                              ((lambda (_L153376_)
                                 (let* ((_klass153387_
                                         (let ((__tmp153853
                                                (##structure-ref
                                                 _self153348_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx153350_
                                            __tmp153853)))
                                        (_object153389_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx153349_
                                            _L153376_))))
                                   (if (##structure-ref
                                        _klass153387_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153869
                                              (let ((__tmp153870
                                                     (let ((__tmp153872
                                                            (let ((__tmp153873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153874
                                  (##structure-ref
                                   _klass153387_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153874 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153873)))
                   (__tmp153871
                    (let () (declare (not safe)) (cons _object153389_ '()))))
               (declare (not safe))
               (cons __tmp153872 __tmp153871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp153870))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153869
                                          _stx153350_))
                                       (if (##structure-ref
                                            _klass153387_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153863
                                                  (let ((__tmp153864
                                                         (let ((__tmp153866
                                                                (let ((__tmp153867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153868
                                      (##structure-ref
                                       _klass153387_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153868 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153867)))
                       (__tmp153865
                        (let ()
                          (declare (not safe))
                          (cons _object153389_ '()))))
                   (declare (not safe))
                   (cons __tmp153866 __tmp153865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp153864))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153863
                                              _stx153350_))
                                           (let ((__tmp153854
                                                  (let ((__tmp153855
                                                         (let ((__tmp153861
                                                                (let ((__tmp153862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153862)))
                       (__tmp153856
                        (let ((__tmp153858
                               (let ((__tmp153859
                                      (let ((__tmp153860
                                             (##structure-ref
                                              _self153348_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp153860 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp153859)))
                              (__tmp153857
                               (let ()
                                 (declare (not safe))
                                 (cons _object153389_ '()))))
                          (declare (not safe))
                          (cons __tmp153858 __tmp153857))))
                   (declare (not safe))
                   (cons __tmp153861 __tmp153856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp153855))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153854
                                              _stx153350_))))))
                               _hd153357153371_)
                              (let ()
                                (declare (not safe))
                                (_g153353153363_ _g153354153366_)))))
                      (let ()
                        (declare (not safe))
                        (_g153353153363_ _g153354153366_))))))
          (declare (not safe))
          (_g153352153392_ _args153351_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass153551 __method-table153552)
        (let ((__id153553
               (let ((__slot153554
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153551 'id))))
                 (if __slot153554
                     __slot153554
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153348_ _ctx153349_ _stx153350_ _args153351_)
            (let* ((_g153353153363_
                    (lambda (_g153354153360_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g153354153360_))))
                   (_g153352153392_
                    (lambda (_g153354153366_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g153354153366_))
                          (let ((_e153358153368_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g153354153366_))))
                            (let ((_hd153357153371_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e153358153368_)))
                                  (_tl153356153373_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e153358153368_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl153356153373_))
                                  ((lambda (_L153376_)
                                     (let* ((_klass153387_
                                             (let ((__tmp153875
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self153348_
                                                       __id153553
                                                       __klass153551
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx153350_
                                                __tmp153875)))
                                            (_object153389_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx153349_
                                                _L153376_))))
                                       (if (##structure-ref
                                            _klass153387_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153891
                                                  (let ((__tmp153892
                                                         (let ((__tmp153894
                                                                (let ((__tmp153895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153896
                                      (##structure-ref
                                       _klass153387_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153896 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp153895)))
                       (__tmp153893
                        (let ()
                          (declare (not safe))
                          (cons _object153389_ '()))))
                   (declare (not safe))
                   (cons __tmp153894 __tmp153893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp153892))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153891
                                              _stx153350_))
                                           (if (##structure-ref
                                                _klass153387_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153885
                                                      (let ((__tmp153886
                                                             (let ((__tmp153888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153889
                                   (let ((__tmp153890
                                          (##structure-ref
                                           _klass153387_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153890 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp153889)))
                           (__tmp153887
                            (let ()
                              (declare (not safe))
                              (cons _object153389_ '()))))
                       (declare (not safe))
                       (cons __tmp153888 __tmp153887))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp153886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153885
                                                  _stx153350_))
                                               (let ((__tmp153876
                                                      (let ((__tmp153877
                                                             (let ((__tmp153883
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153884
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153884)))
                           (__tmp153878
                            (let ((__tmp153880
                                   (let ((__tmp153881
                                          (let ((__tmp153882
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self153348_
                                                    __id153553
                                                    __klass153551
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp153882 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp153881)))
                                  (__tmp153879
                                   (let ()
                                     (declare (not safe))
                                     (cons _object153389_ '()))))
                              (declare (not safe))
                              (cons __tmp153880 __tmp153879))))
                       (declare (not safe))
                       (cons __tmp153883 __tmp153878))))
                (declare (not safe))
                (cons '%#call __tmp153877))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153876
                                                  _stx153350_))))))
                                   _hd153357153371_)
                                  (let ()
                                    (declare (not safe))
                                    (_g153353153363_ _g153354153366_)))))
                          (let ()
                            (declare (not safe))
                            (_g153353153363_ _g153354153366_))))))
              (declare (not safe))
              (_g153352153392_ _args153351_))))))
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
      (lambda (_self153063_ _ctx153064_ _stx153065_ _args153066_)
        (let* ((_klass153068_
                (let ((__tmp153897
                       (##structure-ref _self153063_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx153065_ __tmp153897)))
               (_fields153070_
                (length (##structure-ref _klass153068_ '5 gxc#!class::t '#f)))
               (_args153076_
                (map (lambda (_g153071153073_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _ctx153064_ _g153071153073_)))
                     _args153066_))
               (_inline-make-object153078_
                (let ((__tmp153898
                       (let ((__tmp153904
                              (let ((__tmp153905
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153905)))
                             (__tmp153899
                              (let ((__tmp153901
                                     (let ((__tmp153902
                                            (let ((__tmp153903
                                                   (##structure-ref
                                                    _self153063_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153903 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153902)))
                                    (__tmp153900
                                     (make-list _fields153070_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp153901 __tmp153900))))
                         (declare (not safe))
                         (cons __tmp153904 __tmp153899))))
                  (declare (not safe))
                  (cons '%#call __tmp153898))))
          (let ((_$e153081_
                 (##structure-ref _klass153068_ '6 gxc#!class::t '#f)))
            (if _$e153081_
                ((lambda (_ctor153084_)
                   (let ((_$obj153086_
                          (let ((__tmp154006 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp154006)))
                         (_ctor-impl153087_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass153068_
                             _ctor153084_))))
                     (let ((__tmp154007
                            (let ((__tmp154008
                                   (let ((__tmp154076
                                          (let ((__tmp154077
                                                 (let ((__tmp154079
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj153086_
                                                                '())))
                                                       (__tmp154078
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object153078_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp154079
                                                         __tmp154078))))
                                            (declare (not safe))
                                            (cons __tmp154077 '())))
                                         (__tmp154009
                                          (let ((__tmp154010
                                                 (let ((__tmp154011
                                                        (let ((__tmp154015
                                                               (if _ctor-impl153087_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154070
                                  (let ((__tmp154074
                                         (let ((__tmp154075
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl153087_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154075)))
                                        (__tmp154071
                                         (let ((__tmp154072
                                                (let ((__tmp154073
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj153086_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154073))))
                                           (declare (not safe))
                                           (cons __tmp154072 _args153076_))))
                                    (declare (not safe))
                                    (cons __tmp154074 __tmp154071))))
                             (declare (not safe))
                             (cons '%#call __tmp154070))
                           (let* ((_$ctor153089_
                                   (let ((__tmp154016 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp154016)))
                                  (__tmp154017
                                   (let ((__tmp154052
                                          (let ((__tmp154053
                                                 (let ((__tmp154069
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor153089_
                                                                '())))
                                                       (__tmp154054
                                                        (let ((__tmp154055
                                                               (let ((__tmp154056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154067
                                     (let ((__tmp154068
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154068)))
                                    (__tmp154057
                                     (let ((__tmp154064
                                            (let ((__tmp154065
                                                   (let ((__tmp154066
                                                          (##structure-ref
                                                           _self153063_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp154066 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154065)))
                                           (__tmp154058
                                            (let ((__tmp154062
                                                   (let ((__tmp154063
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154063)))
                                                  (__tmp154059
                                                   (let ((__tmp154060
                                                          (let ((__tmp154061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor153084_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154060 '()))))
                                              (declare (not safe))
                                              (cons __tmp154062 __tmp154059))))
                                       (declare (not safe))
                                       (cons __tmp154064 __tmp154058))))
                                (declare (not safe))
                                (cons __tmp154067 __tmp154057))))
                         (declare (not safe))
                         (cons '%#call __tmp154056))))
                  (declare (not safe))
                  (cons __tmp154055 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154069
                                                         __tmp154054))))
                                            (declare (not safe))
                                            (cons __tmp154053 '())))
                                         (__tmp154018
                                          (let ((__tmp154019
                                                 (let ((__tmp154020
                                                        (let ((__tmp154050
                                                               (let ((__tmp154051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor153089_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154051)))
                      (__tmp154021
                       (let ((__tmp154043
                              (let ((__tmp154044
                                     (let ((__tmp154048
                                            (let ((__tmp154049
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor153089_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154049)))
                                           (__tmp154045
                                            (let ((__tmp154046
                                                   (let ((__tmp154047
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154047))))
                                              (declare (not safe))
                                              (cons __tmp154046
                                                    _args153076_))))
                                       (declare (not safe))
                                       (cons __tmp154048 __tmp154045))))
                                (declare (not safe))
                                (cons '%#call __tmp154044)))
                             (__tmp154022
                              (let ((__tmp154023
                                     (let ((__tmp154024
                                            (let ((__tmp154041
                                                   (let ((__tmp154042
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154042)))
                                                  (__tmp154025
                                                   (let ((__tmp154039
                                                          (let ((__tmp154040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp154040)))
                 (__tmp154026
                  (let ((__tmp154037
                         (let ((__tmp154038
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154038)))
                        (__tmp154027
                         (let ((__tmp154034
                                (let ((__tmp154035
                                       (let ((__tmp154036
                                              (##structure-ref
                                               _self153063_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154036 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154035)))
                               (__tmp154028
                                (let ((__tmp154032
                                       (let ((__tmp154033
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154033)))
                                      (__tmp154029
                                       (let ((__tmp154030
                                              (let ((__tmp154031
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor153084_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp154031))))
                                         (declare (not safe))
                                         (cons __tmp154030 '()))))
                                  (declare (not safe))
                                  (cons __tmp154032 __tmp154029))))
                           (declare (not safe))
                           (cons __tmp154034 __tmp154028))))
                    (declare (not safe))
                    (cons __tmp154037 __tmp154027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154039
                                                           __tmp154026))))
                                              (declare (not safe))
                                              (cons __tmp154041 __tmp154025))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154024))))
                                (declare (not safe))
                                (cons __tmp154023 '()))))
                         (declare (not safe))
                         (cons __tmp154043 __tmp154022))))
                  (declare (not safe))
                  (cons __tmp154050 __tmp154021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp154020))))
                                            (declare (not safe))
                                            (cons __tmp154019 '()))))
                                     (declare (not safe))
                                     (cons __tmp154052 __tmp154018))))
                             (declare (not safe))
                             (cons '%#let-values __tmp154017))))
                      (__tmp154012
                       (let ((__tmp154013
                              (let ((__tmp154014
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj153086_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154014))))
                         (declare (not safe))
                         (cons __tmp154013 '()))))
                  (declare (not safe))
                  (cons __tmp154015 __tmp154012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp154011))))
                                            (declare (not safe))
                                            (cons __tmp154010 '()))))
                                     (declare (not safe))
                                     (cons __tmp154076 __tmp154009))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154008))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154007 _stx153065_))))
                 _$e153081_)
                (let ((_$e153091_
                       (##structure-ref _klass153068_ '9 gxc#!class::t '#f)))
                  (if _$e153091_
                      ((lambda (_metaclass153094_)
                         (let* ((_$obj153096_
                                 (let ((__tmp153968 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153968)))
                                (_metakons153098_
                                 (let ((__tmp153969
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx153065_
                                           _metaclass153094_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp153969
                                    'instance-init!))))
                           (let ((__tmp153970
                                  (let ((__tmp153971
                                         (let ((__tmp154002
                                                (let ((__tmp154003
                                                       (let ((__tmp154005
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153096_ '())))
                     (__tmp154004
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object153078_ '()))))
                 (declare (not safe))
                 (cons __tmp154005 __tmp154004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154003 '())))
                                               (__tmp153972
                                                (let ((__tmp153973
                                                       (let ((__tmp153974
                                                              (let ((__tmp153978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons153098_
                                 (let ((__tmp153992
                                        (let ((__tmp154000
                                               (let ((__tmp154001
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons153098_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp154001)))
                                              (__tmp153993
                                               (let ((__tmp153997
                                                      (let ((__tmp153998
                                                             (let ((__tmp153999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153063_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153999 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153998)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153994
                                                      (let ((__tmp153995
                                                             (let ((__tmp153996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj153096_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153996))))
                (declare (not safe))
                (cons __tmp153995 _args153076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153997
                                                       __tmp153994))))
                                          (declare (not safe))
                                          (cons __tmp154000 __tmp153993))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153992))
                                 (let ((__tmp153979
                                        (let ((__tmp153990
                                               (let ((__tmp153991
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153991)))
                                              (__tmp153980
                                               (let ((__tmp153987
                                                      (let ((__tmp153988
                                                             (let ((__tmp153989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self153063_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153989 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153988)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153981
                                                      (let ((__tmp153985
                                                             (let ((__tmp153986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153986)))
                    (__tmp153982
                     (let ((__tmp153983
                            (let ((__tmp153984
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153096_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153984))))
                       (declare (not safe))
                       (cons __tmp153983 _args153076_))))
                (declare (not safe))
                (cons __tmp153985 __tmp153982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153987
                                                       __tmp153981))))
                                          (declare (not safe))
                                          (cons __tmp153990 __tmp153980))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153979))))
                            (__tmp153975
                             (let ((__tmp153976
                                    (let ((__tmp153977
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj153096_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153977))))
                               (declare (not safe))
                               (cons __tmp153976 '()))))
                        (declare (not safe))
                        (cons __tmp153978 __tmp153975))))
                 (declare (not safe))
                 (cons '%#begin __tmp153974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153973 '()))))
                                           (declare (not safe))
                                           (cons __tmp154002 __tmp153972))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp153971))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp153970 _stx153065_))))
                       _$e153091_)
                      (if (##structure-ref _klass153068_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args153076_) _fields153070_)
                              (let ((__tmp153960
                                     (let ((__tmp153961
                                            (let ((__tmp153966
                                                   (let ((__tmp153967
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153967)))
                                                  (__tmp153962
                                                   (let ((__tmp153963
                                                          (let ((__tmp153964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153965
                                (##structure-ref
                                 _self153063_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp153965 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153963
                                                           _args153076_))))
                                              (declare (not safe))
                                              (cons __tmp153966 __tmp153962))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153961))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp153960
                                 _stx153065_))
                              (let ((__tmp153959
                                     (##structure-ref
                                      _self153063_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp153958
                                     (length (##structure-ref
                                              _klass153068_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx153065_
                                 __tmp153959
                                 __tmp153958)))
                          (let ((_$obj153101_
                                 (let ((__tmp153906 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp153906))))
                            (let _lp153103_ ((_rest153105_ _args153076_)
                                             (_initializers153106_ '()))
                              (let* ((___stx153632153633_ _rest153105_)
                                     (_g153110153131_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx153632153633_)))))
                                (let ((___kont153634153635_
                                       (lambda (_L153185_ _L153186_ _L153187_)
                                         (let* ((_slot153218_
                                                 (let ((__tmp153907
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L153187_))))
                                                   (declare (not safe))
                                                   (keyword->symbol
                                                    __tmp153907)))
                                                (_off153220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass153068_
                                                    _slot153218_))))
                                           (if _off153220_
                                               (let ((__tmp153909
                                                      (let ((__tmp153910
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off153220_ _L153186_))))
                (declare (not safe))
                (cons __tmp153910 _initializers153106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp153103_
                                                  _L153185_
                                                  __tmp153909))
                                               (let ((__tmp153908
                                                      (##structure-ref
                                                       _self153063_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx153065_
                                                  __tmp153908
                                                  _slot153218_))))))
                                      (___kont153636153637_
                                       (lambda ()
                                         (let ((__tmp153911
                                                (let ((__tmp153912
                                                       (let ((__tmp153935
                                                              (let ((__tmp153936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153938
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153101_ '())))
                                   (__tmp153937
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153078_ '()))))
                               (declare (not safe))
                               (cons __tmp153938 __tmp153937))))
                        (declare (not safe))
                        (cons __tmp153936 '())))
                     (__tmp153913
                      (let ((__tmp153914
                             (let ((__tmp153915
                                    (let ((__tmp153932
                                           (let ((__tmp153933
                                                  (let ((__tmp153934
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153934))))
                                             (declare (not safe))
                                             (cons __tmp153933 '())))
                                          (__tmp153916
                                           (let ((__tmp153917
                                                  (lambda (_i153145_ _r153146_)
                                                    (let ((__tmp153918
                                                           (let ((__tmp153919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153929
                                 (let ((__tmp153930
                                        (let ((__tmp153931
                                               (##structure-ref
                                                _self153063_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153931 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153930)))
                                (__tmp153920
                                 (let ((__tmp153926
                                        (let ((__tmp153927
                                               (let ((__tmp153928
                                                      (car _i153145_)))
                                                 (declare (not safe))
                                                 (cons __tmp153928 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153927)))
                                       (__tmp153921
                                        (let ((__tmp153924
                                               (let ((__tmp153925
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj153101_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153925)))
                                              (__tmp153922
                                               (let ((__tmp153923
                                                      (cdr _i153145_)))
                                                 (declare (not safe))
                                                 (cons __tmp153923 '()))))
                                          (declare (not safe))
                                          (cons __tmp153924 __tmp153922))))
                                   (declare (not safe))
                                   (cons __tmp153926 __tmp153921))))
                            (declare (not safe))
                            (cons __tmp153929 __tmp153920))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp153919))))
              (declare (not safe))
              (cons __tmp153918 _r153146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp153917
                                                     '()
                                                     _initializers153106_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp153932 __tmp153916))))
                               (declare (not safe))
                               (cons '%#begin __tmp153915))))
                        (declare (not safe))
                        (cons __tmp153914 '()))))
                 (declare (not safe))
                 (cons __tmp153935 __tmp153913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153912))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153911
                                            _stx153065_))))
                                      (___kont153638153639_
                                       (lambda ()
                                         (let ((__tmp153939
                                                (let ((__tmp153940
                                                       (let ((__tmp153954
                                                              (let ((__tmp153955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153957
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj153101_ '())))
                                   (__tmp153956
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object153078_ '()))))
                               (declare (not safe))
                               (cons __tmp153957 __tmp153956))))
                        (declare (not safe))
                        (cons __tmp153955 '())))
                     (__tmp153941
                      (let ((__tmp153942
                             (let ((__tmp153943
                                    (let ((__tmp153947
                                           (let ((__tmp153948
                                                  (let ((__tmp153952
                                                         (let ((__tmp153953
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp153953)))
                (__tmp153949
                 (let ((__tmp153950
                        (let ((__tmp153951
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj153101_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153951))))
                   (declare (not safe))
                   (cons __tmp153950 _args153076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153952
                                                          __tmp153949))))
                                             (declare (not safe))
                                             (cons '%#call __tmp153948)))
                                          (__tmp153944
                                           (let ((__tmp153945
                                                  (let ((__tmp153946
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj153101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153946))))
                                             (declare (not safe))
                                             (cons __tmp153945 '()))))
                                      (declare (not safe))
                                      (cons __tmp153947 __tmp153944))))
                               (declare (not safe))
                               (cons '%#begin __tmp153943))))
                        (declare (not safe))
                        (cons __tmp153942 '()))))
                 (declare (not safe))
                 (cons __tmp153954 __tmp153941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp153940))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp153939
                                            _stx153065_)))))
                                  (let* ((_g153108153148_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx153632153633_))
                                                (___kont153636153637_)
                                                (___kont153638153639_))))
                                         (___match153669153670_
                                          (lambda (_e153117153153_
                                                   _hd153116153156_
                                                   _tl153115153158_
                                                   _e153120153161_
                                                   _hd153119153164_
                                                   _tl153118153166_
                                                   _e153123153169_
                                                   _hd153122153172_
                                                   _tl153121153174_
                                                   _e153126153177_
                                                   _hd153125153180_
                                                   _tl153124153182_)
                                            (let ((_L153185_ _tl153124153182_)
                                                  (_L153186_ _hd153125153180_)
                                                  (_L153187_ _hd153122153172_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L153187_))
                                                  (___kont153634153635_
                                                   _L153185_
                                                   _L153186_
                                                   _L153187_)
                                                  (___kont153638153639_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx153632153633_))
                                        (let ((_e153117153153_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx153632153633_))))
                                          (let ((_tl153115153158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153117153153_)))
                                                (_hd153116153156_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153117153153_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd153116153156_))
                                                (let ((_e153120153161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd153116153156_))))
                                                  (let ((_tl153118153166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e153120153161_)))
                                                        (_hd153119153164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e153120153161_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd153119153164_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd153119153164_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl153118153166_))
                        (let ((_e153123153169_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl153118153166_))))
                          (let ((_tl153121153174_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e153123153169_)))
                                (_hd153122153172_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e153123153169_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl153121153174_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl153115153158_))
                                    (let ((_e153126153177_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl153115153158_))))
                                      (let ((_tl153124153182_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e153126153177_)))
                                            (_hd153125153180_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e153126153177_))))
                                        (___match153669153670_
                                         _e153117153153_
                                         _hd153116153156_
                                         _tl153115153158_
                                         _e153120153161_
                                         _hd153119153164_
                                         _tl153118153166_
                                         _e153123153169_
                                         _hd153122153172_
                                         _tl153121153174_
                                         _e153126153177_
                                         _hd153125153180_
                                         _tl153124153182_)))
                                    (___kont153638153639_))
                                (___kont153638153639_))))
                        (___kont153638153639_))
                    (___kont153638153639_))
                (___kont153638153639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont153638153639_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g153108153148_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass153555 __method-table153556)
        (let ((__id153557
               (let ((__slot153558
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153555 'id))))
                 (if __slot153558
                     __slot153558
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self153063_ _ctx153064_ _stx153065_ _args153066_)
            (let* ((_klass153068_
                    (let ((__tmp154080
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self153063_
                              __id153557
                              __klass153555
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx153065_ __tmp154080)))
                   (_fields153070_
                    (length (##structure-ref
                             _klass153068_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args153076_
                    (map (lambda (_g153071153073_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _ctx153064_ _g153071153073_)))
                         _args153066_))
                   (_inline-make-object153078_
                    (let ((__tmp154081
                           (let ((__tmp154087
                                  (let ((__tmp154088
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154088)))
                                 (__tmp154082
                                  (let ((__tmp154084
                                         (let ((__tmp154085
                                                (let ((__tmp154086
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self153063_
                                                          __id153557
                                                          __klass153555
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154086 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154085)))
                                        (__tmp154083
                                         (make-list
                                          _fields153070_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp154084 __tmp154083))))
                             (declare (not safe))
                             (cons __tmp154087 __tmp154082))))
                      (declare (not safe))
                      (cons '%#call __tmp154081))))
              (let ((_$e153081_
                     (##structure-ref _klass153068_ '6 gxc#!class::t '#f)))
                (if _$e153081_
                    ((lambda (_ctor153084_)
                       (let ((_$obj153086_
                              (let ((__tmp154189 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp154189)))
                             (_ctor-impl153087_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass153068_
                                 _ctor153084_))))
                         (let ((__tmp154190
                                (let ((__tmp154191
                                       (let ((__tmp154259
                                              (let ((__tmp154260
                                                     (let ((__tmp154262
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj153086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154261
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object153078_ '()))))
               (declare (not safe))
               (cons __tmp154262 __tmp154261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154260 '())))
                                             (__tmp154192
                                              (let ((__tmp154193
                                                     (let ((__tmp154194
                                                            (let ((__tmp154198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl153087_
                               (let ((__tmp154253
                                      (let ((__tmp154257
                                             (let ((__tmp154258
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl153087_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154258)))
                                            (__tmp154254
                                             (let ((__tmp154255
                                                    (let ((__tmp154256
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj153086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154255
                                                     _args153076_))))
                                        (declare (not safe))
                                        (cons __tmp154257 __tmp154254))))
                                 (declare (not safe))
                                 (cons '%#call __tmp154253))
                               (let* ((_$ctor153089_
                                       (let ((__tmp154199
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp154199)))
                                      (__tmp154200
                                       (let ((__tmp154235
                                              (let ((__tmp154236
                                                     (let ((__tmp154252
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor153089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp154237
                    (let ((__tmp154238
                           (let ((__tmp154239
                                  (let ((__tmp154250
                                         (let ((__tmp154251
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154251)))
                                        (__tmp154240
                                         (let ((__tmp154247
                                                (let ((__tmp154248
                                                       (let ((__tmp154249
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self153063_
                         __id153557
                         __klass153555
                         '#f))))
                 (declare (not safe))
                 (cons __tmp154249 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154248)))
                                               (__tmp154241
                                                (let ((__tmp154245
                                                       (let ((__tmp154246
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153086_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154246)))
              (__tmp154242
               (let ((__tmp154243
                      (let ((__tmp154244
                             (let ()
                               (declare (not safe))
                               (cons _ctor153084_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154244))))
                 (declare (not safe))
                 (cons __tmp154243 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154245
                                                        __tmp154242))))
                                           (declare (not safe))
                                           (cons __tmp154247 __tmp154241))))
                                    (declare (not safe))
                                    (cons __tmp154250 __tmp154240))))
                             (declare (not safe))
                             (cons '%#call __tmp154239))))
                      (declare (not safe))
                      (cons __tmp154238 '()))))
               (declare (not safe))
               (cons __tmp154252 __tmp154237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154236 '())))
                                             (__tmp154201
                                              (let ((__tmp154202
                                                     (let ((__tmp154203
                                                            (let ((__tmp154233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154234
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor153089_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154234)))
                          (__tmp154204
                           (let ((__tmp154226
                                  (let ((__tmp154227
                                         (let ((__tmp154231
                                                (let ((__tmp154232
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor153089_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154232)))
                                               (__tmp154228
                                                (let ((__tmp154229
                                                       (let ((__tmp154230
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj153086_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154229
                                                        _args153076_))))
                                           (declare (not safe))
                                           (cons __tmp154231 __tmp154228))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154227)))
                                 (__tmp154205
                                  (let ((__tmp154206
                                         (let ((__tmp154207
                                                (let ((__tmp154224
                                                       (let ((__tmp154225
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154225)))
              (__tmp154208
               (let ((__tmp154222
                      (let ((__tmp154223
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp154223)))
                     (__tmp154209
                      (let ((__tmp154220
                             (let ((__tmp154221
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154221)))
                            (__tmp154210
                             (let ((__tmp154217
                                    (let ((__tmp154218
                                           (let ((__tmp154219
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self153063_
                                                     __id153557
                                                     __klass153555
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154219 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154218)))
                                   (__tmp154211
                                    (let ((__tmp154215
                                           (let ((__tmp154216
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154216)))
                                          (__tmp154212
                                           (let ((__tmp154213
                                                  (let ((__tmp154214
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor153084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp154214))))
                                             (declare (not safe))
                                             (cons __tmp154213 '()))))
                                      (declare (not safe))
                                      (cons __tmp154215 __tmp154212))))
                               (declare (not safe))
                               (cons __tmp154217 __tmp154211))))
                        (declare (not safe))
                        (cons __tmp154220 __tmp154210))))
                 (declare (not safe))
                 (cons __tmp154222 __tmp154209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154224
                                                        __tmp154208))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154207))))
                                    (declare (not safe))
                                    (cons __tmp154206 '()))))
                             (declare (not safe))
                             (cons __tmp154226 __tmp154205))))
                      (declare (not safe))
                      (cons __tmp154233 __tmp154204))))
               (declare (not safe))
               (cons '%#if __tmp154203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154202 '()))))
                                         (declare (not safe))
                                         (cons __tmp154235 __tmp154201))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp154200))))
                          (__tmp154195
                           (let ((__tmp154196
                                  (let ((__tmp154197
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj153086_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154197))))
                             (declare (not safe))
                             (cons __tmp154196 '()))))
                      (declare (not safe))
                      (cons __tmp154198 __tmp154195))))
               (declare (not safe))
               (cons '%#begin __tmp154194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154193 '()))))
                                         (declare (not safe))
                                         (cons __tmp154259 __tmp154192))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154191))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154190 _stx153065_))))
                     _$e153081_)
                    (let ((_$e153091_
                           (##structure-ref
                            _klass153068_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e153091_
                          ((lambda (_metaclass153094_)
                             (let* ((_$obj153096_
                                     (let ((__tmp154151 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154151)))
                                    (_metakons153098_
                                     (let ((__tmp154152
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx153065_
                                               _metaclass153094_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp154152
                                        'instance-init!))))
                               (let ((__tmp154153
                                      (let ((__tmp154154
                                             (let ((__tmp154185
                                                    (let ((__tmp154186
                                                           (let ((__tmp154188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj153096_ '())))
                         (__tmp154187
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object153078_ '()))))
                     (declare (not safe))
                     (cons __tmp154188 __tmp154187))))
              (declare (not safe))
              (cons __tmp154186 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154155
                                                    (let ((__tmp154156
                                                           (let ((__tmp154157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154161
                                 (if _metakons153098_
                                     (let ((__tmp154175
                                            (let ((__tmp154183
                                                   (let ((__tmp154184
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons153098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154184)))
                                                  (__tmp154176
                                                   (let ((__tmp154180
                                                          (let ((__tmp154181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154182
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153063_
                                   __id153557
                                   __klass153555
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154182 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154181)))
                 (__tmp154177
                  (let ((__tmp154178
                         (let ((__tmp154179
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj153096_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp154179))))
                    (declare (not safe))
                    (cons __tmp154178 _args153076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154180
                                                           __tmp154177))))
                                              (declare (not safe))
                                              (cons __tmp154183 __tmp154176))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154175))
                                     (let ((__tmp154162
                                            (let ((__tmp154173
                                                   (let ((__tmp154174
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154174)))
                                                  (__tmp154163
                                                   (let ((__tmp154170
                                                          (let ((__tmp154171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154172
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self153063_
                                   __id153557
                                   __klass153555
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp154172 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154171)))
                 (__tmp154164
                  (let ((__tmp154168
                         (let ((__tmp154169
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154169)))
                        (__tmp154165
                         (let ((__tmp154166
                                (let ((__tmp154167
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj153096_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154167))))
                           (declare (not safe))
                           (cons __tmp154166 _args153076_))))
                    (declare (not safe))
                    (cons __tmp154168 __tmp154165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154170
                                                           __tmp154164))))
                                              (declare (not safe))
                                              (cons __tmp154173 __tmp154163))))
                                       (declare (not safe))
                                       (cons '%#call __tmp154162))))
                                (__tmp154158
                                 (let ((__tmp154159
                                        (let ((__tmp154160
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj153096_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp154160))))
                                   (declare (not safe))
                                   (cons __tmp154159 '()))))
                            (declare (not safe))
                            (cons __tmp154161 __tmp154158))))
                     (declare (not safe))
                     (cons '%#begin __tmp154157))))
              (declare (not safe))
              (cons __tmp154156 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154185
                                                     __tmp154155))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp154154))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154153
                                  _stx153065_))))
                           _$e153091_)
                          (if (##structure-ref
                               _klass153068_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args153076_) _fields153070_)
                                  (let ((__tmp154143
                                         (let ((__tmp154144
                                                (let ((__tmp154149
                                                       (let ((__tmp154150
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154150)))
              (__tmp154145
               (let ((__tmp154146
                      (let ((__tmp154147
                             (let ((__tmp154148
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self153063_
                                       __id153557
                                       __klass153555
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp154148 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154147))))
                 (declare (not safe))
                 (cons __tmp154146 _args153076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154149
                                                        __tmp154145))))
                                           (declare (not safe))
                                           (cons '%#call __tmp154144))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp154143
                                     _stx153065_))
                                  (let ((__tmp154142
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self153063_
                                            __id153557
                                            __klass153555
                                            '#f)))
                                        (__tmp154141
                                         (length (##structure-ref
                                                  _klass153068_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx153065_
                                     __tmp154142
                                     __tmp154141)))
                              (let ((_$obj153101_
                                     (let ((__tmp154089 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp154089))))
                                (let _lp153103_ ((_rest153105_ _args153076_)
                                                 (_initializers153106_ '()))
                                  (let* ((___stx153674153675_ _rest153105_)
                                         (_g153110153131_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx153674153675_)))))
                                    (let ((___kont153676153677_
                                           (lambda (_L153185_
                                                    _L153186_
                                                    _L153187_)
                                             (let* ((_slot153218_
                                                     (let ((__tmp154090
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L153187_))))
                                                       (declare (not safe))
                                                       (keyword->symbol
                                                        __tmp154090)))
                                                    (_off153220_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass153068_
                                                        _slot153218_))))
                                               (if _off153220_
                                                   (let ((__tmp154092
                                                          (let ((__tmp154093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off153220_ _L153186_))))
                    (declare (not safe))
                    (cons __tmp154093 _initializers153106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp153103_
                                                      _L153185_
                                                      __tmp154092))
                                                   (let ((__tmp154091
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self153063_
                                                             __id153557
                                                             __klass153555
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx153065_
                                                      __tmp154091
                                                      _slot153218_))))))
                                          (___kont153678153679_
                                           (lambda ()
                                             (let ((__tmp154094
                                                    (let ((__tmp154095
                                                           (let ((__tmp154118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154119
                                 (let ((__tmp154121
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153101_ '())))
                                       (__tmp154120
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153078_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154121 __tmp154120))))
                            (declare (not safe))
                            (cons __tmp154119 '())))
                         (__tmp154096
                          (let ((__tmp154097
                                 (let ((__tmp154098
                                        (let ((__tmp154115
                                               (let ((__tmp154116
                                                      (let ((__tmp154117
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153101_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154116 '())))
                                              (__tmp154099
                                               (let ((__tmp154100
                                                      (lambda (_i153145_
                                                               _r153146_)
                                                        (let ((__tmp154101
                                                               (let ((__tmp154102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154112
                                     (let ((__tmp154113
                                            (let ((__tmp154114
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self153063_
                                                      __id153557
                                                      __klass153555
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154114 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154113)))
                                    (__tmp154103
                                     (let ((__tmp154109
                                            (let ((__tmp154110
                                                   (let ((__tmp154111
                                                          (car _i153145_)))
                                                     (declare (not safe))
                                                     (cons __tmp154111 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154110)))
                                           (__tmp154104
                                            (let ((__tmp154107
                                                   (let ((__tmp154108
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj153101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154108)))
                                                  (__tmp154105
                                                   (let ((__tmp154106
                                                          (cdr _i153145_)))
                                                     (declare (not safe))
                                                     (cons __tmp154106 '()))))
                                              (declare (not safe))
                                              (cons __tmp154107 __tmp154105))))
                                       (declare (not safe))
                                       (cons __tmp154109 __tmp154104))))
                                (declare (not safe))
                                (cons __tmp154112 __tmp154103))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp154102))))
                  (declare (not safe))
                  (cons __tmp154101 _r153146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp154100
                                                         '()
                                                         _initializers153106_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp154115
                                                  __tmp154099))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154098))))
                            (declare (not safe))
                            (cons __tmp154097 '()))))
                     (declare (not safe))
                     (cons __tmp154118 __tmp154096))))
              (declare (not safe))
              (cons '%#let-values __tmp154095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154094
                                                _stx153065_))))
                                          (___kont153680153681_
                                           (lambda ()
                                             (let ((__tmp154122
                                                    (let ((__tmp154123
                                                           (let ((__tmp154137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154138
                                 (let ((__tmp154140
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj153101_ '())))
                                       (__tmp154139
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object153078_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp154140 __tmp154139))))
                            (declare (not safe))
                            (cons __tmp154138 '())))
                         (__tmp154124
                          (let ((__tmp154125
                                 (let ((__tmp154126
                                        (let ((__tmp154130
                                               (let ((__tmp154131
                                                      (let ((__tmp154135
                                                             (let ((__tmp154136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp154136)))
                    (__tmp154132
                     (let ((__tmp154133
                            (let ((__tmp154134
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj153101_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154134))))
                       (declare (not safe))
                       (cons __tmp154133 _args153076_))))
                (declare (not safe))
                (cons __tmp154135 __tmp154132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp154131)))
                                              (__tmp154127
                                               (let ((__tmp154128
                                                      (let ((__tmp154129
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj153101_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp154129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154128 '()))))
                                          (declare (not safe))
                                          (cons __tmp154130 __tmp154127))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp154126))))
                            (declare (not safe))
                            (cons __tmp154125 '()))))
                     (declare (not safe))
                     (cons __tmp154137 __tmp154124))))
              (declare (not safe))
              (cons '%#let-values __tmp154123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154122
                                                _stx153065_)))))
                                      (let* ((_g153108153148_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx153674153675_))
                                                    (___kont153678153679_)
                                                    (___kont153680153681_))))
                                             (___match153711153712_
                                              (lambda (_e153117153153_
                                                       _hd153116153156_
                                                       _tl153115153158_
                                                       _e153120153161_
                                                       _hd153119153164_
                                                       _tl153118153166_
                                                       _e153123153169_
                                                       _hd153122153172_
                                                       _tl153121153174_
                                                       _e153126153177_
                                                       _hd153125153180_
                                                       _tl153124153182_)
                                                (let ((_L153185_
                                                       _tl153124153182_)
                                                      (_L153186_
                                                       _hd153125153180_)
                                                      (_L153187_
                                                       _hd153122153172_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L153187_))
                                                      (___kont153676153677_
                                                       _L153185_
                                                       _L153186_
                                                       _L153187_)
                                                      (___kont153680153681_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx153674153675_))
                                            (let ((_e153117153153_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx153674153675_))))
                                              (let ((_tl153115153158_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e153117153153_)))
                                                    (_hd153116153156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e153117153153_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd153116153156_))
                                                    (let ((_e153120153161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd153116153156_))))
                                                      (let ((_tl153118153166_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e153120153161_)))
                    (_hd153119153164_
                     (let () (declare (not safe)) (##car _e153120153161_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd153119153164_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd153119153164_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl153118153166_))
                            (let ((_e153123153169_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl153118153166_))))
                              (let ((_tl153121153174_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e153123153169_)))
                                    (_hd153122153172_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e153123153169_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl153121153174_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl153115153158_))
                                        (let ((_e153126153177_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl153115153158_))))
                                          (let ((_tl153124153182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e153126153177_)))
                                                (_hd153125153180_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e153126153177_))))
                                            (___match153711153712_
                                             _e153117153153_
                                             _hd153116153156_
                                             _tl153115153158_
                                             _e153120153161_
                                             _hd153119153164_
                                             _tl153118153166_
                                             _e153123153169_
                                             _hd153122153172_
                                             _tl153121153174_
                                             _e153126153177_
                                             _hd153125153180_
                                             _tl153124153182_)))
                                        (___kont153680153681_))
                                    (___kont153680153681_))))
                            (___kont153680153681_))
                        (___kont153680153681_))
                    (___kont153680153681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont153680153681_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g153108153148_))))))))))))))))))
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
      (lambda (_self152885_ _ctx152886_ _stx152887_ _args152888_)
        (let* ((_g152890152900_
                (lambda (_g152891152897_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152891152897_))))
               (_g152889152938_
                (lambda (_g152891152903_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152891152903_))
                      (let ((_e152895152905_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152891152903_))))
                        (let ((_hd152894152908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152895152905_)))
                              (_tl152893152910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152895152905_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152893152910_))
                              ((lambda (_L152913_)
                                 (let* ((_klass152924_
                                         (let ((__tmp154263
                                                (##structure-ref
                                                 _self152885_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152887_
                                            __tmp154263)))
                                        (_field152926_
                                         (let ((__tmp154264
                                                (##structure-ref
                                                 _self152885_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass152924_
                                            __tmp154264)))
                                        (_object152928_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _ctx152886_
                                            _L152913_))))
                                   (if (##structure-ref
                                        _klass152924_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp154341
                                              (let ((__tmp154350
                                                     (if (##structure-ref
                                                          _self152885_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp154342
                                                     (let ((__tmp154347
                                                            (let ((__tmp154348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154349
                                  (##structure-ref
                                   _self152885_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp154349 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154348)))
                   (__tmp154343
                    (let ((__tmp154345
                           (let ((__tmp154346
                                  (let ()
                                    (declare (not safe))
                                    (cons _field152926_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp154346)))
                          (__tmp154344
                           (let ()
                             (declare (not safe))
                             (cons _object152928_ '()))))
                      (declare (not safe))
                      (cons __tmp154345 __tmp154344))))
               (declare (not safe))
               (cons __tmp154347 __tmp154343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp154350
                                                      __tmp154342))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154341
                                          _stx152887_))
                                       (if (##structure-ref
                                            _klass152924_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154331
                                                  (let ((__tmp154340
                                                         (if (##structure-ref
                                                              _self152885_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp154332
                                                         (let ((__tmp154337
                                                                (let ((__tmp154338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154339
                                      (##structure-ref
                                       _self152885_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp154339 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154338)))
                       (__tmp154333
                        (let ((__tmp154335
                               (let ((__tmp154336
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152926_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154336)))
                              (__tmp154334
                               (let ()
                                 (declare (not safe))
                                 (cons _object152928_ '()))))
                          (declare (not safe))
                          (cons __tmp154335 __tmp154334))))
                   (declare (not safe))
                   (cons __tmp154337 __tmp154333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154340
                                                          __tmp154332))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154331
                                              _stx152887_))
                                           (let ((_$e152931_
                                                  (let ((__tmp154265
                                                         (##structure-ref
                                                          _self152885_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass152924_
                                                     __tmp154265))))
                                             (if _$e152931_
                                                 ((lambda (_klass152934_)
                                                    (let ((__tmp154321
                                                           (let ((__tmp154330
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self152885_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp154322
                          (let ((__tmp154327
                                 (let ((__tmp154328
                                        (let ((__tmp154329
                                               (##structure-ref
                                                _self152885_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154329 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp154328)))
                                (__tmp154323
                                 (let ((__tmp154325
                                        (let ((__tmp154326
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field152926_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp154326)))
                                       (__tmp154324
                                        (let ()
                                          (declare (not safe))
                                          (cons _object152928_ '()))))
                                   (declare (not safe))
                                   (cons __tmp154325 __tmp154324))))
                            (declare (not safe))
                            (cons __tmp154327 __tmp154323))))
                     (declare (not safe))
                     (cons __tmp154330 __tmp154322))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp154321 _stx152887_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e152931_)
                                                 (if (##structure-ref
                                                      _self152885_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp154275
                                                            (let* ((_$obj152936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154276 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp154276)))
                           (__tmp154277
                            (let ((__tmp154317
                                   (let ((__tmp154318
                                          (let ((__tmp154320
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj152936_ '())))
                                                (__tmp154319
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object152928_ '()))))
                                            (declare (not safe))
                                            (cons __tmp154320 __tmp154319))))
                                     (declare (not safe))
                                     (cons __tmp154318 '())))
                                  (__tmp154278
                                   (let ((__tmp154279
                                          (let ((__tmp154280
                                                 (let ((__tmp154309
                                                        (let ((__tmp154310
                                                               (let ((__tmp154314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154315
                                     (let ((__tmp154316
                                            (##structure-ref
                                             _klass152924_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp154316 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp154315)))
                             (__tmp154311
                              (let ((__tmp154312
                                     (let ((__tmp154313
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj152936_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154313))))
                                (declare (not safe))
                                (cons __tmp154312 '()))))
                         (declare (not safe))
                         (cons __tmp154314 __tmp154311))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp154310)))
               (__tmp154281
                (let ((__tmp154298
                       (let ((__tmp154299
                              (let ((__tmp154306
                                     (let ((__tmp154307
                                            (let ((__tmp154308
                                                   (##structure-ref
                                                    _self152885_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp154308 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154307)))
                                    (__tmp154300
                                     (let ((__tmp154304
                                            (let ((__tmp154305
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152926_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154305)))
                                           (__tmp154301
                                            (let ((__tmp154302
                                                   (let ((__tmp154303
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154303))))
                                              (declare (not safe))
                                              (cons __tmp154302 '()))))
                                       (declare (not safe))
                                       (cons __tmp154304 __tmp154301))))
                                (declare (not safe))
                                (cons __tmp154306 __tmp154300))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp154299)))
                      (__tmp154282
                       (let ((__tmp154283
                              (let ((__tmp154284
                                     (let ((__tmp154296
                                            (let ((__tmp154297
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp154297)))
                                           (__tmp154285
                                            (let ((__tmp154293
                                                   (let ((__tmp154294
                                                          (let ((__tmp154295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self152885_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp154295 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp154294)))
                                                  (__tmp154286
                                                   (let ((__tmp154291
                                                          (let ((__tmp154292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj152936_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp154292)))
                 (__tmp154287
                  (let ((__tmp154288
                         (let ((__tmp154289
                                (let ((__tmp154290
                                       (##structure-ref
                                        _self152885_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp154290 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp154289))))
                    (declare (not safe))
                    (cons __tmp154288 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154291
                                                           __tmp154287))))
                                              (declare (not safe))
                                              (cons __tmp154293 __tmp154286))))
                                       (declare (not safe))
                                       (cons __tmp154296 __tmp154285))))
                                (declare (not safe))
                                (cons '%#call __tmp154284))))
                         (declare (not safe))
                         (cons __tmp154283 '()))))
                  (declare (not safe))
                  (cons __tmp154298 __tmp154282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154309
                                                         __tmp154281))))
                                            (declare (not safe))
                                            (cons '%#if __tmp154280))))
                                     (declare (not safe))
                                     (cons __tmp154279 '()))))
                              (declare (not safe))
                              (cons __tmp154317 __tmp154278))))
                      (declare (not safe))
                      (cons '%#let-values __tmp154277))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154275 _stx152887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp154266
                                                            (let ((__tmp154267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154273
                                  (let ((__tmp154274
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp154274)))
                                 (__tmp154268
                                  (let ((__tmp154269
                                         (let ((__tmp154270
                                                (let ((__tmp154271
                                                       (let ((__tmp154272
                                                              (##structure-ref
                                                               _self152885_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp154272
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp154271))))
                                           (declare (not safe))
                                           (cons __tmp154270 '()))))
                                    (declare (not safe))
                                    (cons _object152928_ __tmp154269))))
                             (declare (not safe))
                             (cons __tmp154273 __tmp154268))))
                      (declare (not safe))
                      (cons '%#call __tmp154267))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp154266 _stx152887_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd152894152908_)
                              (let ()
                                (declare (not safe))
                                (_g152890152900_ _g152891152903_)))))
                      (let ()
                        (declare (not safe))
                        (_g152890152900_ _g152891152903_))))))
          (declare (not safe))
          (_g152889152938_ _args152888_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass153559 __method-table153560)
        (let ((__id153561
               (let ((__slot153564
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153559 'id))))
                 (if __slot153564
                     __slot153564
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot153562
               (let ((__slot153565
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153559 'slot))))
                 (if __slot153565
                     __slot153565
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?153563
               (let ((__slot153566
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153559 'checked?))))
                 (if __slot153566
                     __slot153566
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self152885_ _ctx152886_ _stx152887_ _args152888_)
            (let* ((_g152890152900_
                    (lambda (_g152891152897_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152891152897_))))
                   (_g152889152938_
                    (lambda (_g152891152903_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152891152903_))
                          (let ((_e152895152905_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152891152903_))))
                            (let ((_hd152894152908_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152895152905_)))
                                  (_tl152893152910_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152895152905_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152893152910_))
                                  ((lambda (_L152913_)
                                     (let* ((_klass152924_
                                             (let ((__tmp154351
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152885_
                                                       __id153561
                                                       __klass153559
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152887_
                                                __tmp154351)))
                                            (_field152926_
                                             (let ((__tmp154352
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152885_
                                                       __slot153562
                                                       __klass153559
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass152924_
                                                __tmp154352)))
                                            (_object152928_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _ctx152886_
                                                _L152913_))))
                                       (if (##structure-ref
                                            _klass152924_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp154429
                                                  (let ((__tmp154438
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152885_
                        __checked?153563
                        __klass153559
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp154430
                 (let ((__tmp154435
                        (let ((__tmp154436
                               (let ((__tmp154437
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self152885_
                                         __id153561
                                         __klass153559
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp154437 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp154436)))
                       (__tmp154431
                        (let ((__tmp154433
                               (let ((__tmp154434
                                      (let ()
                                        (declare (not safe))
                                        (cons _field152926_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp154434)))
                              (__tmp154432
                               (let ()
                                 (declare (not safe))
                                 (cons _object152928_ '()))))
                          (declare (not safe))
                          (cons __tmp154433 __tmp154432))))
                   (declare (not safe))
                   (cons __tmp154435 __tmp154431))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154438
                                                          __tmp154430))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp154429
                                              _stx152887_))
                                           (if (##structure-ref
                                                _klass152924_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154419
                                                      (let ((__tmp154428
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152885_
                            __checked?153563
                            __klass153559
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp154420
                     (let ((__tmp154425
                            (let ((__tmp154426
                                   (let ((__tmp154427
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152885_
                                             __id153561
                                             __klass153559
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp154427 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154426)))
                           (__tmp154421
                            (let ((__tmp154423
                                   (let ((__tmp154424
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152926_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154424)))
                                  (__tmp154422
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152928_ '()))))
                              (declare (not safe))
                              (cons __tmp154423 __tmp154422))))
                       (declare (not safe))
                       (cons __tmp154425 __tmp154421))))
                (declare (not safe))
                (cons __tmp154428 __tmp154420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154419
                                                  _stx152887_))
                                               (let ((_$e152931_
                                                      (let ((__tmp154353
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self152885_
                        __slot153562
                        __klass153559
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass152924_ __tmp154353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e152931_
                                                     ((lambda (_klass152934_)
                                                        (let ((__tmp154409
                                                               (let ((__tmp154418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152885_
                                     __checked?153563
                                     __klass153559
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp154410
                              (let ((__tmp154415
                                     (let ((__tmp154416
                                            (let ((__tmp154417
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152885_
                                                      __id153561
                                                      __klass153559
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154417 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp154416)))
                                    (__tmp154411
                                     (let ((__tmp154413
                                            (let ((__tmp154414
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field152926_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp154414)))
                                           (__tmp154412
                                            (let ()
                                              (declare (not safe))
                                              (cons _object152928_ '()))))
                                       (declare (not safe))
                                       (cons __tmp154413 __tmp154412))))
                                (declare (not safe))
                                (cons __tmp154415 __tmp154411))))
                         (declare (not safe))
                         (cons __tmp154418 __tmp154410))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp154409 _stx152887_)))
              _$e152931_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self152885_
                                                            __checked?153563
                                                            __klass153559
                                                            '#f))
                                                         (let ((__tmp154363
                                                                (let* ((_$obj152936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp154364 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp154364)))
                               (__tmp154365
                                (let ((__tmp154405
                                       (let ((__tmp154406
                                              (let ((__tmp154408
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj152936_
                                                             '())))
                                                    (__tmp154407
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object152928_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp154408
                                                      __tmp154407))))
                                         (declare (not safe))
                                         (cons __tmp154406 '())))
                                      (__tmp154366
                                       (let ((__tmp154367
                                              (let ((__tmp154368
                                                     (let ((__tmp154397
                                                            (let ((__tmp154398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154402
                                  (let ((__tmp154403
                                         (let ((__tmp154404
                                                (##structure-ref
                                                 _klass152924_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp154404 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp154403)))
                                 (__tmp154399
                                  (let ((__tmp154400
                                         (let ((__tmp154401
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj152936_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154401))))
                                    (declare (not safe))
                                    (cons __tmp154400 '()))))
                             (declare (not safe))
                             (cons __tmp154402 __tmp154399))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp154398)))
                   (__tmp154369
                    (let ((__tmp154386
                           (let ((__tmp154387
                                  (let ((__tmp154394
                                         (let ((__tmp154395
                                                (let ((__tmp154396
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152885_
                                                          __id153561
                                                          __klass153559
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp154396 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154395)))
                                        (__tmp154388
                                         (let ((__tmp154392
                                                (let ((__tmp154393
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152926_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154393)))
                                               (__tmp154389
                                                (let ((__tmp154390
                                                       (let ((__tmp154391
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152936_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154390 '()))))
                                           (declare (not safe))
                                           (cons __tmp154392 __tmp154389))))
                                    (declare (not safe))
                                    (cons __tmp154394 __tmp154388))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp154387)))
                          (__tmp154370
                           (let ((__tmp154371
                                  (let ((__tmp154372
                                         (let ((__tmp154384
                                                (let ((__tmp154385
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp154385)))
                                               (__tmp154373
                                                (let ((__tmp154381
                                                       (let ((__tmp154382
                                                              (let ((__tmp154383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152885_
                                __id153561
                                __klass153559
                                '#f))))
                        (declare (not safe))
                        (cons __tmp154383 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp154382)))
              (__tmp154374
               (let ((__tmp154379
                      (let ((__tmp154380
                             (let ()
                               (declare (not safe))
                               (cons _$obj152936_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154380)))
                     (__tmp154375
                      (let ((__tmp154376
                             (let ((__tmp154377
                                    (let ((__tmp154378
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self152885_
                                              __slot153562
                                              __klass153559
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp154378 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp154377))))
                        (declare (not safe))
                        (cons __tmp154376 '()))))
                 (declare (not safe))
                 (cons __tmp154379 __tmp154375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp154381
                                                        __tmp154374))))
                                           (declare (not safe))
                                           (cons __tmp154384 __tmp154373))))
                                    (declare (not safe))
                                    (cons '%#call __tmp154372))))
                             (declare (not safe))
                             (cons __tmp154371 '()))))
                      (declare (not safe))
                      (cons __tmp154386 __tmp154370))))
               (declare (not safe))
               (cons __tmp154397 __tmp154369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp154368))))
                                         (declare (not safe))
                                         (cons __tmp154367 '()))))
                                  (declare (not safe))
                                  (cons __tmp154405 __tmp154366))))
                          (declare (not safe))
                          (cons '%#let-values __tmp154365))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154363 _stx152887_))
                 (let ((__tmp154354
                        (let ((__tmp154355
                               (let ((__tmp154361
                                      (let ((__tmp154362
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp154362)))
                                     (__tmp154356
                                      (let ((__tmp154357
                                             (let ((__tmp154358
                                                    (let ((__tmp154359
                                                           (let ((__tmp154360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self152885_
                             __slot153562
                             __klass153559
                             '#f))))
                     (declare (not safe))
                     (cons __tmp154360 '()))))
              (declare (not safe))
              (cons '%#quote __tmp154359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154358 '()))))
                                        (declare (not safe))
                                        (cons _object152928_ __tmp154357))))
                                 (declare (not safe))
                                 (cons __tmp154361 __tmp154356))))
                          (declare (not safe))
                          (cons '%#call __tmp154355))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp154354 _stx152887_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd152894152908_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152890152900_ _g152891152903_)))))
                          (let ()
                            (declare (not safe))
                            (_g152890152900_ _g152891152903_))))))
              (declare (not safe))
              (_g152889152938_ _args152888_))))))
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
      (lambda (_self152689_ _ctx152690_ _stx152691_ _args152692_)
        (let* ((_g152694152708_
                (lambda (_g152695152705_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152695152705_))))
               (_g152693152760_
                (lambda (_g152695152711_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152695152711_))
                      (let ((_e152700152713_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152695152711_))))
                        (let ((_hd152699152716_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152700152713_)))
                              (_tl152698152718_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152700152713_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl152698152718_))
                              (let ((_e152703152721_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl152698152718_))))
                                (let ((_hd152702152724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e152703152721_)))
                                      (_tl152701152726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e152703152721_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl152701152726_))
                                      ((lambda (_L152729_ _L152730_)
                                         (let* ((_klass152744_
                                                 (let ((__tmp154439
                                                        (##structure-ref
                                                         _self152689_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx152691_
                                                    __tmp154439)))
                                                (_field152746_
                                                 (let ((__tmp154440
                                                        (##structure-ref
                                                         _self152689_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152744_
                                                    __tmp154440)))
                                                (_object152748_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152690_
                                                    _L152730_)))
                                                (_value152750_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _ctx152690_
                                                    _L152729_))))
                                           (if (##structure-ref
                                                _klass152744_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp154522
                                                      (let ((__tmp154532
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self152689_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp154523
                     (let ((__tmp154529
                            (let ((__tmp154530
                                   (let ((__tmp154531
                                          (##structure-ref
                                           _self152689_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp154531 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp154530)))
                           (__tmp154524
                            (let ((__tmp154527
                                   (let ((__tmp154528
                                          (let ()
                                            (declare (not safe))
                                            (cons _field152746_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp154528)))
                                  (__tmp154525
                                   (let ((__tmp154526
                                          (let ()
                                            (declare (not safe))
                                            (cons _value152750_ '()))))
                                     (declare (not safe))
                                     (cons _object152748_ __tmp154526))))
                              (declare (not safe))
                              (cons __tmp154527 __tmp154525))))
                       (declare (not safe))
                       (cons __tmp154529 __tmp154524))))
                (declare (not safe))
                (cons __tmp154532 __tmp154523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp154522
                                                  _stx152691_))
                                               (if (##structure-ref
                                                    _klass152744_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154511
                                                          (let ((__tmp154521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self152689_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154512
                         (let ((__tmp154518
                                (let ((__tmp154519
                                       (let ((__tmp154520
                                              (##structure-ref
                                               _self152689_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp154520 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154519)))
                               (__tmp154513
                                (let ((__tmp154516
                                       (let ((__tmp154517
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152746_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154517)))
                                      (__tmp154514
                                       (let ((__tmp154515
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152750_ '()))))
                                         (declare (not safe))
                                         (cons _object152748_ __tmp154515))))
                                  (declare (not safe))
                                  (cons __tmp154516 __tmp154514))))
                           (declare (not safe))
                           (cons __tmp154518 __tmp154513))))
                    (declare (not safe))
                    (cons __tmp154521 __tmp154512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154511
                                                      _stx152691_))
                                                   (let ((_$e152753_
                                                          (let ((__tmp154441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self152689_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass152744_ __tmp154441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e152753_
                                                         ((lambda (_klass152756_)
                                                            (let ((__tmp154500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154510
                                  (if (##structure-ref
                                       _self152689_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp154501
                                  (let ((__tmp154507
                                         (let ((__tmp154508
                                                (let ((__tmp154509
                                                       (##structure-ref
                                                        _self152689_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp154509 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp154508)))
                                        (__tmp154502
                                         (let ((__tmp154505
                                                (let ((__tmp154506
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field152746_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp154506)))
                                               (__tmp154503
                                                (let ((__tmp154504
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value152750_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object152748_
                                                        __tmp154504))))
                                           (declare (not safe))
                                           (cons __tmp154505 __tmp154503))))
                                    (declare (not safe))
                                    (cons __tmp154507 __tmp154502))))
                             (declare (not safe))
                             (cons __tmp154510 __tmp154501))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp154500 _stx152691_)))
                  _$e152753_)
                 (if (##structure-ref _self152689_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp154452
                            (let* ((_$obj152758_
                                    (let ((__tmp154453 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp154453)))
                                   (__tmp154454
                                    (let ((__tmp154496
                                           (let ((__tmp154497
                                                  (let ((__tmp154499
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp154498
                 (let () (declare (not safe)) (cons _object152748_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp154499
                                                          __tmp154498))))
                                             (declare (not safe))
                                             (cons __tmp154497 '())))
                                          (__tmp154455
                                           (let ((__tmp154456
                                                  (let ((__tmp154457
                                                         (let ((__tmp154488
                                                                (let ((__tmp154489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp154493
                                      (let ((__tmp154494
                                             (let ((__tmp154495
                                                    (##structure-ref
                                                     _klass152744_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp154495 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp154494)))
                                     (__tmp154490
                                      (let ((__tmp154491
                                             (let ((__tmp154492
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj152758_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154492))))
                                        (declare (not safe))
                                        (cons __tmp154491 '()))))
                                 (declare (not safe))
                                 (cons __tmp154493 __tmp154490))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp154489)))
                       (__tmp154458
                        (let ((__tmp154476
                               (let ((__tmp154477
                                      (let ((__tmp154485
                                             (let ((__tmp154486
                                                    (let ((__tmp154487
                                                           (##structure-ref
                                                            _self152689_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp154487 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154486)))
                                            (__tmp154478
                                             (let ((__tmp154483
                                                    (let ((__tmp154484
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154484)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154479
                                                    (let ((__tmp154481
                                                           (let ((__tmp154482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152758_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154482)))
                  (__tmp154480
                   (let () (declare (not safe)) (cons _value152750_ '()))))
              (declare (not safe))
              (cons __tmp154481 __tmp154480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154483
                                                     __tmp154479))))
                                        (declare (not safe))
                                        (cons __tmp154485 __tmp154478))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp154477)))
                              (__tmp154459
                               (let ((__tmp154460
                                      (let ((__tmp154461
                                             (let ((__tmp154474
                                                    (let ((__tmp154475
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp154475)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154462
                                                    (let ((__tmp154471
                                                           (let ((__tmp154472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp154473
                                 (##structure-ref
                                  _self152689_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp154473 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp154472)))
                  (__tmp154463
                   (let ((__tmp154469
                          (let ((__tmp154470
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj152758_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp154470)))
                         (__tmp154464
                          (let ((__tmp154466
                                 (let ((__tmp154467
                                        (let ((__tmp154468
                                               (##structure-ref
                                                _self152689_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp154468 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp154467)))
                                (__tmp154465
                                 (let ()
                                   (declare (not safe))
                                   (cons _value152750_ '()))))
                            (declare (not safe))
                            (cons __tmp154466 __tmp154465))))
                     (declare (not safe))
                     (cons __tmp154469 __tmp154464))))
              (declare (not safe))
              (cons __tmp154471 __tmp154463))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154474
                                                     __tmp154462))))
                                        (declare (not safe))
                                        (cons '%#call __tmp154461))))
                                 (declare (not safe))
                                 (cons __tmp154460 '()))))
                          (declare (not safe))
                          (cons __tmp154476 __tmp154459))))
                   (declare (not safe))
                   (cons __tmp154488 __tmp154458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp154457))))
                                             (declare (not safe))
                                             (cons __tmp154456 '()))))
                                      (declare (not safe))
                                      (cons __tmp154496 __tmp154455))))
                              (declare (not safe))
                              (cons '%#let-values __tmp154454))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154452 _stx152691_))
                     (let ((__tmp154442
                            (let ((__tmp154443
                                   (let ((__tmp154450
                                          (let ((__tmp154451
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp154451)))
                                         (__tmp154444
                                          (let ((__tmp154445
                                                 (let ((__tmp154447
                                                        (let ((__tmp154448
                                                               (let ((__tmp154449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self152689_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp154449 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154448)))
               (__tmp154446
                (let () (declare (not safe)) (cons _value152750_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154447
                                                         __tmp154446))))
                                            (declare (not safe))
                                            (cons _object152748_
                                                  __tmp154445))))
                                     (declare (not safe))
                                     (cons __tmp154450 __tmp154444))))
                              (declare (not safe))
                              (cons '%#call __tmp154443))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp154442 _stx152691_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd152702152724_
                                       _hd152699152716_)
                                      (let ()
                                        (declare (not safe))
                                        (_g152694152708_ _g152695152711_)))))
                              (let ()
                                (declare (not safe))
                                (_g152694152708_ _g152695152711_)))))
                      (let ()
                        (declare (not safe))
                        (_g152694152708_ _g152695152711_))))))
          (declare (not safe))
          (_g152693152760_ _args152692_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass153567 __method-table153568)
        (let ((__id153569
               (let ((__slot153572
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153567 'id))))
                 (if __slot153572
                     __slot153572
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot153570
               (let ((__slot153573
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153567 'slot))))
                 (if __slot153573
                     __slot153573
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?153571
               (let ((__slot153574
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass153567 'checked?))))
                 (if __slot153574
                     __slot153574
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self152689_ _ctx152690_ _stx152691_ _args152692_)
            (let* ((_g152694152708_
                    (lambda (_g152695152705_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152695152705_))))
                   (_g152693152760_
                    (lambda (_g152695152711_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152695152711_))
                          (let ((_e152700152713_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152695152711_))))
                            (let ((_hd152699152716_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152700152713_)))
                                  (_tl152698152718_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152700152713_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl152698152718_))
                                  (let ((_e152703152721_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl152698152718_))))
                                    (let ((_hd152702152724_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e152703152721_)))
                                          (_tl152701152726_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e152703152721_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl152701152726_))
                                          ((lambda (_L152729_ _L152730_)
                                             (let* ((_klass152744_
                                                     (let ((__tmp154533
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152689_
                                                               __id153569
                                                               __klass153567
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx152691_
                                                        __tmp154533)))
                                                    (_field152746_
                                                     (let ((__tmp154534
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self152689_
                                                               __slot153570
                                                               __klass153567
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152744_
                                                        __tmp154534)))
                                                    (_object152748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152690_
                                                        _L152730_)))
                                                    (_value152750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _ctx152690_
                                                        _L152729_))))
                                               (if (##structure-ref
                                                    _klass152744_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp154616
                                                          (let ((__tmp154626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152689_
                                __checked?153571
                                __klass153567
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp154617
                         (let ((__tmp154623
                                (let ((__tmp154624
                                       (let ((__tmp154625
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self152689_
                                                 __id153569
                                                 __klass153567
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp154625 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp154624)))
                               (__tmp154618
                                (let ((__tmp154621
                                       (let ((__tmp154622
                                              (let ()
                                                (declare (not safe))
                                                (cons _field152746_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp154622)))
                                      (__tmp154619
                                       (let ((__tmp154620
                                              (let ()
                                                (declare (not safe))
                                                (cons _value152750_ '()))))
                                         (declare (not safe))
                                         (cons _object152748_ __tmp154620))))
                                  (declare (not safe))
                                  (cons __tmp154621 __tmp154619))))
                           (declare (not safe))
                           (cons __tmp154623 __tmp154618))))
                    (declare (not safe))
                    (cons __tmp154626 __tmp154617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154616
                                                      _stx152691_))
                                                   (if (##structure-ref
                                                        _klass152744_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp154605
                                                              (let ((__tmp154615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self152689_
                                    __checked?153571
                                    __klass153567
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp154606
                             (let ((__tmp154612
                                    (let ((__tmp154613
                                           (let ((__tmp154614
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152689_
                                                     __id153569
                                                     __klass153567
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp154614 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154613)))
                                   (__tmp154607
                                    (let ((__tmp154610
                                           (let ((__tmp154611
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field152746_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154611)))
                                          (__tmp154608
                                           (let ((__tmp154609
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value152750_ '()))))
                                             (declare (not safe))
                                             (cons _object152748_
                                                   __tmp154609))))
                                      (declare (not safe))
                                      (cons __tmp154610 __tmp154608))))
                               (declare (not safe))
                               (cons __tmp154612 __tmp154607))))
                        (declare (not safe))
                        (cons __tmp154615 __tmp154606))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp154605 _stx152691_))
               (let ((_$e152753_
                      (let ((__tmp154535
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self152689_
                                __slot153570
                                __klass153567
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass152744_
                         __tmp154535))))
                 (if _$e152753_
                     ((lambda (_klass152756_)
                        (let ((__tmp154594
                               (let ((__tmp154604
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self152689_
                                             __checked?153571
                                             __klass153567
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp154595
                                      (let ((__tmp154601
                                             (let ((__tmp154602
                                                    (let ((__tmp154603
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self152689_
                                                              __id153569
                                                              __klass153567
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp154603 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp154602)))
                                            (__tmp154596
                                             (let ((__tmp154599
                                                    (let ((__tmp154600
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field152746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp154600)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp154597
                                                    (let ((__tmp154598
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value152750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object152748_ __tmp154598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp154599
                                                     __tmp154597))))
                                        (declare (not safe))
                                        (cons __tmp154601 __tmp154596))))
                                 (declare (not safe))
                                 (cons __tmp154604 __tmp154595))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp154594 _stx152691_)))
                      _$e152753_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self152689_
                            __checked?153571
                            __klass153567
                            '#f))
                         (let ((__tmp154546
                                (let* ((_$obj152758_
                                        (let ((__tmp154547 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp154547)))
                                       (__tmp154548
                                        (let ((__tmp154590
                                               (let ((__tmp154591
                                                      (let ((__tmp154593
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152758_ '())))
                    (__tmp154592
                     (let () (declare (not safe)) (cons _object152748_ '()))))
                (declare (not safe))
                (cons __tmp154593 __tmp154592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154591 '())))
                                              (__tmp154549
                                               (let ((__tmp154550
                                                      (let ((__tmp154551
                                                             (let ((__tmp154582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp154583
                                   (let ((__tmp154587
                                          (let ((__tmp154588
                                                 (let ((__tmp154589
                                                        (##structure-ref
                                                         _klass152744_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp154589 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp154588)))
                                         (__tmp154584
                                          (let ((__tmp154585
                                                 (let ((__tmp154586
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152758_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154586))))
                                            (declare (not safe))
                                            (cons __tmp154585 '()))))
                                     (declare (not safe))
                                     (cons __tmp154587 __tmp154584))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp154583)))
                           (__tmp154552
                            (let ((__tmp154570
                                   (let ((__tmp154571
                                          (let ((__tmp154579
                                                 (let ((__tmp154580
                                                        (let ((__tmp154581
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self152689_
                          __id153569
                          __klass153567
                          '#f))))
                  (declare (not safe))
                  (cons __tmp154581 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp154580)))
                                                (__tmp154572
                                                 (let ((__tmp154577
                                                        (let ((__tmp154578
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field152746_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp154578)))
               (__tmp154573
                (let ((__tmp154575
                       (let ((__tmp154576
                              (let ()
                                (declare (not safe))
                                (cons _$obj152758_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154576)))
                      (__tmp154574
                       (let () (declare (not safe)) (cons _value152750_ '()))))
                  (declare (not safe))
                  (cons __tmp154575 __tmp154574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154577
                                                         __tmp154573))))
                                            (declare (not safe))
                                            (cons __tmp154579 __tmp154572))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp154571)))
                                  (__tmp154553
                                   (let ((__tmp154554
                                          (let ((__tmp154555
                                                 (let ((__tmp154568
                                                        (let ((__tmp154569
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154569)))
               (__tmp154556
                (let ((__tmp154565
                       (let ((__tmp154566
                              (let ((__tmp154567
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self152689_
                                        __id153569
                                        __klass153567
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp154567 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp154566)))
                      (__tmp154557
                       (let ((__tmp154563
                              (let ((__tmp154564
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152758_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154564)))
                             (__tmp154558
                              (let ((__tmp154560
                                     (let ((__tmp154561
                                            (let ((__tmp154562
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152689_
                                                      __slot153570
                                                      __klass153567
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp154562 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154561)))
                                    (__tmp154559
                                     (let ()
                                       (declare (not safe))
                                       (cons _value152750_ '()))))
                                (declare (not safe))
                                (cons __tmp154560 __tmp154559))))
                         (declare (not safe))
                         (cons __tmp154563 __tmp154558))))
                  (declare (not safe))
                  (cons __tmp154565 __tmp154557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154568
                                                         __tmp154556))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154555))))
                                     (declare (not safe))
                                     (cons __tmp154554 '()))))
                              (declare (not safe))
                              (cons __tmp154570 __tmp154553))))
                       (declare (not safe))
                       (cons __tmp154582 __tmp154552))))
                (declare (not safe))
                (cons '%#if __tmp154551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp154550 '()))))
                                          (declare (not safe))
                                          (cons __tmp154590 __tmp154549))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp154548))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp154546 _stx152691_))
                         (let ((__tmp154536
                                (let ((__tmp154537
                                       (let ((__tmp154544
                                              (let ((__tmp154545
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp154545)))
                                             (__tmp154538
                                              (let ((__tmp154539
                                                     (let ((__tmp154541
                                                            (let ((__tmp154542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154543
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self152689_
                                     __slot153570
                                     __klass153567
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp154543 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154542)))
                   (__tmp154540
                    (let () (declare (not safe)) (cons _value152750_ '()))))
               (declare (not safe))
               (cons __tmp154541 __tmp154540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object152748_
                                                      __tmp154539))))
                                         (declare (not safe))
                                         (cons __tmp154544 __tmp154538))))
                                  (declare (not safe))
                                  (cons '%#call __tmp154537))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp154536
                            _stx152691_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd152702152724_
                                           _hd152699152716_)
                                          (let ()
                                            (declare (not safe))
                                            (_g152694152708_
                                             _g152695152711_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g152694152708_ _g152695152711_)))))
                          (let ()
                            (declare (not safe))
                            (_g152694152708_ _g152695152711_))))))
              (declare (not safe))
              (_g152693152760_ _args152692_))))))
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
      (lambda (_self152522_ _ctx152523_ _stx152524_ _args152525_)
        (let* ((_self152526152535_ _self152522_)
               (_E152528152539_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152526152535_))))
               (_K152529152546_
                (lambda (_inline152542_ _dispatch152543_ _arity152544_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self152522_ _args152525_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx152524_
                         _arity152544_)))
                  (if _inline152542_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp154632
                               (let ((__tmp154633
                                      (_inline152542_ _stx152524_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp154633
                                  _stx152524_))))
                          (declare (not safe))
                          (gxc#compile-e__1 _ctx152523_ __tmp154632)))
                      (if _dispatch152543_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch152543_))
                            (let ((__tmp154627
                                   (let ((__tmp154628
                                          (let ((__tmp154629
                                                 (let ((__tmp154630
                                                        (let ((__tmp154631
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch152543_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp154631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp154630
                                                         _args152525_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp154629))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp154628
                                      _stx152524_))))
                              (declare (not safe))
                              (gxc#compile-e__1 _ctx152523_ __tmp154627)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _ctx152523_ _stx152524_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152526152535_ 'gxc#!lambda::t))
              (let* ((_e152530152549_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152526152535_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152531152552_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152526152535_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152555_ _e152531152552_)
                     (_e152532152557_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152526152535_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch152560_ _e152532152557_)
                     (_e152533152562_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152526152535_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline152565_ _e152533152562_))
                (declare (not safe))
                (_K152529152546_
                 _inline152565_
                 _dispatch152560_
                 _arity152555_))
              (let () (declare (not safe)) (_E152528152539_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self152360_ _ctx152361_ _stx152362_ _args152363_)
        (let* ((_self152364152371_ _self152360_)
               (_E152366152375_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152364152371_))))
               (_K152367152389_
                (lambda (_clauses152378_)
                  (let ((_$e152384_
                         (let ((__tmp154634
                                (lambda (_g152379152381_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g152379152381_
                                     _args152363_)))))
                           (declare (not safe))
                           (find __tmp154634 _clauses152378_))))
                    (if _$e152384_
                        ((lambda (_clause152387_)
                           (let ((__method153845
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause152387_
                                     'optimize-call))))
                             (if __method153845
                                 (__method153845
                                  _clause152387_
                                  _ctx152361_
                                  _stx152362_
                                  _args152363_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause152387_
                                          'optimize-call)))))
                         _$e152384_)
                        (let ((__tmp154635
                               (map gxc#!lambda-arity _clauses152378_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx152362_
                           __tmp154635)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152364152371_
                 'gxc#!case-lambda::t))
              (let* ((_e152368152392_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152364152371_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152369152395_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152364152371_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses152398_ _e152369152395_))
                (declare (not safe))
                (_K152367152389_ _clauses152398_))
              (let () (declare (not safe)) (_E152366152375_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self152174_ _args152175_)
        (let* ((_self152176152183_ _self152174_)
               (_E152178152187_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152176152183_))))
               (_K152179152227_
                (lambda (_arity152190_)
                  (let* ((_arity152191152200_ _arity152190_)
                         (_E152194152204_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity152191152200_)))))
                    (let ((_K152198152224_
                           (lambda ()
                             (fx= (length _args152175_) _arity152190_)))
                          (_K152195152210_
                           (lambda (_arity152208_)
                             (fx>= (length _args152175_) _arity152208_))))
                      (let ((_try-match152193152220_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity152191152200_))
                                   (let ((_tl152197152215_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity152191152200_)))
                                         (_hd152196152213_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity152191152200_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl152197152215_))
                                         (let ((_arity152218_
                                                _hd152196152213_))
                                           (declare (not safe))
                                           (_K152195152210_ _arity152218_))
                                         (let ()
                                           (declare (not safe))
                                           (_E152194152204_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E152194152204_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity152191152200_))
                            (let () (declare (not safe)) (_K152198152224_))
                            (let ()
                              (declare (not safe))
                              (_try-match152193152220_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self152176152183_ 'gxc#!lambda::t))
              (let* ((_e152180152230_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152176152183_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152181152233_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152176152183_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity152236_ _e152181152233_))
                (declare (not safe))
                (_K152179152227_ _arity152236_))
              (let () (declare (not safe)) (_E152178152187_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self152058_ _ctx152059_ _stx152060_ _args152061_)
        (let* ((_self152062152070_ _self152058_)
               (_E152064152074_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self152062152070_))))
               (_K152065152158_
                (lambda (_dispatch152077_ _table152078_)
                  (let* ((_g152079152088_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch152077_)))
                         (_else152081152096_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch152077_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _ctx152059_ _stx152060_))))
                         (_K152083152142_
                          (lambda (_main152099_ _keys152100_)
                            (let ((_g154636_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx152060_
                                      _args152061_))))
                              (begin
                                (let ((_g154637_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g154636_)
                                             (##vector-length _g154636_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g154637_ 2)))
                                      (error "Context expects 2 values"
                                             _g154637_)))
                                (let ((_pargs152102_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154636_ 0)))
                                      (_kwargs152103_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g154636_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main152099_))
                                    (if _table152078_
                                        (let ((_xargs152110_
                                               (map (lambda (_key152105_)
                                                      (let ((_$e152107_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key152105_ _kwargs152103_))))
                (if _$e152107_ (values _$e152107_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys152100_)))
                                          (for-each
                                           (lambda (_kw152112_)
                                             (if (memq (car _kw152112_)
                                                       _keys152100_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx152060_
                                                    _keys152100_
                                                    _kw152112_))))
                                           _kwargs152103_)
                                          (let ((__tmp154689
                                                 (let ((__tmp154690
                                                        (let ((__tmp154691
                                                               (let ((__tmp154696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154697
                                     (let ()
                                       (declare (not safe))
                                       (cons _main152099_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp154697)))
                             (__tmp154692
                              (let ((__tmp154694
                                     (let ((__tmp154695
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp154695)))
                                    (__tmp154693
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs152102_
                                               _xargs152110_))))
                                (declare (not safe))
                                (cons __tmp154694 __tmp154693))))
                         (declare (not safe))
                         (cons __tmp154696 __tmp154692))))
                  (declare (not safe))
                  (cons '%#call __tmp154691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154690
                                                    _stx152060_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152059_
                                             __tmp154689)))
                                        (let* ((_kwt152114_
                                                (let ((__tmp154638
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp154638)))
                                               (_kwvars152117_
                                                (map (lambda (_g154639_)
                                                       (let ((__tmp154640
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp154640)))
                                                     _kwargs152103_))
                                               (_kwbind152122_
                                                (map (lambda (_kw152119_
                                                              _kwvar152120_)
                                                       (let ((__tmp154643
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar152120_ '())))
                     (__tmp154641
                      (let ((__tmp154642 (cdr _kw152119_)))
                        (declare (not safe))
                        (cons __tmp154642 '()))))
                 (declare (not safe))
                 (cons __tmp154643 __tmp154641)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152103_
                                                     _kwvars152117_))
                                               (_kwset152127_
                                                (map (lambda (_kw152124_
                                                              _kwvar152125_)
                                                       (let ((__tmp154644
                                                              (let ((__tmp154645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp154653
                                    (let ((__tmp154654
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt152114_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp154654)))
                                   (__tmp154646
                                    (let ((__tmp154650
                                           (let ((__tmp154651
                                                  (let ((__tmp154652
                                                         (car _kw152124_)))
                                                    (declare (not safe))
                                                    (cons __tmp154652 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp154651)))
                                          (__tmp154647
                                           (let ((__tmp154648
                                                  (let ((__tmp154649
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar152125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp154649))))
                                             (declare (not safe))
                                             (cons __tmp154648 '()))))
                                      (declare (not safe))
                                      (cons __tmp154650 __tmp154647))))
                               (declare (not safe))
                               (cons __tmp154653 __tmp154646))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp154645))))
                 (declare (not safe))
                 (cons '%#call __tmp154644)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152103_
                                                     _kwvars152117_))
                                               (_xkwargs152132_
                                                (map (lambda (_kw152129_
                                                              _kwvar152130_)
                                                       (let ((__tmp154657
                                                              (car _kw152129_))
                                                             (__tmp154655
                                                              (let ((__tmp154656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar152130_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp154656))))
                 (declare (not safe))
                 (cons __tmp154657 __tmp154655)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs152103_
                                                     _kwvars152117_))
                                               (_xargs152139_
                                                (map (lambda (_key152134_)
                                                       (let ((_$e152136_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key152134_ _xkwargs152132_))))
                 (if _$e152136_ (values _$e152136_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys152100_)))
                                          (let ((__tmp154658
                                                 (let ((__tmp154659
                                                        (let ((__tmp154660
                                                               (let ((__tmp154661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp154662
                                     (let ((__tmp154663
                                            (let ((__tmp154677
                                                   (let ((__tmp154678
                                                          (let ((__tmp154688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt152114_ '())))
                        (__tmp154679
                         (let ((__tmp154680
                                (let ((__tmp154681
                                       (let ((__tmp154682
                                              (let ((__tmp154683
                                                     (let ((__tmp154685
                                                            (let ((__tmp154686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp154687 (length _kwargs152103_)))
                             (declare (not safe))
                             (cons __tmp154687 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp154686)))
                   (__tmp154684
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp154685 __tmp154684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp154683))))
                                         (declare (not safe))
                                         (cons '%#call __tmp154682))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp154681
                                   _stx152060_))))
                           (declare (not safe))
                           (cons __tmp154680 '()))))
                    (declare (not safe))
                    (cons __tmp154688 __tmp154679))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154678 '())))
                                                  (__tmp154664
                                                   (let ((__tmp154665
                                                          (let ((__tmp154666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp154667
                                (let ((__tmp154668
                                       (let ((__tmp154669
                                              (let ((__tmp154670
                                                     (let ((__tmp154675
                                                            (let ((__tmp154676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main152099_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp154676)))
                   (__tmp154671
                    (let ((__tmp154673
                           (let ((__tmp154674
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt152114_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp154674)))
                          (__tmp154672
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs152102_ _xargs152139_))))
                      (declare (not safe))
                      (cons __tmp154673 __tmp154672))))
               (declare (not safe))
               (cons __tmp154675 __tmp154671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp154670))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp154669
                                          _stx152060_))))
                                  (declare (not safe))
                                  (cons __tmp154668 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp154667 _kwset152127_))))
                    (declare (not safe))
                    (cons '%#begin __tmp154666))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp154665 '()))))
                                              (declare (not safe))
                                              (cons __tmp154677 __tmp154664))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp154663))))
                                (declare (not safe))
                                (cons __tmp154662 '()))))
                         (declare (not safe))
                         (cons _kwbind152122_ __tmp154661))))
                  (declare (not safe))
                  (cons '%#let-values __tmp154660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp154659
                                                    _stx152060_))))
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _ctx152059_
                                             __tmp154658)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g152079152088_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e152084152145_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152079152088_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e152085152148_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152079152088_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys152151_ _e152085152148_)
                               (_e152086152153_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g152079152088_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main152156_ _e152086152153_))
                          (declare (not safe))
                          (_K152083152142_ _main152156_ _keys152151_))
                        (let () (declare (not safe)) (_else152081152096_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self152062152070_
                 'gxc#!kw-lambda::t))
              (let* ((_e152066152161_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152062152070_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e152067152164_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152062152070_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table152167_ _e152067152164_)
                     (_e152068152169_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self152062152070_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch152172_ _e152068152169_))
                (declare (not safe))
                (_K152065152158_ _dispatch152172_ _table152167_))
              (let () (declare (not safe)) (_E152064152074_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx151671_ _args151672_)
        (let _lp151674_ ((_rest151676_ _args151672_)
                         (_pargs151677_ '())
                         (_kwargs151678_ '()))
          (let* ((___stx153725153726_ _rest151676_)
                 (_g151684151736_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx153725153726_)))))
            (let ((___kont153727153728_
                   (lambda (_L151915_ _L151916_)
                     (let ((__tmp154698
                            (let ()
                              (declare (not safe))
                              (cons _L151916_ _pargs151677_))))
                       (declare (not safe))
                       (_lp151674_ _L151915_ __tmp154698 _kwargs151678_))))
                  (___kont153729153730_
                   (lambda (_L151861_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L151861_ _pargs151677_))
                             (reverse _kwargs151678_))))
                  (___kont153731153732_
                   (lambda (_L151808_ _L151809_ _L151810_)
                     (let ((_kw151827_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L151810_))))
                       (if (assq _kw151827_ _kwargs151678_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx151671_
                              _kw151827_))
                           (let ((__tmp154699
                                  (let ((__tmp154700
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw151827_ _L151809_))))
                                    (declare (not safe))
                                    (cons __tmp154700 _kwargs151678_))))
                             (declare (not safe))
                             (_lp151674_
                              _L151808_
                              _pargs151677_
                              __tmp154699))))))
                  (___kont153733153734_
                   (lambda (_L151756_ _L151757_)
                     (let ((__tmp154701
                            (let ()
                              (declare (not safe))
                              (cons _L151757_ _pargs151677_))))
                       (declare (not safe))
                       (_lp151674_ _L151756_ __tmp154701 _kwargs151678_))))
                  (___kont153735153736_
                   (lambda ()
                     (values (reverse _pargs151677_)
                             (reverse _kwargs151678_)))))
              (let* ((_g151683151743_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx153725153726_))
                            (___kont153735153736_)
                            (let () (declare (not safe)) (_g151684151736_)))))
                     (___match153832153833_
                      (lambda (_e151717151776_
                               _hd151716151779_
                               _tl151715151781_
                               _e151720151784_
                               _hd151719151787_
                               _tl151718151789_
                               _e151723151792_
                               _hd151722151795_
                               _tl151721151797_
                               _e151726151800_
                               _hd151725151803_
                               _tl151724151805_)
                        (let ((_L151808_ _tl151724151805_)
                              (_L151809_ _hd151725151803_)
                              (_L151810_ _hd151722151795_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L151810_))
                              (___kont153731153732_
                               _L151808_
                               _L151809_
                               _L151810_)
                              (___kont153733153734_
                               _tl151715151781_
                               _hd151716151779_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx153725153726_))
                    (let ((_e151690151880_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx153725153726_))))
                      (let ((_tl151688151885_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151690151880_)))
                            (_hd151689151883_
                             (let ()
                               (declare (not safe))
                               (##car _e151690151880_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd151689151883_))
                            (let ((_e151693151888_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd151689151883_))))
                              (let ((_tl151691151893_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e151693151888_)))
                                    (_hd151692151891_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e151693151888_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd151692151891_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd151692151891_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl151691151893_))
                                            (let ((_e151696151896_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl151691151893_))))
                                              (let ((_tl151694151901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e151696151896_)))
                                                    (_hd151695151899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e151696151896_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd151695151899_))
                                                    (let ((_e151697151904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd151695151899_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e151697151904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl151694151901_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl151688151885_))
                          (let ((_e151700151907_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl151688151885_))))
                            (let ((_tl151698151912_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151700151907_)))
                                  (_hd151699151910_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151700151907_))))
                              (___kont153727153728_
                               _tl151698151912_
                               _hd151699151910_)))
                          (___kont153733153734_
                           _tl151688151885_
                           _hd151689151883_))
                      (___kont153733153734_ _tl151688151885_ _hd151689151883_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e151697151904_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151694151901_))
                          (___kont153729153730_ _tl151688151885_)
                          (___kont153733153734_
                           _tl151688151885_
                           _hd151689151883_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl151694151901_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151688151885_))
                              (let ((_e151726151800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151688151885_))))
                                (let ((_tl151724151805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151726151800_)))
                                      (_hd151725151803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151726151800_))))
                                  (___match153832153833_
                                   _e151690151880_
                                   _hd151689151883_
                                   _tl151688151885_
                                   _e151693151888_
                                   _hd151692151891_
                                   _tl151691151893_
                                   _e151696151896_
                                   _hd151695151899_
                                   _tl151694151901_
                                   _e151726151800_
                                   _hd151725151803_
                                   _tl151724151805_)))
                              (___kont153733153734_
                               _tl151688151885_
                               _hd151689151883_))
                          (___kont153733153734_
                           _tl151688151885_
                           _hd151689151883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl151694151901_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl151688151885_))
                                                            (let ((_e151726151800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl151688151885_))))
                      (let ((_tl151724151805_
                             (let ()
                               (declare (not safe))
                               (##cdr _e151726151800_)))
                            (_hd151725151803_
                             (let ()
                               (declare (not safe))
                               (##car _e151726151800_))))
                        (___match153832153833_
                         _e151690151880_
                         _hd151689151883_
                         _tl151688151885_
                         _e151693151888_
                         _hd151692151891_
                         _tl151691151893_
                         _e151696151896_
                         _hd151695151899_
                         _tl151694151901_
                         _e151726151800_
                         _hd151725151803_
                         _tl151724151805_)))
                    (___kont153733153734_ _tl151688151885_ _hd151689151883_))
                (___kont153733153734_ _tl151688151885_ _hd151689151883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont153733153734_
                                             _tl151688151885_
                                             _hd151689151883_))
                                        (___kont153733153734_
                                         _tl151688151885_
                                         _hd151689151883_))
                                    (___kont153733153734_
                                     _tl151688151885_
                                     _hd151689151883_))))
                            (___kont153733153734_
                             _tl151688151885_
                             _hd151689151883_))))
                    (let () (declare (not safe)) (_g151683151743_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self151666_ _ctx151667_ _stx151668_ _args151669_)
        (let ()
          (declare (not safe))
          (gxc#xform-call% _ctx151667_ _stx151668_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
