(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1709125259)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl152576_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp152871 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-merge! _tbl152576_ __tmp152871))
           (let ()
             (declare (not safe))
             (hash-put! _tbl152576_ '%#call gxc#optimize-call%))
           _tbl152576_))))
    (define gxc#apply-optimize-call
      (lambda (_stx152559_ . _args152561_)
        (let ((__tmp152873
               (lambda ()
                 (declare (not safe))
                 (if (null? _args152561_)
                     (gxc#compile-e__0 _stx152559_)
                     (let ((_arg1152566_ (car _args152561_))
                           (_rest152568_ (cdr _args152561_)))
                       (if (null? _rest152568_)
                           (gxc#compile-e__1 _stx152559_ _arg1152566_)
                           (let ((_arg2152571_ (car _rest152568_))
                                 (_rest152573_ (cdr _rest152568_)))
                             (if (null? _rest152573_)
                                 (gxc#compile-e__2
                                  _stx152559_
                                  _arg1152566_
                                  _arg2152571_)
                                 (apply gxc#compile-e
                                        _stx152559_
                                        _arg1152566_
                                        _arg2152571_
                                        _rest152573_))))))))
              (__tmp152872 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp152873
           gxc#current-compile-methods
           __tmp152872))))
    (define gxc#optimize-call%
      (lambda (_stx152414_)
        (let* ((___stx152621152622_ _stx152414_)
               (_g152417152437_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx152621152622_)))))
          (let ((___kont152623152624_
                 (lambda (_L152481_ _L152482_)
                   (let* ((_rator-id152500_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L152482_)))
                          (_rator-type152502_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id152500_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type152502_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp152874
                                  (##structure-ref
                                   _rator-type152502_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id152500_
                              '" => "
                              _rator-type152502_
                              '" "
                              __tmp152874))
                           (let ((_optimized152505_
                                  (let ((__method152869
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type152502_
                                            'optimize-call))))
                                    (if __method152869
                                        (__method152869
                                         _rator-type152502_
                                         _stx152414_
                                         _L152481_)
                                        (let ()
                                          (declare (not safe))
                                          (error '"Missing method"
                                                 _rator-type152502_
                                                 'optimize-call))))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type152502_))
                                 _optimized152505_
                                 (let* ((___stx152603152604_ _optimized152505_)
                                        (_g152508152518_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx152603152604_)))))
                                   (let ((___kont152605152606_
                                          (lambda (_L152538_)
                                            (let ((__tmp152875
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L152538_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp152875
                                               _stx152414_))))
                                         (___kont152607152608_
                                          (lambda () _optimized152505_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx152603152604_))
                                         (let ((_e152513152530_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx152603152604_))))
                                           (let ((_tl152511152535_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e152513152530_)))
                                                 (_hd152512152533_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e152513152530_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd152512152533_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd152512152533_))
                                                     (___kont152605152606_
                                                      _tl152511152535_)
                                                     (___kont152607152608_))
                                                 (___kont152607152608_))))
                                         (___kont152607152608_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type152502_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx152414_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx152414_
                                _rator-type152502_)))))))
                (___kont152625152626_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx152414_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx152621152622_))
                (let ((_e152423152449_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx152621152622_))))
                  (let ((_tl152421152454_
                         (let () (declare (not safe)) (##cdr _e152423152449_)))
                        (_hd152422152452_
                         (let ()
                           (declare (not safe))
                           (##car _e152423152449_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl152421152454_))
                        (let ((_e152426152457_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152421152454_))))
                          (let ((_tl152424152462_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152426152457_)))
                                (_hd152425152460_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152426152457_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd152425152460_))
                                (let ((_e152429152465_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd152425152460_))))
                                  (let ((_tl152427152470_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e152429152465_)))
                                        (_hd152428152468_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e152429152465_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd152428152468_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd152428152468_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl152427152470_))
                                                (let ((_e152432152473_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl152427152470_))))
                                                  (let ((_tl152430152478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152432152473_)))
                                                        (_hd152431152476_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152432152473_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl152430152478_))
                                                        (___kont152623152624_
                                                         _tl152424152462_
                                                         _hd152431152476_)
                                                        (___kont152625152626_))))
                                                (___kont152625152626_))
                                            (___kont152625152626_))
                                        (___kont152625152626_))))
                                (___kont152625152626_))))
                        (___kont152625152626_))))
                (___kont152625152626_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self152368_ _stx152369_ _args152370_)
        (let* ((_g152372152382_
                (lambda (_g152373152379_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g152373152379_))))
               (_g152371152411_
                (lambda (_g152373152385_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g152373152385_))
                      (let ((_e152377152387_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g152373152385_))))
                        (let ((_hd152376152390_
                               (let ()
                                 (declare (not safe))
                                 (##car _e152377152387_)))
                              (_tl152375152392_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e152377152387_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl152375152392_))
                              ((lambda (_L152395_)
                                 (let* ((_klass152406_
                                         (let ((__tmp152876
                                                (##structure-ref
                                                 _self152368_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx152369_
                                            __tmp152876)))
                                        (_object152408_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L152395_))))
                                   (if (##structure-ref
                                        _klass152406_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp152892
                                              (let ((__tmp152893
                                                     (let ((__tmp152895
                                                            (let ((__tmp152896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp152897
                                  (##structure-ref
                                   _klass152406_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp152897 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp152896)))
                   (__tmp152894
                    (let () (declare (not safe)) (cons _object152408_ '()))))
               (declare (not safe))
               (cons __tmp152895 __tmp152894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp152893))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp152892
                                          _stx152369_))
                                       (if (##structure-ref
                                            _klass152406_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152886
                                                  (let ((__tmp152887
                                                         (let ((__tmp152889
                                                                (let ((__tmp152890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152891
                                      (##structure-ref
                                       _klass152406_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152891 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152890)))
                       (__tmp152888
                        (let ()
                          (declare (not safe))
                          (cons _object152408_ '()))))
                   (declare (not safe))
                   (cons __tmp152889 __tmp152888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp152887))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152886
                                              _stx152369_))
                                           (let ((__tmp152877
                                                  (let ((__tmp152878
                                                         (let ((__tmp152884
                                                                (let ((__tmp152885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152885)))
                       (__tmp152879
                        (let ((__tmp152881
                               (let ((__tmp152882
                                      (let ((__tmp152883
                                             (##structure-ref
                                              _self152368_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp152883 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp152882)))
                              (__tmp152880
                               (let ()
                                 (declare (not safe))
                                 (cons _object152408_ '()))))
                          (declare (not safe))
                          (cons __tmp152881 __tmp152880))))
                   (declare (not safe))
                   (cons __tmp152884 __tmp152879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp152878))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152877
                                              _stx152369_))))))
                               _hd152376152390_)
                              (let ()
                                (declare (not safe))
                                (_g152372152382_ _g152373152385_)))))
                      (let ()
                        (declare (not safe))
                        (_g152372152382_ _g152373152385_))))))
          (declare (not safe))
          (_g152371152411_ _args152370_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__klass152578 __method-table152579)
        (let ((__id152580
               (let ((__slot152581
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152578 'id))))
                 (if __slot152581
                     __slot152581
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152368_ _stx152369_ _args152370_)
            (let* ((_g152372152382_
                    (lambda (_g152373152379_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g152373152379_))))
                   (_g152371152411_
                    (lambda (_g152373152385_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g152373152385_))
                          (let ((_e152377152387_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g152373152385_))))
                            (let ((_hd152376152390_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e152377152387_)))
                                  (_tl152375152392_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e152377152387_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl152375152392_))
                                  ((lambda (_L152395_)
                                     (let* ((_klass152406_
                                             (let ((__tmp152898
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self152368_
                                                       __id152580
                                                       __klass152578
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx152369_
                                                __tmp152898)))
                                            (_object152408_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L152395_))))
                                       (if (##structure-ref
                                            _klass152406_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp152914
                                                  (let ((__tmp152915
                                                         (let ((__tmp152917
                                                                (let ((__tmp152918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp152919
                                      (##structure-ref
                                       _klass152406_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp152919 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp152918)))
                       (__tmp152916
                        (let ()
                          (declare (not safe))
                          (cons _object152408_ '()))))
                   (declare (not safe))
                   (cons __tmp152917 __tmp152916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp152915))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp152914
                                              _stx152369_))
                                           (if (##structure-ref
                                                _klass152406_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp152908
                                                      (let ((__tmp152909
                                                             (let ((__tmp152911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152912
                                   (let ((__tmp152913
                                          (##structure-ref
                                           _klass152406_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp152913 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp152912)))
                           (__tmp152910
                            (let ()
                              (declare (not safe))
                              (cons _object152408_ '()))))
                       (declare (not safe))
                       (cons __tmp152911 __tmp152910))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp152909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152908
                                                  _stx152369_))
                                               (let ((__tmp152899
                                                      (let ((__tmp152900
                                                             (let ((__tmp152906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp152907
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp152907)))
                           (__tmp152901
                            (let ((__tmp152903
                                   (let ((__tmp152904
                                          (let ((__tmp152905
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self152368_
                                                    __id152580
                                                    __klass152578
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp152905 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp152904)))
                                  (__tmp152902
                                   (let ()
                                     (declare (not safe))
                                     (cons _object152408_ '()))))
                              (declare (not safe))
                              (cons __tmp152903 __tmp152902))))
                       (declare (not safe))
                       (cons __tmp152906 __tmp152901))))
                (declare (not safe))
                (cons '%#call __tmp152900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp152899
                                                  _stx152369_))))))
                                   _hd152376152390_)
                                  (let ()
                                    (declare (not safe))
                                    (_g152372152382_ _g152373152385_)))))
                          (let ()
                            (declare (not safe))
                            (_g152372152382_ _g152373152385_))))))
              (declare (not safe))
              (_g152371152411_ _args152370_))))))
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
      (lambda (_self152088_ _stx152089_ _args152090_)
        (let* ((_klass152092_
                (let ((__tmp152920
                       (##structure-ref _self152088_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx152089_ __tmp152920)))
               (_fields152094_
                (length (##structure-ref _klass152092_ '5 gxc#!class::t '#f)))
               (_args152096_ (map gxc#compile-e _args152090_))
               (_inline-make-object152098_
                (let ((__tmp152921
                       (let ((__tmp152927
                              (let ((__tmp152928
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp152928)))
                             (__tmp152922
                              (let ((__tmp152924
                                     (let ((__tmp152925
                                            (let ((__tmp152926
                                                   (##structure-ref
                                                    _self152088_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp152926 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp152925)))
                                    (__tmp152923
                                     (let ()
                                       (declare (not safe))
                                       (make-list__%
                                        _fields152094_
                                        '(%#quote #f)))))
                                (declare (not safe))
                                (cons __tmp152924 __tmp152923))))
                         (declare (not safe))
                         (cons __tmp152927 __tmp152922))))
                  (declare (not safe))
                  (cons '%#call __tmp152921))))
          (let ((_$e152101_
                 (##structure-ref _klass152092_ '6 gxc#!class::t '#f)))
            (if _$e152101_
                ((lambda (_ctor152104_)
                   (let ((_$obj152106_
                          (let ((__tmp153028 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp153028)))
                         (_ctor-impl152107_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass152092_
                             _ctor152104_))))
                     (let ((__tmp153029
                            (let ((__tmp153030
                                   (let ((__tmp153098
                                          (let ((__tmp153099
                                                 (let ((__tmp153101
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj152106_
                                                                '())))
                                                       (__tmp153100
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object152098_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp153101
                                                         __tmp153100))))
                                            (declare (not safe))
                                            (cons __tmp153099 '())))
                                         (__tmp153031
                                          (let ((__tmp153032
                                                 (let ((__tmp153033
                                                        (let ((__tmp153037
                                                               (if _ctor-impl152107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153092
                                  (let ((__tmp153096
                                         (let ((__tmp153097
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl152107_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153097)))
                                        (__tmp153093
                                         (let ((__tmp153094
                                                (let ((__tmp153095
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj152106_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153095))))
                                           (declare (not safe))
                                           (cons __tmp153094 _args152096_))))
                                    (declare (not safe))
                                    (cons __tmp153096 __tmp153093))))
                             (declare (not safe))
                             (cons '%#call __tmp153092))
                           (let* ((_$ctor152109_
                                   (let ((__tmp153038 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp153038)))
                                  (__tmp153039
                                   (let ((__tmp153074
                                          (let ((__tmp153075
                                                 (let ((__tmp153091
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor152109_
                                                                '())))
                                                       (__tmp153076
                                                        (let ((__tmp153077
                                                               (let ((__tmp153078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153089
                                     (let ((__tmp153090
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153090)))
                                    (__tmp153079
                                     (let ((__tmp153086
                                            (let ((__tmp153087
                                                   (let ((__tmp153088
                                                          (##structure-ref
                                                           _self152088_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp153088 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153087)))
                                           (__tmp153080
                                            (let ((__tmp153084
                                                   (let ((__tmp153085
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153085)))
                                                  (__tmp153081
                                                   (let ((__tmp153082
                                                          (let ((__tmp153083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _ctor152104_ '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153082 '()))))
                                              (declare (not safe))
                                              (cons __tmp153084 __tmp153081))))
                                       (declare (not safe))
                                       (cons __tmp153086 __tmp153080))))
                                (declare (not safe))
                                (cons __tmp153089 __tmp153079))))
                         (declare (not safe))
                         (cons '%#call __tmp153078))))
                  (declare (not safe))
                  (cons __tmp153077 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153091
                                                         __tmp153076))))
                                            (declare (not safe))
                                            (cons __tmp153075 '())))
                                         (__tmp153040
                                          (let ((__tmp153041
                                                 (let ((__tmp153042
                                                        (let ((__tmp153072
                                                               (let ((__tmp153073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor152109_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153073)))
                      (__tmp153043
                       (let ((__tmp153065
                              (let ((__tmp153066
                                     (let ((__tmp153070
                                            (let ((__tmp153071
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor152109_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153071)))
                                           (__tmp153067
                                            (let ((__tmp153068
                                                   (let ((__tmp153069
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153069))))
                                              (declare (not safe))
                                              (cons __tmp153068
                                                    _args152096_))))
                                       (declare (not safe))
                                       (cons __tmp153070 __tmp153067))))
                                (declare (not safe))
                                (cons '%#call __tmp153066)))
                             (__tmp153044
                              (let ((__tmp153045
                                     (let ((__tmp153046
                                            (let ((__tmp153063
                                                   (let ((__tmp153064
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153064)))
                                                  (__tmp153047
                                                   (let ((__tmp153061
                                                          (let ((__tmp153062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp153062)))
                 (__tmp153048
                  (let ((__tmp153059
                         (let ((__tmp153060
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153060)))
                        (__tmp153049
                         (let ((__tmp153056
                                (let ((__tmp153057
                                       (let ((__tmp153058
                                              (##structure-ref
                                               _self152088_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153058 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153057)))
                               (__tmp153050
                                (let ((__tmp153054
                                       (let ((__tmp153055
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153055)))
                                      (__tmp153051
                                       (let ((__tmp153052
                                              (let ((__tmp153053
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor152104_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp153053))))
                                         (declare (not safe))
                                         (cons __tmp153052 '()))))
                                  (declare (not safe))
                                  (cons __tmp153054 __tmp153051))))
                           (declare (not safe))
                           (cons __tmp153056 __tmp153050))))
                    (declare (not safe))
                    (cons __tmp153059 __tmp153049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153061
                                                           __tmp153048))))
                                              (declare (not safe))
                                              (cons __tmp153063 __tmp153047))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153046))))
                                (declare (not safe))
                                (cons __tmp153045 '()))))
                         (declare (not safe))
                         (cons __tmp153065 __tmp153044))))
                  (declare (not safe))
                  (cons __tmp153072 __tmp153043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp153042))))
                                            (declare (not safe))
                                            (cons __tmp153041 '()))))
                                     (declare (not safe))
                                     (cons __tmp153074 __tmp153040))))
                             (declare (not safe))
                             (cons '%#let-values __tmp153039))))
                      (__tmp153034
                       (let ((__tmp153035
                              (let ((__tmp153036
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj152106_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153036))))
                         (declare (not safe))
                         (cons __tmp153035 '()))))
                  (declare (not safe))
                  (cons __tmp153037 __tmp153034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp153033))))
                                            (declare (not safe))
                                            (cons __tmp153032 '()))))
                                     (declare (not safe))
                                     (cons __tmp153098 __tmp153031))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153030))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153029 _stx152089_))))
                 _$e152101_)
                (let ((_$e152111_
                       (##structure-ref _klass152092_ '9 gxc#!class::t '#f)))
                  (if _$e152111_
                      ((lambda (_metaclass152114_)
                         (let* ((_$obj152116_
                                 (let ((__tmp152990 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152990)))
                                (_metakons152118_
                                 (let ((__tmp152991
                                        (let ()
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           _stx152089_
                                           _metaclass152114_))))
                                   (declare (not safe))
                                   (gxc#!class-lookup-method
                                    __tmp152991
                                    'instance-init!))))
                           (let ((__tmp152992
                                  (let ((__tmp152993
                                         (let ((__tmp153024
                                                (let ((__tmp153025
                                                       (let ((__tmp153027
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152116_ '())))
                     (__tmp153026
                      (let ()
                        (declare (not safe))
                        (cons _inline-make-object152098_ '()))))
                 (declare (not safe))
                 (cons __tmp153027 __tmp153026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153025 '())))
                                               (__tmp152994
                                                (let ((__tmp152995
                                                       (let ((__tmp152996
                                                              (let ((__tmp153000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if _metakons152118_
                                 (let ((__tmp153014
                                        (let ((__tmp153022
                                               (let ((__tmp153023
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _metakons152118_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153023)))
                                              (__tmp153015
                                               (let ((__tmp153019
                                                      (let ((__tmp153020
                                                             (let ((__tmp153021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152088_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153021 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153020)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153016
                                                      (let ((__tmp153017
                                                             (let ((__tmp153018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _$obj152116_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153018))))
                (declare (not safe))
                (cons __tmp153017 _args152096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153019
                                                       __tmp153016))))
                                          (declare (not safe))
                                          (cons __tmp153022 __tmp153015))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153014))
                                 (let ((__tmp153001
                                        (let ((__tmp153012
                                               (let ((__tmp153013
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'call-method
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp153013)))
                                              (__tmp153002
                                               (let ((__tmp153009
                                                      (let ((__tmp153010
                                                             (let ((__tmp153011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##structure-ref
                             _self152088_
                             '1
                             gxc#!type::t
                             '#f)))
                       (declare (not safe))
                       (cons __tmp153011 '()))))
                (declare (not safe))
                (cons '%#ref __tmp153010)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp153003
                                                      (let ((__tmp153007
                                                             (let ((__tmp153008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'instance-init! '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp153008)))
                    (__tmp153004
                     (let ((__tmp153005
                            (let ((__tmp153006
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152116_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153006))))
                       (declare (not safe))
                       (cons __tmp153005 _args152096_))))
                (declare (not safe))
                (cons __tmp153007 __tmp153004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153009
                                                       __tmp153003))))
                                          (declare (not safe))
                                          (cons __tmp153012 __tmp153002))))
                                   (declare (not safe))
                                   (cons '%#call __tmp153001))))
                            (__tmp152997
                             (let ((__tmp152998
                                    (let ((__tmp152999
                                           (let ()
                                             (declare (not safe))
                                             (cons _$obj152116_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp152999))))
                               (declare (not safe))
                               (cons __tmp152998 '()))))
                        (declare (not safe))
                        (cons __tmp153000 __tmp152997))))
                 (declare (not safe))
                 (cons '%#begin __tmp152996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp152995 '()))))
                                           (declare (not safe))
                                           (cons __tmp153024 __tmp152994))))
                                    (declare (not safe))
                                    (cons '%#let-values __tmp152993))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp152992 _stx152089_))))
                       _$e152111_)
                      (if (##structure-ref _klass152092_ '7 gxc#!class::t '#f)
                          (if (fx= (length _args152096_) _fields152094_)
                              (let ((__tmp152982
                                     (let ((__tmp152983
                                            (let ((__tmp152988
                                                   (let ((__tmp152989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp152989)))
                                                  (__tmp152984
                                                   (let ((__tmp152985
                                                          (let ((__tmp152986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp152987
                                (##structure-ref
                                 _self152088_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (cons __tmp152987 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp152986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp152985
                                                           _args152096_))))
                                              (declare (not safe))
                                              (cons __tmp152988 __tmp152984))))
                                       (declare (not safe))
                                       (cons '%#call __tmp152983))))
                                (declare (not safe))
                                (gxc#xform-wrap-source
                                 __tmp152982
                                 _stx152089_))
                              (let ((__tmp152981
                                     (##structure-ref
                                      _self152088_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                    (__tmp152980
                                     (length (##structure-ref
                                              _klass152092_
                                              '5
                                              gxc#!class::t
                                              '#f))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"illegal struct constructor application; arity mismatch"
                                 _stx152089_
                                 __tmp152981
                                 __tmp152980)))
                          (let ((_$obj152121_
                                 (let ((__tmp152929 (gensym '__obj)))
                                   (declare (not safe))
                                   (make-symbol__0 __tmp152929))))
                            (let _lp152123_ ((_rest152125_ _args152096_)
                                             (_initializers152126_ '()))
                              (let* ((___stx152659152660_ _rest152125_)
                                     (_g152130152151_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx152659152660_)))))
                                (let ((___kont152661152662_
                                       (lambda (_L152205_ _L152206_ _L152207_)
                                         (let* ((_slot152238_
                                                 (keyword->symbol
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e _L152207_))))
                                                (_off152240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass152092_
                                                    _slot152238_))))
                                           (if _off152240_
                                               (let ((__tmp152931
                                                      (let ((__tmp152932
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off152240_ _L152206_))))
                (declare (not safe))
                (cons __tmp152932 _initializers152126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp152123_
                                                  _L152205_
                                                  __tmp152931))
                                               (let ((__tmp152930
                                                      (##structure-ref
                                                       _self152088_
                                                       '1
                                                       gxc#!type::t
                                                       '#f)))
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"unknown slot"
                                                  _stx152089_
                                                  __tmp152930
                                                  _slot152238_))))))
                                      (___kont152663152664_
                                       (lambda ()
                                         (let ((__tmp152933
                                                (let ((__tmp152934
                                                       (let ((__tmp152957
                                                              (let ((__tmp152958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152960
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152121_ '())))
                                   (__tmp152959
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152098_ '()))))
                               (declare (not safe))
                               (cons __tmp152960 __tmp152959))))
                        (declare (not safe))
                        (cons __tmp152958 '())))
                     (__tmp152935
                      (let ((__tmp152936
                             (let ((__tmp152937
                                    (let ((__tmp152954
                                           (let ((__tmp152955
                                                  (let ((__tmp152956
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152956))))
                                             (declare (not safe))
                                             (cons __tmp152955 '())))
                                          (__tmp152938
                                           (let ((__tmp152939
                                                  (lambda (_i152165_ _r152166_)
                                                    (let ((__tmp152940
                                                           (let ((__tmp152941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp152951
                                 (let ((__tmp152952
                                        (let ((__tmp152953
                                               (##structure-ref
                                                _self152088_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp152953 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp152952)))
                                (__tmp152942
                                 (let ((__tmp152948
                                        (let ((__tmp152949
                                               (let ((__tmp152950
                                                      (car _i152165_)))
                                                 (declare (not safe))
                                                 (cons __tmp152950 '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp152949)))
                                       (__tmp152943
                                        (let ((__tmp152946
                                               (let ((__tmp152947
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _$obj152121_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp152947)))
                                              (__tmp152944
                                               (let ((__tmp152945
                                                      (cdr _i152165_)))
                                                 (declare (not safe))
                                                 (cons __tmp152945 '()))))
                                          (declare (not safe))
                                          (cons __tmp152946 __tmp152944))))
                                   (declare (not safe))
                                   (cons __tmp152948 __tmp152943))))
                            (declare (not safe))
                            (cons __tmp152951 __tmp152942))))
                     (declare (not safe))
                     (cons '%#struct-unchecked-set! __tmp152941))))
              (declare (not safe))
              (cons __tmp152940 _r152166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (foldl1 __tmp152939
                                                     '()
                                                     _initializers152126_))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp152954 __tmp152938))))
                               (declare (not safe))
                               (cons '%#begin __tmp152937))))
                        (declare (not safe))
                        (cons __tmp152936 '()))))
                 (declare (not safe))
                 (cons __tmp152957 __tmp152935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152934))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152933
                                            _stx152089_))))
                                      (___kont152665152666_
                                       (lambda ()
                                         (let ((__tmp152961
                                                (let ((__tmp152962
                                                       (let ((__tmp152976
                                                              (let ((__tmp152977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp152979
                                    (let ()
                                      (declare (not safe))
                                      (cons _$obj152121_ '())))
                                   (__tmp152978
                                    (let ()
                                      (declare (not safe))
                                      (cons _inline-make-object152098_ '()))))
                               (declare (not safe))
                               (cons __tmp152979 __tmp152978))))
                        (declare (not safe))
                        (cons __tmp152977 '())))
                     (__tmp152963
                      (let ((__tmp152964
                             (let ((__tmp152965
                                    (let ((__tmp152969
                                           (let ((__tmp152970
                                                  (let ((__tmp152974
                                                         (let ((__tmp152975
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'class-instance-init! '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp152975)))
                (__tmp152971
                 (let ((__tmp152972
                        (let ((__tmp152973
                               (let ()
                                 (declare (not safe))
                                 (cons _$obj152121_ '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp152973))))
                   (declare (not safe))
                   (cons __tmp152972 _args152096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp152974
                                                          __tmp152971))))
                                             (declare (not safe))
                                             (cons '%#call __tmp152970)))
                                          (__tmp152966
                                           (let ((__tmp152967
                                                  (let ((__tmp152968
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj152121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp152968))))
                                             (declare (not safe))
                                             (cons __tmp152967 '()))))
                                      (declare (not safe))
                                      (cons __tmp152969 __tmp152966))))
                               (declare (not safe))
                               (cons '%#begin __tmp152965))))
                        (declare (not safe))
                        (cons __tmp152964 '()))))
                 (declare (not safe))
                 (cons __tmp152976 __tmp152963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp152962))))
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp152961
                                            _stx152089_)))))
                                  (let* ((_g152128152168_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   ___stx152659152660_))
                                                (___kont152663152664_)
                                                (___kont152665152666_))))
                                         (___match152696152697_
                                          (lambda (_e152137152173_
                                                   _hd152136152176_
                                                   _tl152135152178_
                                                   _e152140152181_
                                                   _hd152139152184_
                                                   _tl152138152186_
                                                   _e152143152189_
                                                   _hd152142152192_
                                                   _tl152141152194_
                                                   _e152146152197_
                                                   _hd152145152200_
                                                   _tl152144152202_)
                                            (let ((_L152205_ _tl152144152202_)
                                                  (_L152206_ _hd152145152200_)
                                                  (_L152207_ _hd152142152192_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-keyword?
                                                     _L152207_))
                                                  (___kont152661152662_
                                                   _L152205_
                                                   _L152206_
                                                   _L152207_)
                                                  (___kont152665152666_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx152659152660_))
                                        (let ((_e152137152173_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx152659152660_))))
                                          (let ((_tl152135152178_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152137152173_)))
                                                (_hd152136152176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152137152173_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd152136152176_))
                                                (let ((_e152140152181_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd152136152176_))))
                                                  (let ((_tl152138152186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e152140152181_)))
                                                        (_hd152139152184_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e152140152181_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd152139152184_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#quote
                                                               _hd152139152184_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl152138152186_))
                        (let ((_e152143152189_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl152138152186_))))
                          (let ((_tl152141152194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e152143152189_)))
                                (_hd152142152192_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e152143152189_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl152141152194_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl152135152178_))
                                    (let ((_e152146152197_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl152135152178_))))
                                      (let ((_tl152144152202_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e152146152197_)))
                                            (_hd152145152200_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e152146152197_))))
                                        (___match152696152697_
                                         _e152137152173_
                                         _hd152136152176_
                                         _tl152135152178_
                                         _e152140152181_
                                         _hd152139152184_
                                         _tl152138152186_
                                         _e152143152189_
                                         _hd152142152192_
                                         _tl152141152194_
                                         _e152146152197_
                                         _hd152145152200_
                                         _tl152144152202_)))
                                    (___kont152665152666_))
                                (___kont152665152666_))))
                        (___kont152665152666_))
                    (___kont152665152666_))
                (___kont152665152666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont152665152666_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g152128152168_))))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__klass152582 __method-table152583)
        (let ((__id152584
               (let ((__slot152585
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152582 'id))))
                 (if __slot152585
                     __slot152585
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self152088_ _stx152089_ _args152090_)
            (let* ((_klass152092_
                    (let ((__tmp153102
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self152088_
                              __id152584
                              __klass152582
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx152089_ __tmp153102)))
                   (_fields152094_
                    (length (##structure-ref
                             _klass152092_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args152096_ (map gxc#compile-e _args152090_))
                   (_inline-make-object152098_
                    (let ((__tmp153103
                           (let ((__tmp153109
                                  (let ((__tmp153110
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153110)))
                                 (__tmp153104
                                  (let ((__tmp153106
                                         (let ((__tmp153107
                                                (let ((__tmp153108
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self152088_
                                                          __id152584
                                                          __klass152582
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153108 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153107)))
                                        (__tmp153105
                                         (let ()
                                           (declare (not safe))
                                           (make-list__%
                                            _fields152094_
                                            '(%#quote #f)))))
                                    (declare (not safe))
                                    (cons __tmp153106 __tmp153105))))
                             (declare (not safe))
                             (cons __tmp153109 __tmp153104))))
                      (declare (not safe))
                      (cons '%#call __tmp153103))))
              (let ((_$e152101_
                     (##structure-ref _klass152092_ '6 gxc#!class::t '#f)))
                (if _$e152101_
                    ((lambda (_ctor152104_)
                       (let ((_$obj152106_
                              (let ((__tmp153210 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp153210)))
                             (_ctor-impl152107_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass152092_
                                 _ctor152104_))))
                         (let ((__tmp153211
                                (let ((__tmp153212
                                       (let ((__tmp153280
                                              (let ((__tmp153281
                                                     (let ((__tmp153283
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj152106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153282
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object152098_ '()))))
               (declare (not safe))
               (cons __tmp153283 __tmp153282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153281 '())))
                                             (__tmp153213
                                              (let ((__tmp153214
                                                     (let ((__tmp153215
                                                            (let ((__tmp153219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl152107_
                               (let ((__tmp153274
                                      (let ((__tmp153278
                                             (let ((__tmp153279
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl152107_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153279)))
                                            (__tmp153275
                                             (let ((__tmp153276
                                                    (let ((__tmp153277
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj152106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153276
                                                     _args152096_))))
                                        (declare (not safe))
                                        (cons __tmp153278 __tmp153275))))
                                 (declare (not safe))
                                 (cons '%#call __tmp153274))
                               (let* ((_$ctor152109_
                                       (let ((__tmp153220
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp153220)))
                                      (__tmp153221
                                       (let ((__tmp153256
                                              (let ((__tmp153257
                                                     (let ((__tmp153273
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor152109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp153258
                    (let ((__tmp153259
                           (let ((__tmp153260
                                  (let ((__tmp153271
                                         (let ((__tmp153272
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153272)))
                                        (__tmp153261
                                         (let ((__tmp153268
                                                (let ((__tmp153269
                                                       (let ((__tmp153270
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self152088_
                         __id152584
                         __klass152582
                         '#f))))
                 (declare (not safe))
                 (cons __tmp153270 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153269)))
                                               (__tmp153262
                                                (let ((__tmp153266
                                                       (let ((__tmp153267
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152106_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153267)))
              (__tmp153263
               (let ((__tmp153264
                      (let ((__tmp153265
                             (let ()
                               (declare (not safe))
                               (cons _ctor152104_ '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153265))))
                 (declare (not safe))
                 (cons __tmp153264 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153266
                                                        __tmp153263))))
                                           (declare (not safe))
                                           (cons __tmp153268 __tmp153262))))
                                    (declare (not safe))
                                    (cons __tmp153271 __tmp153261))))
                             (declare (not safe))
                             (cons '%#call __tmp153260))))
                      (declare (not safe))
                      (cons __tmp153259 '()))))
               (declare (not safe))
               (cons __tmp153273 __tmp153258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153257 '())))
                                             (__tmp153222
                                              (let ((__tmp153223
                                                     (let ((__tmp153224
                                                            (let ((__tmp153254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153255
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor152109_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153255)))
                          (__tmp153225
                           (let ((__tmp153247
                                  (let ((__tmp153248
                                         (let ((__tmp153252
                                                (let ((__tmp153253
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor152109_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153253)))
                                               (__tmp153249
                                                (let ((__tmp153250
                                                       (let ((__tmp153251
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj152106_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153250
                                                        _args152096_))))
                                           (declare (not safe))
                                           (cons __tmp153252 __tmp153249))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153248)))
                                 (__tmp153226
                                  (let ((__tmp153227
                                         (let ((__tmp153228
                                                (let ((__tmp153245
                                                       (let ((__tmp153246
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153246)))
              (__tmp153229
               (let ((__tmp153243
                      (let ((__tmp153244
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp153244)))
                     (__tmp153230
                      (let ((__tmp153241
                             (let ((__tmp153242
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153242)))
                            (__tmp153231
                             (let ((__tmp153238
                                    (let ((__tmp153239
                                           (let ((__tmp153240
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self152088_
                                                     __id152584
                                                     __klass152582
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153240 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153239)))
                                   (__tmp153232
                                    (let ((__tmp153236
                                           (let ((__tmp153237
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153237)))
                                          (__tmp153233
                                           (let ((__tmp153234
                                                  (let ((__tmp153235
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor152104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp153235))))
                                             (declare (not safe))
                                             (cons __tmp153234 '()))))
                                      (declare (not safe))
                                      (cons __tmp153236 __tmp153233))))
                               (declare (not safe))
                               (cons __tmp153238 __tmp153232))))
                        (declare (not safe))
                        (cons __tmp153241 __tmp153231))))
                 (declare (not safe))
                 (cons __tmp153243 __tmp153230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153245
                                                        __tmp153229))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153228))))
                                    (declare (not safe))
                                    (cons __tmp153227 '()))))
                             (declare (not safe))
                             (cons __tmp153247 __tmp153226))))
                      (declare (not safe))
                      (cons __tmp153254 __tmp153225))))
               (declare (not safe))
               (cons '%#if __tmp153224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153223 '()))))
                                         (declare (not safe))
                                         (cons __tmp153256 __tmp153222))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp153221))))
                          (__tmp153216
                           (let ((__tmp153217
                                  (let ((__tmp153218
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj152106_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153218))))
                             (declare (not safe))
                             (cons __tmp153217 '()))))
                      (declare (not safe))
                      (cons __tmp153219 __tmp153216))))
               (declare (not safe))
               (cons '%#begin __tmp153215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153214 '()))))
                                         (declare (not safe))
                                         (cons __tmp153280 __tmp153213))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153212))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153211 _stx152089_))))
                     _$e152101_)
                    (let ((_$e152111_
                           (##structure-ref
                            _klass152092_
                            '9
                            gxc#!class::t
                            '#f)))
                      (if _$e152111_
                          ((lambda (_metaclass152114_)
                             (let* ((_$obj152116_
                                     (let ((__tmp153172 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153172)))
                                    (_metakons152118_
                                     (let ((__tmp153173
                                            (let ()
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               _stx152089_
                                               _metaclass152114_))))
                                       (declare (not safe))
                                       (gxc#!class-lookup-method
                                        __tmp153173
                                        'instance-init!))))
                               (let ((__tmp153174
                                      (let ((__tmp153175
                                             (let ((__tmp153206
                                                    (let ((__tmp153207
                                                           (let ((__tmp153209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj152116_ '())))
                         (__tmp153208
                          (let ()
                            (declare (not safe))
                            (cons _inline-make-object152098_ '()))))
                     (declare (not safe))
                     (cons __tmp153209 __tmp153208))))
              (declare (not safe))
              (cons __tmp153207 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153176
                                                    (let ((__tmp153177
                                                           (let ((__tmp153178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153182
                                 (if _metakons152118_
                                     (let ((__tmp153196
                                            (let ((__tmp153204
                                                   (let ((__tmp153205
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _metakons152118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153205)))
                                                  (__tmp153197
                                                   (let ((__tmp153201
                                                          (let ((__tmp153202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153203
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152088_
                                   __id152584
                                   __klass152582
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153203 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153202)))
                 (__tmp153198
                  (let ((__tmp153199
                         (let ((__tmp153200
                                (let ()
                                  (declare (not safe))
                                  (cons _$obj152116_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp153200))))
                    (declare (not safe))
                    (cons __tmp153199 _args152096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153201
                                                           __tmp153198))))
                                              (declare (not safe))
                                              (cons __tmp153204 __tmp153197))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153196))
                                     (let ((__tmp153183
                                            (let ((__tmp153194
                                                   (let ((__tmp153195
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'call-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153195)))
                                                  (__tmp153184
                                                   (let ((__tmp153191
                                                          (let ((__tmp153192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153193
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _self152088_
                                   __id152584
                                   __klass152582
                                   '#f))))
                           (declare (not safe))
                           (cons __tmp153193 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153192)))
                 (__tmp153185
                  (let ((__tmp153189
                         (let ((__tmp153190
                                (let ()
                                  (declare (not safe))
                                  (cons 'instance-init! '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153190)))
                        (__tmp153186
                         (let ((__tmp153187
                                (let ((__tmp153188
                                       (let ()
                                         (declare (not safe))
                                         (cons _$obj152116_ '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153188))))
                           (declare (not safe))
                           (cons __tmp153187 _args152096_))))
                    (declare (not safe))
                    (cons __tmp153189 __tmp153186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153191
                                                           __tmp153185))))
                                              (declare (not safe))
                                              (cons __tmp153194 __tmp153184))))
                                       (declare (not safe))
                                       (cons '%#call __tmp153183))))
                                (__tmp153179
                                 (let ((__tmp153180
                                        (let ((__tmp153181
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$obj152116_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp153181))))
                                   (declare (not safe))
                                   (cons __tmp153180 '()))))
                            (declare (not safe))
                            (cons __tmp153182 __tmp153179))))
                     (declare (not safe))
                     (cons '%#begin __tmp153178))))
              (declare (not safe))
              (cons __tmp153177 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153206
                                                     __tmp153176))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp153175))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153174
                                  _stx152089_))))
                           _$e152111_)
                          (if (##structure-ref
                               _klass152092_
                               '7
                               gxc#!class::t
                               '#f)
                              (if (fx= (length _args152096_) _fields152094_)
                                  (let ((__tmp153164
                                         (let ((__tmp153165
                                                (let ((__tmp153170
                                                       (let ((__tmp153171
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons '##structure '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153171)))
              (__tmp153166
               (let ((__tmp153167
                      (let ((__tmp153168
                             (let ((__tmp153169
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _self152088_
                                       __id152584
                                       __klass152582
                                       '#f))))
                               (declare (not safe))
                               (cons __tmp153169 '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153168))))
                 (declare (not safe))
                 (cons __tmp153167 _args152096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153170
                                                        __tmp153166))))
                                           (declare (not safe))
                                           (cons '%#call __tmp153165))))
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp153164
                                     _stx152089_))
                                  (let ((__tmp153163
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _self152088_
                                            __id152584
                                            __klass152582
                                            '#f)))
                                        (__tmp153162
                                         (length (##structure-ref
                                                  _klass152092_
                                                  '5
                                                  gxc#!class::t
                                                  '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _stx152089_
                                     __tmp153163
                                     __tmp153162)))
                              (let ((_$obj152121_
                                     (let ((__tmp153111 (gensym '__obj)))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp153111))))
                                (let _lp152123_ ((_rest152125_ _args152096_)
                                                 (_initializers152126_ '()))
                                  (let* ((___stx152701152702_ _rest152125_)
                                         (_g152130152151_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               ___stx152701152702_)))))
                                    (let ((___kont152703152704_
                                           (lambda (_L152205_
                                                    _L152206_
                                                    _L152207_)
                                             (let* ((_slot152238_
                                                     (keyword->symbol
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L152207_))))
                                                    (_off152240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass152092_
                                                        _slot152238_))))
                                               (if _off152240_
                                                   (let ((__tmp153113
                                                          (let ((__tmp153114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _off152240_ _L152206_))))
                    (declare (not safe))
                    (cons __tmp153114 _initializers152126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp152123_
                                                      _L152205_
                                                      __tmp153113))
                                                   (let ((__tmp153112
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _self152088_
                                                             __id152584
                                                             __klass152582
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"unknown slot"
                                                      _stx152089_
                                                      __tmp153112
                                                      _slot152238_))))))
                                          (___kont152705152706_
                                           (lambda ()
                                             (let ((__tmp153115
                                                    (let ((__tmp153116
                                                           (let ((__tmp153139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153140
                                 (let ((__tmp153142
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152121_ '())))
                                       (__tmp153141
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152098_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153142 __tmp153141))))
                            (declare (not safe))
                            (cons __tmp153140 '())))
                         (__tmp153117
                          (let ((__tmp153118
                                 (let ((__tmp153119
                                        (let ((__tmp153136
                                               (let ((__tmp153137
                                                      (let ((__tmp153138
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152121_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153137 '())))
                                              (__tmp153120
                                               (let ((__tmp153121
                                                      (lambda (_i152165_
                                                               _r152166_)
                                                        (let ((__tmp153122
                                                               (let ((__tmp153123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153133
                                     (let ((__tmp153134
                                            (let ((__tmp153135
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self152088_
                                                      __id152584
                                                      __klass152582
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153135 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153134)))
                                    (__tmp153124
                                     (let ((__tmp153130
                                            (let ((__tmp153131
                                                   (let ((__tmp153132
                                                          (car _i152165_)))
                                                     (declare (not safe))
                                                     (cons __tmp153132 '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153131)))
                                           (__tmp153125
                                            (let ((__tmp153128
                                                   (let ((__tmp153129
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj152121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153129)))
                                                  (__tmp153126
                                                   (let ((__tmp153127
                                                          (cdr _i152165_)))
                                                     (declare (not safe))
                                                     (cons __tmp153127 '()))))
                                              (declare (not safe))
                                              (cons __tmp153128 __tmp153126))))
                                       (declare (not safe))
                                       (cons __tmp153130 __tmp153125))))
                                (declare (not safe))
                                (cons __tmp153133 __tmp153124))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp153123))))
                  (declare (not safe))
                  (cons __tmp153122 _r152166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl1 __tmp153121
                                                         '()
                                                         _initializers152126_))))
                                          (declare (not safe))
                                          (foldr1 cons
                                                  __tmp153136
                                                  __tmp153120))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153119))))
                            (declare (not safe))
                            (cons __tmp153118 '()))))
                     (declare (not safe))
                     (cons __tmp153139 __tmp153117))))
              (declare (not safe))
              (cons '%#let-values __tmp153116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153115
                                                _stx152089_))))
                                          (___kont152707152708_
                                           (lambda ()
                                             (let ((__tmp153143
                                                    (let ((__tmp153144
                                                           (let ((__tmp153158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153159
                                 (let ((__tmp153161
                                        (let ()
                                          (declare (not safe))
                                          (cons _$obj152121_ '())))
                                       (__tmp153160
                                        (let ()
                                          (declare (not safe))
                                          (cons _inline-make-object152098_
                                                '()))))
                                   (declare (not safe))
                                   (cons __tmp153161 __tmp153160))))
                            (declare (not safe))
                            (cons __tmp153159 '())))
                         (__tmp153145
                          (let ((__tmp153146
                                 (let ((__tmp153147
                                        (let ((__tmp153151
                                               (let ((__tmp153152
                                                      (let ((__tmp153156
                                                             (let ((__tmp153157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons 'class-instance-init! '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp153157)))
                    (__tmp153153
                     (let ((__tmp153154
                            (let ((__tmp153155
                                   (let ()
                                     (declare (not safe))
                                     (cons _$obj152121_ '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153155))))
                       (declare (not safe))
                       (cons __tmp153154 _args152096_))))
                (declare (not safe))
                (cons __tmp153156 __tmp153153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp153152)))
                                              (__tmp153148
                                               (let ((__tmp153149
                                                      (let ((__tmp153150
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj152121_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp153150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153149 '()))))
                                          (declare (not safe))
                                          (cons __tmp153151 __tmp153148))))
                                   (declare (not safe))
                                   (cons '%#begin __tmp153147))))
                            (declare (not safe))
                            (cons __tmp153146 '()))))
                     (declare (not safe))
                     (cons __tmp153158 __tmp153145))))
              (declare (not safe))
              (cons '%#let-values __tmp153144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153143
                                                _stx152089_)))))
                                      (let* ((_g152128152168_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       ___stx152701152702_))
                                                    (___kont152705152706_)
                                                    (___kont152707152708_))))
                                             (___match152738152739_
                                              (lambda (_e152137152173_
                                                       _hd152136152176_
                                                       _tl152135152178_
                                                       _e152140152181_
                                                       _hd152139152184_
                                                       _tl152138152186_
                                                       _e152143152189_
                                                       _hd152142152192_
                                                       _tl152141152194_
                                                       _e152146152197_
                                                       _hd152145152200_
                                                       _tl152144152202_)
                                                (let ((_L152205_
                                                       _tl152144152202_)
                                                      (_L152206_
                                                       _hd152145152200_)
                                                      (_L152207_
                                                       _hd152142152192_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-keyword?
                                                         _L152207_))
                                                      (___kont152703152704_
                                                       _L152205_
                                                       _L152206_
                                                       _L152207_)
                                                      (___kont152707152708_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               ___stx152701152702_))
                                            (let ((_e152137152173_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      ___stx152701152702_))))
                                              (let ((_tl152135152178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e152137152173_)))
                                                    (_hd152136152176_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e152137152173_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd152136152176_))
                                                    (let ((_e152140152181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd152136152176_))))
                                                      (let ((_tl152138152186_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e152140152181_)))
                    (_hd152139152184_
                     (let () (declare (not safe)) (##car _e152140152181_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd152139152184_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd152139152184_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl152138152186_))
                            (let ((_e152143152189_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl152138152186_))))
                              (let ((_tl152141152194_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e152143152189_)))
                                    (_hd152142152192_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e152143152189_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl152141152194_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl152135152178_))
                                        (let ((_e152146152197_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl152135152178_))))
                                          (let ((_tl152144152202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e152146152197_)))
                                                (_hd152145152200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e152146152197_))))
                                            (___match152738152739_
                                             _e152137152173_
                                             _hd152136152176_
                                             _tl152135152178_
                                             _e152140152181_
                                             _hd152139152184_
                                             _tl152138152186_
                                             _e152143152189_
                                             _hd152142152192_
                                             _tl152141152194_
                                             _e152146152197_
                                             _hd152145152200_
                                             _tl152144152202_)))
                                        (___kont152707152708_))
                                    (___kont152707152708_))))
                            (___kont152707152708_))
                        (___kont152707152708_))
                    (___kont152707152708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont152707152708_))))
                                            (let ()
                                              (declare (not safe))
                                              (_g152128152168_))))))))))))))))))
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
      (lambda (_self151911_ _stx151912_ _args151913_)
        (let* ((_g151915151925_
                (lambda (_g151916151922_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151916151922_))))
               (_g151914151963_
                (lambda (_g151916151928_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151916151928_))
                      (let ((_e151920151930_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151916151928_))))
                        (let ((_hd151919151933_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151920151930_)))
                              (_tl151918151935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151920151930_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl151918151935_))
                              ((lambda (_L151938_)
                                 (let* ((_klass151949_
                                         (let ((__tmp153284
                                                (##structure-ref
                                                 _self151911_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx151912_
                                            __tmp153284)))
                                        (_field151951_
                                         (let ((__tmp153285
                                                (##structure-ref
                                                 _self151911_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass151949_
                                            __tmp153285)))
                                        (_object151953_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L151938_))))
                                   (if (##structure-ref
                                        _klass151949_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp153362
                                              (let ((__tmp153371
                                                     (if (##structure-ref
                                                          _self151911_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp153363
                                                     (let ((__tmp153368
                                                            (let ((__tmp153369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153370
                                  (##structure-ref
                                   _self151911_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp153370 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153369)))
                   (__tmp153364
                    (let ((__tmp153366
                           (let ((__tmp153367
                                  (let ()
                                    (declare (not safe))
                                    (cons _field151951_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp153367)))
                          (__tmp153365
                           (let ()
                             (declare (not safe))
                             (cons _object151953_ '()))))
                      (declare (not safe))
                      (cons __tmp153366 __tmp153365))))
               (declare (not safe))
               (cons __tmp153368 __tmp153364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp153371
                                                      __tmp153363))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153362
                                          _stx151912_))
                                       (if (##structure-ref
                                            _klass151949_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153352
                                                  (let ((__tmp153361
                                                         (if (##structure-ref
                                                              _self151911_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp153353
                                                         (let ((__tmp153358
                                                                (let ((__tmp153359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153360
                                      (##structure-ref
                                       _self151911_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp153360 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153359)))
                       (__tmp153354
                        (let ((__tmp153356
                               (let ((__tmp153357
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151951_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153357)))
                              (__tmp153355
                               (let ()
                                 (declare (not safe))
                                 (cons _object151953_ '()))))
                          (declare (not safe))
                          (cons __tmp153356 __tmp153355))))
                   (declare (not safe))
                   (cons __tmp153358 __tmp153354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153361
                                                          __tmp153353))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153352
                                              _stx151912_))
                                           (let ((_$e151956_
                                                  (let ((__tmp153286
                                                         (##structure-ref
                                                          _self151911_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass151949_
                                                     __tmp153286))))
                                             (if _$e151956_
                                                 ((lambda (_klass151959_)
                                                    (let ((__tmp153342
                                                           (let ((__tmp153351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self151911_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp153343
                          (let ((__tmp153348
                                 (let ((__tmp153349
                                        (let ((__tmp153350
                                               (##structure-ref
                                                _self151911_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153350 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp153349)))
                                (__tmp153344
                                 (let ((__tmp153346
                                        (let ((__tmp153347
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field151951_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp153347)))
                                       (__tmp153345
                                        (let ()
                                          (declare (not safe))
                                          (cons _object151953_ '()))))
                                   (declare (not safe))
                                   (cons __tmp153346 __tmp153345))))
                            (declare (not safe))
                            (cons __tmp153348 __tmp153344))))
                     (declare (not safe))
                     (cons __tmp153351 __tmp153343))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp153342 _stx151912_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e151956_)
                                                 (if (##structure-ref
                                                      _self151911_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp153296
                                                            (let* ((_$obj151961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153297 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp153297)))
                           (__tmp153298
                            (let ((__tmp153338
                                   (let ((__tmp153339
                                          (let ((__tmp153341
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj151961_ '())))
                                                (__tmp153340
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object151953_ '()))))
                                            (declare (not safe))
                                            (cons __tmp153341 __tmp153340))))
                                     (declare (not safe))
                                     (cons __tmp153339 '())))
                                  (__tmp153299
                                   (let ((__tmp153300
                                          (let ((__tmp153301
                                                 (let ((__tmp153330
                                                        (let ((__tmp153331
                                                               (let ((__tmp153335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153336
                                     (let ((__tmp153337
                                            (##structure-ref
                                             _klass151949_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp153337 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp153336)))
                             (__tmp153332
                              (let ((__tmp153333
                                     (let ((__tmp153334
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj151961_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153334))))
                                (declare (not safe))
                                (cons __tmp153333 '()))))
                         (declare (not safe))
                         (cons __tmp153335 __tmp153332))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp153331)))
               (__tmp153302
                (let ((__tmp153319
                       (let ((__tmp153320
                              (let ((__tmp153327
                                     (let ((__tmp153328
                                            (let ((__tmp153329
                                                   (##structure-ref
                                                    _self151911_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp153329 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153328)))
                                    (__tmp153321
                                     (let ((__tmp153325
                                            (let ((__tmp153326
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151951_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153326)))
                                           (__tmp153322
                                            (let ((__tmp153323
                                                   (let ((__tmp153324
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj151961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153324))))
                                              (declare (not safe))
                                              (cons __tmp153323 '()))))
                                       (declare (not safe))
                                       (cons __tmp153325 __tmp153322))))
                                (declare (not safe))
                                (cons __tmp153327 __tmp153321))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp153320)))
                      (__tmp153303
                       (let ((__tmp153304
                              (let ((__tmp153305
                                     (let ((__tmp153317
                                            (let ((__tmp153318
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp153318)))
                                           (__tmp153306
                                            (let ((__tmp153314
                                                   (let ((__tmp153315
                                                          (let ((__tmp153316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self151911_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp153316 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp153315)))
                                                  (__tmp153307
                                                   (let ((__tmp153312
                                                          (let ((__tmp153313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj151961_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp153313)))
                 (__tmp153308
                  (let ((__tmp153309
                         (let ((__tmp153310
                                (let ((__tmp153311
                                       (##structure-ref
                                        _self151911_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp153311 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp153310))))
                    (declare (not safe))
                    (cons __tmp153309 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153312
                                                           __tmp153308))))
                                              (declare (not safe))
                                              (cons __tmp153314 __tmp153307))))
                                       (declare (not safe))
                                       (cons __tmp153317 __tmp153306))))
                                (declare (not safe))
                                (cons '%#call __tmp153305))))
                         (declare (not safe))
                         (cons __tmp153304 '()))))
                  (declare (not safe))
                  (cons __tmp153319 __tmp153303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153330
                                                         __tmp153302))))
                                            (declare (not safe))
                                            (cons '%#if __tmp153301))))
                                     (declare (not safe))
                                     (cons __tmp153300 '()))))
                              (declare (not safe))
                              (cons __tmp153338 __tmp153299))))
                      (declare (not safe))
                      (cons '%#let-values __tmp153298))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153296 _stx151912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp153287
                                                            (let ((__tmp153288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153294
                                  (let ((__tmp153295
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp153295)))
                                 (__tmp153289
                                  (let ((__tmp153290
                                         (let ((__tmp153291
                                                (let ((__tmp153292
                                                       (let ((__tmp153293
                                                              (##structure-ref
                                                               _self151911_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp153293
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp153292))))
                                           (declare (not safe))
                                           (cons __tmp153291 '()))))
                                    (declare (not safe))
                                    (cons _object151953_ __tmp153290))))
                             (declare (not safe))
                             (cons __tmp153294 __tmp153289))))
                      (declare (not safe))
                      (cons '%#call __tmp153288))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp153287 _stx151912_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd151919151933_)
                              (let ()
                                (declare (not safe))
                                (_g151915151925_ _g151916151928_)))))
                      (let ()
                        (declare (not safe))
                        (_g151915151925_ _g151916151928_))))))
          (declare (not safe))
          (_g151914151963_ _args151913_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__klass152586 __method-table152587)
        (let ((__slot152588
               (let ((__slot152591
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152586 'slot))))
                 (if __slot152591
                     __slot152591
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152589
               (let ((__slot152592
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152586 'id))))
                 (if __slot152592
                     __slot152592
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?152590
               (let ((__slot152593
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152586 'checked?))))
                 (if __slot152593
                     __slot152593
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self151911_ _stx151912_ _args151913_)
            (let* ((_g151915151925_
                    (lambda (_g151916151922_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151916151922_))))
                   (_g151914151963_
                    (lambda (_g151916151928_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151916151928_))
                          (let ((_e151920151930_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151916151928_))))
                            (let ((_hd151919151933_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151920151930_)))
                                  (_tl151918151935_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151920151930_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl151918151935_))
                                  ((lambda (_L151938_)
                                     (let* ((_klass151949_
                                             (let ((__tmp153372
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151911_
                                                       __id152589
                                                       __klass152586
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx151912_
                                                __tmp153372)))
                                            (_field151951_
                                             (let ((__tmp153373
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self151911_
                                                       __slot152588
                                                       __klass152586
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass151949_
                                                __tmp153373)))
                                            (_object151953_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L151938_))))
                                       (if (##structure-ref
                                            _klass151949_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp153450
                                                  (let ((__tmp153459
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151911_
                        __checked?152590
                        __klass152586
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp153451
                 (let ((__tmp153456
                        (let ((__tmp153457
                               (let ((__tmp153458
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self151911_
                                         __id152589
                                         __klass152586
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp153458 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp153457)))
                       (__tmp153452
                        (let ((__tmp153454
                               (let ((__tmp153455
                                      (let ()
                                        (declare (not safe))
                                        (cons _field151951_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp153455)))
                              (__tmp153453
                               (let ()
                                 (declare (not safe))
                                 (cons _object151953_ '()))))
                          (declare (not safe))
                          (cons __tmp153454 __tmp153453))))
                   (declare (not safe))
                   (cons __tmp153456 __tmp153452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153459
                                                          __tmp153451))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp153450
                                              _stx151912_))
                                           (if (##structure-ref
                                                _klass151949_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153440
                                                      (let ((__tmp153449
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151911_
                            __checked?152590
                            __klass152586
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp153441
                     (let ((__tmp153446
                            (let ((__tmp153447
                                   (let ((__tmp153448
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151911_
                                             __id152589
                                             __klass152586
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp153448 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153447)))
                           (__tmp153442
                            (let ((__tmp153444
                                   (let ((__tmp153445
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151951_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153445)))
                                  (__tmp153443
                                   (let ()
                                     (declare (not safe))
                                     (cons _object151953_ '()))))
                              (declare (not safe))
                              (cons __tmp153444 __tmp153443))))
                       (declare (not safe))
                       (cons __tmp153446 __tmp153442))))
                (declare (not safe))
                (cons __tmp153449 __tmp153441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153440
                                                  _stx151912_))
                                               (let ((_$e151956_
                                                      (let ((__tmp153374
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self151911_
                        __slot152588
                        __klass152586
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass151949_ __tmp153374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e151956_
                                                     ((lambda (_klass151959_)
                                                        (let ((__tmp153430
                                                               (let ((__tmp153439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151911_
                                     __checked?152590
                                     __klass152586
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp153431
                              (let ((__tmp153436
                                     (let ((__tmp153437
                                            (let ((__tmp153438
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151911_
                                                      __id152589
                                                      __klass152586
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153438 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp153437)))
                                    (__tmp153432
                                     (let ((__tmp153434
                                            (let ((__tmp153435
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field151951_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp153435)))
                                           (__tmp153433
                                            (let ()
                                              (declare (not safe))
                                              (cons _object151953_ '()))))
                                       (declare (not safe))
                                       (cons __tmp153434 __tmp153433))))
                                (declare (not safe))
                                (cons __tmp153436 __tmp153432))))
                         (declare (not safe))
                         (cons __tmp153439 __tmp153431))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp153430 _stx151912_)))
              _$e151956_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self151911_
                                                            __checked?152590
                                                            __klass152586
                                                            '#f))
                                                         (let ((__tmp153384
                                                                (let* ((_$obj151961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp153385 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp153385)))
                               (__tmp153386
                                (let ((__tmp153426
                                       (let ((__tmp153427
                                              (let ((__tmp153429
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj151961_
                                                             '())))
                                                    (__tmp153428
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object151953_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp153429
                                                      __tmp153428))))
                                         (declare (not safe))
                                         (cons __tmp153427 '())))
                                      (__tmp153387
                                       (let ((__tmp153388
                                              (let ((__tmp153389
                                                     (let ((__tmp153418
                                                            (let ((__tmp153419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153423
                                  (let ((__tmp153424
                                         (let ((__tmp153425
                                                (##structure-ref
                                                 _klass151949_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp153425 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp153424)))
                                 (__tmp153420
                                  (let ((__tmp153421
                                         (let ((__tmp153422
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj151961_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153422))))
                                    (declare (not safe))
                                    (cons __tmp153421 '()))))
                             (declare (not safe))
                             (cons __tmp153423 __tmp153420))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp153419)))
                   (__tmp153390
                    (let ((__tmp153407
                           (let ((__tmp153408
                                  (let ((__tmp153415
                                         (let ((__tmp153416
                                                (let ((__tmp153417
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self151911_
                                                          __id152589
                                                          __klass152586
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp153417 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153416)))
                                        (__tmp153409
                                         (let ((__tmp153413
                                                (let ((__tmp153414
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151951_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153414)))
                                               (__tmp153410
                                                (let ((__tmp153411
                                                       (let ((__tmp153412
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj151961_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153411 '()))))
                                           (declare (not safe))
                                           (cons __tmp153413 __tmp153410))))
                                    (declare (not safe))
                                    (cons __tmp153415 __tmp153409))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp153408)))
                          (__tmp153391
                           (let ((__tmp153392
                                  (let ((__tmp153393
                                         (let ((__tmp153405
                                                (let ((__tmp153406
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp153406)))
                                               (__tmp153394
                                                (let ((__tmp153402
                                                       (let ((__tmp153403
                                                              (let ((__tmp153404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151911_
                                __id152589
                                __klass152586
                                '#f))))
                        (declare (not safe))
                        (cons __tmp153404 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp153403)))
              (__tmp153395
               (let ((__tmp153400
                      (let ((__tmp153401
                             (let ()
                               (declare (not safe))
                               (cons _$obj151961_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153401)))
                     (__tmp153396
                      (let ((__tmp153397
                             (let ((__tmp153398
                                    (let ((__tmp153399
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self151911_
                                              __slot152588
                                              __klass152586
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp153399 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp153398))))
                        (declare (not safe))
                        (cons __tmp153397 '()))))
                 (declare (not safe))
                 (cons __tmp153400 __tmp153396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp153402
                                                        __tmp153395))))
                                           (declare (not safe))
                                           (cons __tmp153405 __tmp153394))))
                                    (declare (not safe))
                                    (cons '%#call __tmp153393))))
                             (declare (not safe))
                             (cons __tmp153392 '()))))
                      (declare (not safe))
                      (cons __tmp153407 __tmp153391))))
               (declare (not safe))
               (cons __tmp153418 __tmp153390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp153389))))
                                         (declare (not safe))
                                         (cons __tmp153388 '()))))
                                  (declare (not safe))
                                  (cons __tmp153426 __tmp153387))))
                          (declare (not safe))
                          (cons '%#let-values __tmp153386))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153384 _stx151912_))
                 (let ((__tmp153375
                        (let ((__tmp153376
                               (let ((__tmp153382
                                      (let ((__tmp153383
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp153383)))
                                     (__tmp153377
                                      (let ((__tmp153378
                                             (let ((__tmp153379
                                                    (let ((__tmp153380
                                                           (let ((__tmp153381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self151911_
                             __slot152588
                             __klass152586
                             '#f))))
                     (declare (not safe))
                     (cons __tmp153381 '()))))
              (declare (not safe))
              (cons '%#quote __tmp153380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153379 '()))))
                                        (declare (not safe))
                                        (cons _object151953_ __tmp153378))))
                                 (declare (not safe))
                                 (cons __tmp153382 __tmp153377))))
                          (declare (not safe))
                          (cons '%#call __tmp153376))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp153375 _stx151912_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd151919151933_)
                                  (let ()
                                    (declare (not safe))
                                    (_g151915151925_ _g151916151928_)))))
                          (let ()
                            (declare (not safe))
                            (_g151915151925_ _g151916151928_))))))
              (declare (not safe))
              (_g151914151963_ _args151913_))))))
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
      (lambda (_self151716_ _stx151717_ _args151718_)
        (let* ((_g151720151734_
                (lambda (_g151721151731_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g151721151731_))))
               (_g151719151786_
                (lambda (_g151721151737_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g151721151737_))
                      (let ((_e151726151739_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g151721151737_))))
                        (let ((_hd151725151742_
                               (let ()
                                 (declare (not safe))
                                 (##car _e151726151739_)))
                              (_tl151724151744_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e151726151739_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl151724151744_))
                              (let ((_e151729151747_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl151724151744_))))
                                (let ((_hd151728151750_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e151729151747_)))
                                      (_tl151727151752_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e151729151747_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl151727151752_))
                                      ((lambda (_L151755_ _L151756_)
                                         (let* ((_klass151770_
                                                 (let ((__tmp153460
                                                        (##structure-ref
                                                         _self151716_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx151717_
                                                    __tmp153460)))
                                                (_field151772_
                                                 (let ((__tmp153461
                                                        (##structure-ref
                                                         _self151716_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass151770_
                                                    __tmp153461)))
                                                (_object151774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151756_)))
                                                (_value151776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L151755_))))
                                           (if (##structure-ref
                                                _klass151770_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp153543
                                                      (let ((__tmp153553
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self151716_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp153544
                     (let ((__tmp153550
                            (let ((__tmp153551
                                   (let ((__tmp153552
                                          (##structure-ref
                                           _self151716_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp153552 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp153551)))
                           (__tmp153545
                            (let ((__tmp153548
                                   (let ((__tmp153549
                                          (let ()
                                            (declare (not safe))
                                            (cons _field151772_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp153549)))
                                  (__tmp153546
                                   (let ((__tmp153547
                                          (let ()
                                            (declare (not safe))
                                            (cons _value151776_ '()))))
                                     (declare (not safe))
                                     (cons _object151774_ __tmp153547))))
                              (declare (not safe))
                              (cons __tmp153548 __tmp153546))))
                       (declare (not safe))
                       (cons __tmp153550 __tmp153545))))
                (declare (not safe))
                (cons __tmp153553 __tmp153544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp153543
                                                  _stx151717_))
                                               (if (##structure-ref
                                                    _klass151770_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153532
                                                          (let ((__tmp153542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self151716_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153533
                         (let ((__tmp153539
                                (let ((__tmp153540
                                       (let ((__tmp153541
                                              (##structure-ref
                                               _self151716_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp153541 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153540)))
                               (__tmp153534
                                (let ((__tmp153537
                                       (let ((__tmp153538
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151772_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153538)))
                                      (__tmp153535
                                       (let ((__tmp153536
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151776_ '()))))
                                         (declare (not safe))
                                         (cons _object151774_ __tmp153536))))
                                  (declare (not safe))
                                  (cons __tmp153537 __tmp153535))))
                           (declare (not safe))
                           (cons __tmp153539 __tmp153534))))
                    (declare (not safe))
                    (cons __tmp153542 __tmp153533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153532
                                                      _stx151717_))
                                                   (let ((_$e151779_
                                                          (let ((__tmp153462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self151716_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass151770_ __tmp153462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e151779_
                                                         ((lambda (_klass151782_)
                                                            (let ((__tmp153521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153531
                                  (if (##structure-ref
                                       _self151716_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp153522
                                  (let ((__tmp153528
                                         (let ((__tmp153529
                                                (let ((__tmp153530
                                                       (##structure-ref
                                                        _self151716_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp153530 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp153529)))
                                        (__tmp153523
                                         (let ((__tmp153526
                                                (let ((__tmp153527
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field151772_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp153527)))
                                               (__tmp153524
                                                (let ((__tmp153525
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value151776_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object151774_
                                                        __tmp153525))))
                                           (declare (not safe))
                                           (cons __tmp153526 __tmp153524))))
                                    (declare (not safe))
                                    (cons __tmp153528 __tmp153523))))
                             (declare (not safe))
                             (cons __tmp153531 __tmp153522))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp153521 _stx151717_)))
                  _$e151779_)
                 (if (##structure-ref _self151716_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp153473
                            (let* ((_$obj151784_
                                    (let ((__tmp153474 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp153474)))
                                   (__tmp153475
                                    (let ((__tmp153517
                                           (let ((__tmp153518
                                                  (let ((__tmp153520
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj151784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp153519
                 (let () (declare (not safe)) (cons _object151774_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp153520
                                                          __tmp153519))))
                                             (declare (not safe))
                                             (cons __tmp153518 '())))
                                          (__tmp153476
                                           (let ((__tmp153477
                                                  (let ((__tmp153478
                                                         (let ((__tmp153509
                                                                (let ((__tmp153510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp153514
                                      (let ((__tmp153515
                                             (let ((__tmp153516
                                                    (##structure-ref
                                                     _klass151770_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp153516 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp153515)))
                                     (__tmp153511
                                      (let ((__tmp153512
                                             (let ((__tmp153513
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj151784_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153513))))
                                        (declare (not safe))
                                        (cons __tmp153512 '()))))
                                 (declare (not safe))
                                 (cons __tmp153514 __tmp153511))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp153510)))
                       (__tmp153479
                        (let ((__tmp153497
                               (let ((__tmp153498
                                      (let ((__tmp153506
                                             (let ((__tmp153507
                                                    (let ((__tmp153508
                                                           (##structure-ref
                                                            _self151716_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp153508 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153507)))
                                            (__tmp153499
                                             (let ((__tmp153504
                                                    (let ((__tmp153505
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153505)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153500
                                                    (let ((__tmp153502
                                                           (let ((__tmp153503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj151784_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153503)))
                  (__tmp153501
                   (let () (declare (not safe)) (cons _value151776_ '()))))
              (declare (not safe))
              (cons __tmp153502 __tmp153501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153504
                                                     __tmp153500))))
                                        (declare (not safe))
                                        (cons __tmp153506 __tmp153499))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp153498)))
                              (__tmp153480
                               (let ((__tmp153481
                                      (let ((__tmp153482
                                             (let ((__tmp153495
                                                    (let ((__tmp153496
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp153496)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153483
                                                    (let ((__tmp153492
                                                           (let ((__tmp153493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp153494
                                 (##structure-ref
                                  _self151716_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp153494 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp153493)))
                  (__tmp153484
                   (let ((__tmp153490
                          (let ((__tmp153491
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj151784_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp153491)))
                         (__tmp153485
                          (let ((__tmp153487
                                 (let ((__tmp153488
                                        (let ((__tmp153489
                                               (##structure-ref
                                                _self151716_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp153489 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp153488)))
                                (__tmp153486
                                 (let ()
                                   (declare (not safe))
                                   (cons _value151776_ '()))))
                            (declare (not safe))
                            (cons __tmp153487 __tmp153486))))
                     (declare (not safe))
                     (cons __tmp153490 __tmp153485))))
              (declare (not safe))
              (cons __tmp153492 __tmp153484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153495
                                                     __tmp153483))))
                                        (declare (not safe))
                                        (cons '%#call __tmp153482))))
                                 (declare (not safe))
                                 (cons __tmp153481 '()))))
                          (declare (not safe))
                          (cons __tmp153497 __tmp153480))))
                   (declare (not safe))
                   (cons __tmp153509 __tmp153479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp153478))))
                                             (declare (not safe))
                                             (cons __tmp153477 '()))))
                                      (declare (not safe))
                                      (cons __tmp153517 __tmp153476))))
                              (declare (not safe))
                              (cons '%#let-values __tmp153475))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153473 _stx151717_))
                     (let ((__tmp153463
                            (let ((__tmp153464
                                   (let ((__tmp153471
                                          (let ((__tmp153472
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp153472)))
                                         (__tmp153465
                                          (let ((__tmp153466
                                                 (let ((__tmp153468
                                                        (let ((__tmp153469
                                                               (let ((__tmp153470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self151716_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp153470 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153469)))
               (__tmp153467
                (let () (declare (not safe)) (cons _value151776_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153468
                                                         __tmp153467))))
                                            (declare (not safe))
                                            (cons _object151774_
                                                  __tmp153466))))
                                     (declare (not safe))
                                     (cons __tmp153471 __tmp153465))))
                              (declare (not safe))
                              (cons '%#call __tmp153464))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp153463 _stx151717_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd151728151750_
                                       _hd151725151742_)
                                      (let ()
                                        (declare (not safe))
                                        (_g151720151734_ _g151721151737_)))))
                              (let ()
                                (declare (not safe))
                                (_g151720151734_ _g151721151737_)))))
                      (let ()
                        (declare (not safe))
                        (_g151720151734_ _g151721151737_))))))
          (declare (not safe))
          (_g151719151786_ _args151718_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__klass152594 __method-table152595)
        (let ((__checked?152596
               (let ((__slot152599
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152594 'checked?))))
                 (if __slot152599
                     __slot152599
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot152597
               (let ((__slot152600
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152594 'slot))))
                 (if __slot152600
                     __slot152600
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id152598
               (let ((__slot152601
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass152594 'id))))
                 (if __slot152601
                     __slot152601
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self151716_ _stx151717_ _args151718_)
            (let* ((_g151720151734_
                    (lambda (_g151721151731_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g151721151731_))))
                   (_g151719151786_
                    (lambda (_g151721151737_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g151721151737_))
                          (let ((_e151726151739_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g151721151737_))))
                            (let ((_hd151725151742_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e151726151739_)))
                                  (_tl151724151744_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e151726151739_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl151724151744_))
                                  (let ((_e151729151747_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl151724151744_))))
                                    (let ((_hd151728151750_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e151729151747_)))
                                          (_tl151727151752_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e151729151747_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl151727151752_))
                                          ((lambda (_L151755_ _L151756_)
                                             (let* ((_klass151770_
                                                     (let ((__tmp153554
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151716_
                                                               __id152598
                                                               __klass152594
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx151717_
                                                        __tmp153554)))
                                                    (_field151772_
                                                     (let ((__tmp153555
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self151716_
                                                               __slot152597
                                                               __klass152594
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass151770_
                                                        __tmp153555)))
                                                    (_object151774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151756_)))
                                                    (_value151776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L151755_))))
                                               (if (##structure-ref
                                                    _klass151770_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp153637
                                                          (let ((__tmp153647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151716_
                                __checked?152596
                                __klass152594
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp153638
                         (let ((__tmp153644
                                (let ((__tmp153645
                                       (let ((__tmp153646
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self151716_
                                                 __id152598
                                                 __klass152594
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp153646 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp153645)))
                               (__tmp153639
                                (let ((__tmp153642
                                       (let ((__tmp153643
                                              (let ()
                                                (declare (not safe))
                                                (cons _field151772_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp153643)))
                                      (__tmp153640
                                       (let ((__tmp153641
                                              (let ()
                                                (declare (not safe))
                                                (cons _value151776_ '()))))
                                         (declare (not safe))
                                         (cons _object151774_ __tmp153641))))
                                  (declare (not safe))
                                  (cons __tmp153642 __tmp153640))))
                           (declare (not safe))
                           (cons __tmp153644 __tmp153639))))
                    (declare (not safe))
                    (cons __tmp153647 __tmp153638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153637
                                                      _stx151717_))
                                                   (if (##structure-ref
                                                        _klass151770_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp153626
                                                              (let ((__tmp153636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self151716_
                                    __checked?152596
                                    __klass152594
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp153627
                             (let ((__tmp153633
                                    (let ((__tmp153634
                                           (let ((__tmp153635
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self151716_
                                                     __id152598
                                                     __klass152594
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp153635 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153634)))
                                   (__tmp153628
                                    (let ((__tmp153631
                                           (let ((__tmp153632
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field151772_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153632)))
                                          (__tmp153629
                                           (let ((__tmp153630
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value151776_ '()))))
                                             (declare (not safe))
                                             (cons _object151774_
                                                   __tmp153630))))
                                      (declare (not safe))
                                      (cons __tmp153631 __tmp153629))))
                               (declare (not safe))
                               (cons __tmp153633 __tmp153628))))
                        (declare (not safe))
                        (cons __tmp153636 __tmp153627))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp153626 _stx151717_))
               (let ((_$e151779_
                      (let ((__tmp153556
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self151716_
                                __slot152597
                                __klass152594
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass151770_
                         __tmp153556))))
                 (if _$e151779_
                     ((lambda (_klass151782_)
                        (let ((__tmp153615
                               (let ((__tmp153625
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self151716_
                                             __checked?152596
                                             __klass152594
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp153616
                                      (let ((__tmp153622
                                             (let ((__tmp153623
                                                    (let ((__tmp153624
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self151716_
                                                              __id152598
                                                              __klass152594
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp153624 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp153623)))
                                            (__tmp153617
                                             (let ((__tmp153620
                                                    (let ((__tmp153621
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field151772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp153621)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp153618
                                                    (let ((__tmp153619
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value151776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object151774_ __tmp153619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp153620
                                                     __tmp153618))))
                                        (declare (not safe))
                                        (cons __tmp153622 __tmp153617))))
                                 (declare (not safe))
                                 (cons __tmp153625 __tmp153616))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp153615 _stx151717_)))
                      _$e151779_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self151716_
                            __checked?152596
                            __klass152594
                            '#f))
                         (let ((__tmp153567
                                (let* ((_$obj151784_
                                        (let ((__tmp153568 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp153568)))
                                       (__tmp153569
                                        (let ((__tmp153611
                                               (let ((__tmp153612
                                                      (let ((__tmp153614
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj151784_ '())))
                    (__tmp153613
                     (let () (declare (not safe)) (cons _object151774_ '()))))
                (declare (not safe))
                (cons __tmp153614 __tmp153613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153612 '())))
                                              (__tmp153570
                                               (let ((__tmp153571
                                                      (let ((__tmp153572
                                                             (let ((__tmp153603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp153604
                                   (let ((__tmp153608
                                          (let ((__tmp153609
                                                 (let ((__tmp153610
                                                        (##structure-ref
                                                         _klass151770_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp153610 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp153609)))
                                         (__tmp153605
                                          (let ((__tmp153606
                                                 (let ((__tmp153607
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj151784_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153607))))
                                            (declare (not safe))
                                            (cons __tmp153606 '()))))
                                     (declare (not safe))
                                     (cons __tmp153608 __tmp153605))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp153604)))
                           (__tmp153573
                            (let ((__tmp153591
                                   (let ((__tmp153592
                                          (let ((__tmp153600
                                                 (let ((__tmp153601
                                                        (let ((__tmp153602
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self151716_
                          __id152598
                          __klass152594
                          '#f))))
                  (declare (not safe))
                  (cons __tmp153602 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp153601)))
                                                (__tmp153593
                                                 (let ((__tmp153598
                                                        (let ((__tmp153599
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field151772_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp153599)))
               (__tmp153594
                (let ((__tmp153596
                       (let ((__tmp153597
                              (let ()
                                (declare (not safe))
                                (cons _$obj151784_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153597)))
                      (__tmp153595
                       (let () (declare (not safe)) (cons _value151776_ '()))))
                  (declare (not safe))
                  (cons __tmp153596 __tmp153595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153598
                                                         __tmp153594))))
                                            (declare (not safe))
                                            (cons __tmp153600 __tmp153593))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp153592)))
                                  (__tmp153574
                                   (let ((__tmp153575
                                          (let ((__tmp153576
                                                 (let ((__tmp153589
                                                        (let ((__tmp153590
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153590)))
               (__tmp153577
                (let ((__tmp153586
                       (let ((__tmp153587
                              (let ((__tmp153588
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self151716_
                                        __id152598
                                        __klass152594
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp153588 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp153587)))
                      (__tmp153578
                       (let ((__tmp153584
                              (let ((__tmp153585
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj151784_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153585)))
                             (__tmp153579
                              (let ((__tmp153581
                                     (let ((__tmp153582
                                            (let ((__tmp153583
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self151716_
                                                      __slot152597
                                                      __klass152594
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp153583 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153582)))
                                    (__tmp153580
                                     (let ()
                                       (declare (not safe))
                                       (cons _value151776_ '()))))
                                (declare (not safe))
                                (cons __tmp153581 __tmp153580))))
                         (declare (not safe))
                         (cons __tmp153584 __tmp153579))))
                  (declare (not safe))
                  (cons __tmp153586 __tmp153578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153589
                                                         __tmp153577))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153576))))
                                     (declare (not safe))
                                     (cons __tmp153575 '()))))
                              (declare (not safe))
                              (cons __tmp153591 __tmp153574))))
                       (declare (not safe))
                       (cons __tmp153603 __tmp153573))))
                (declare (not safe))
                (cons '%#if __tmp153572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp153571 '()))))
                                          (declare (not safe))
                                          (cons __tmp153611 __tmp153570))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp153569))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp153567 _stx151717_))
                         (let ((__tmp153557
                                (let ((__tmp153558
                                       (let ((__tmp153565
                                              (let ((__tmp153566
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp153566)))
                                             (__tmp153559
                                              (let ((__tmp153560
                                                     (let ((__tmp153562
                                                            (let ((__tmp153563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153564
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self151716_
                                     __slot152597
                                     __klass152594
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp153564 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153563)))
                   (__tmp153561
                    (let () (declare (not safe)) (cons _value151776_ '()))))
               (declare (not safe))
               (cons __tmp153562 __tmp153561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object151774_
                                                      __tmp153560))))
                                         (declare (not safe))
                                         (cons __tmp153565 __tmp153559))))
                                  (declare (not safe))
                                  (cons '%#call __tmp153558))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp153557
                            _stx151717_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd151728151750_
                                           _hd151725151742_)
                                          (let ()
                                            (declare (not safe))
                                            (_g151720151734_
                                             _g151721151737_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g151720151734_ _g151721151737_)))))
                          (let ()
                            (declare (not safe))
                            (_g151720151734_ _g151721151737_))))))
              (declare (not safe))
              (_g151719151786_ _args151718_))))))
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
      (lambda (_self151550_ _stx151551_ _args151552_)
        (let* ((_self151553151562_ _self151550_)
               (_E151555151566_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151553151562_))))
               (_K151556151573_
                (lambda (_inline151569_ _dispatch151570_ _arity151571_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self151550_ _args151552_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx151551_
                         _arity151571_)))
                  (if _inline151569_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp153653
                               (let ((__tmp153654
                                      (_inline151569_ _stx151551_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp153654
                                  _stx151551_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp153653)))
                      (if _dispatch151570_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch151570_))
                            (let ((__tmp153648
                                   (let ((__tmp153649
                                          (let ((__tmp153650
                                                 (let ((__tmp153651
                                                        (let ((__tmp153652
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch151570_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp153652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp153651
                                                         _args151552_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp153650))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp153649
                                      _stx151551_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp153648)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx151551_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151553151562_ 'gxc#!lambda::t))
              (let* ((_e151557151576_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151553151562_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151558151579_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151553151562_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151582_ _e151558151579_)
                     (_e151559151584_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151553151562_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch151587_ _e151559151584_)
                     (_e151560151589_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151553151562_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline151592_ _e151560151589_))
                (declare (not safe))
                (_K151556151573_
                 _inline151592_
                 _dispatch151587_
                 _arity151582_))
              (let () (declare (not safe)) (_E151555151566_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self151389_ _stx151390_ _args151391_)
        (let* ((_self151392151399_ _self151389_)
               (_E151394151403_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151392151399_))))
               (_K151395151417_
                (lambda (_clauses151406_)
                  (let ((_$e151412_
                         (let ((__tmp153655
                                (lambda (_g151407151409_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g151407151409_
                                     _args151391_)))))
                           (declare (not safe))
                           (find __tmp153655 _clauses151406_))))
                    (if _$e151412_
                        ((lambda (_clause151415_)
                           (let ((__method152870
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause151415_
                                     'optimize-call))))
                             (if __method152870
                                 (__method152870
                                  _clause151415_
                                  _stx151390_
                                  _args151391_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _clause151415_
                                          'optimize-call)))))
                         _$e151412_)
                        (let ((__tmp153656
                               (map gxc#!lambda-arity _clauses151406_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx151390_
                           __tmp153656)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151392151399_
                 'gxc#!case-lambda::t))
              (let* ((_e151396151420_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151392151399_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151397151423_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151392151399_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses151426_ _e151397151423_))
                (declare (not safe))
                (_K151395151417_ _clauses151426_))
              (let () (declare (not safe)) (_E151394151403_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self151203_ _args151204_)
        (let* ((_self151205151212_ _self151203_)
               (_E151207151216_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151205151212_))))
               (_K151208151256_
                (lambda (_arity151219_)
                  (let* ((_arity151220151229_ _arity151219_)
                         (_E151223151233_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _arity151220151229_)))))
                    (let ((_K151227151253_
                           (lambda ()
                             (fx= (length _args151204_) _arity151219_)))
                          (_K151224151239_
                           (lambda (_arity151237_)
                             (fx>= (length _args151204_) _arity151237_))))
                      (let ((_try-match151222151249_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity151220151229_))
                                   (let ((_tl151226151244_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity151220151229_)))
                                         (_hd151225151242_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity151220151229_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl151226151244_))
                                         (let ((_arity151247_
                                                _hd151225151242_))
                                           (declare (not safe))
                                           (_K151224151239_ _arity151247_))
                                         (let ()
                                           (declare (not safe))
                                           (_E151223151233_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E151223151233_))))))
                        (if (let ()
                              (declare (not safe))
                              (fixnum? _arity151220151229_))
                            (let () (declare (not safe)) (_K151227151253_))
                            (let ()
                              (declare (not safe))
                              (_try-match151222151249_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self151205151212_ 'gxc#!lambda::t))
              (let* ((_e151209151259_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151205151212_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151210151262_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151205151212_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity151265_ _e151210151262_))
                (declare (not safe))
                (_K151208151256_ _arity151265_))
              (let () (declare (not safe)) (_E151207151216_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self151088_ _stx151089_ _args151090_)
        (let* ((_self151091151099_ _self151088_)
               (_E151093151103_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self151091151099_))))
               (_K151094151187_
                (lambda (_dispatch151106_ _table151107_)
                  (let* ((_g151108151117_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch151106_)))
                         (_else151110151125_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch151106_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx151089_))))
                         (_K151112151171_
                          (lambda (_main151128_ _keys151129_)
                            (let ((_g153657_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx151089_
                                      _args151090_))))
                              (begin
                                (let ((_g153658_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g153657_)
                                             (##vector-length _g153657_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g153658_ 2)))
                                      (error "Context expects 2 values"
                                             _g153658_)))
                                (let ((_pargs151131_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153657_ 0)))
                                      (_kwargs151132_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g153657_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main151128_))
                                    (if _table151107_
                                        (let ((_xargs151139_
                                               (map (lambda (_key151134_)
                                                      (let ((_$e151136_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__0 _key151134_ _kwargs151132_))))
                (if _$e151136_ (values _$e151136_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys151129_)))
                                          (for-each
                                           (lambda (_kw151141_)
                                             (if (memq (car _kw151141_)
                                                       _keys151129_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx151089_
                                                    _keys151129_
                                                    _kw151141_))))
                                           _kwargs151132_)
                                          (let ((__tmp153710
                                                 (let ((__tmp153711
                                                        (let ((__tmp153712
                                                               (let ((__tmp153717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153718
                                     (let ()
                                       (declare (not safe))
                                       (cons _main151128_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp153718)))
                             (__tmp153713
                              (let ((__tmp153715
                                     (let ((__tmp153716
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp153716)))
                                    (__tmp153714
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs151131_
                                               _xargs151139_))))
                                (declare (not safe))
                                (cons __tmp153715 __tmp153714))))
                         (declare (not safe))
                         (cons __tmp153717 __tmp153713))))
                  (declare (not safe))
                  (cons '%#call __tmp153712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153711
                                                    _stx151089_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp153710)))
                                        (let* ((_kwt151143_
                                                (let ((__tmp153659
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp153659)))
                                               (_kwvars151146_
                                                (map (lambda (_g153660_)
                                                       (let ((__tmp153661
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp153661)))
                                                     _kwargs151132_))
                                               (_kwbind151151_
                                                (map (lambda (_kw151148_
                                                              _kwvar151149_)
                                                       (let ((__tmp153664
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar151149_ '())))
                     (__tmp153662
                      (let ((__tmp153663 (cdr _kw151148_)))
                        (declare (not safe))
                        (cons __tmp153663 '()))))
                 (declare (not safe))
                 (cons __tmp153664 __tmp153662)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151132_
                                                     _kwvars151146_))
                                               (_kwset151156_
                                                (map (lambda (_kw151153_
                                                              _kwvar151154_)
                                                       (let ((__tmp153665
                                                              (let ((__tmp153666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp153674
                                    (let ((__tmp153675
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt151143_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp153675)))
                                   (__tmp153667
                                    (let ((__tmp153671
                                           (let ((__tmp153672
                                                  (let ((__tmp153673
                                                         (car _kw151153_)))
                                                    (declare (not safe))
                                                    (cons __tmp153673 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp153672)))
                                          (__tmp153668
                                           (let ((__tmp153669
                                                  (let ((__tmp153670
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar151154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp153670))))
                                             (declare (not safe))
                                             (cons __tmp153669 '()))))
                                      (declare (not safe))
                                      (cons __tmp153671 __tmp153668))))
                               (declare (not safe))
                               (cons __tmp153674 __tmp153667))))
                        (declare (not safe))
                        (cons '(%#ref symbolic-table-set!) __tmp153666))))
                 (declare (not safe))
                 (cons '%#call __tmp153665)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151132_
                                                     _kwvars151146_))
                                               (_xkwargs151161_
                                                (map (lambda (_kw151158_
                                                              _kwvar151159_)
                                                       (let ((__tmp153678
                                                              (car _kw151158_))
                                                             (__tmp153676
                                                              (let ((__tmp153677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar151159_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp153677))))
                 (declare (not safe))
                 (cons __tmp153678 __tmp153676)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs151132_
                                                     _kwvars151146_))
                                               (_xargs151168_
                                                (map (lambda (_key151163_)
                                                       (let ((_$e151165_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq__0 _key151163_ _xkwargs151161_))))
                 (if _$e151165_ (values _$e151165_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys151129_)))
                                          (let ((__tmp153679
                                                 (let ((__tmp153680
                                                        (let ((__tmp153681
                                                               (let ((__tmp153682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp153683
                                     (let ((__tmp153684
                                            (let ((__tmp153698
                                                   (let ((__tmp153699
                                                          (let ((__tmp153709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt151143_ '())))
                        (__tmp153700
                         (let ((__tmp153701
                                (let ((__tmp153702
                                       (let ((__tmp153703
                                              (let ((__tmp153704
                                                     (let ((__tmp153706
                                                            (let ((__tmp153707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp153708 (length _kwargs151132_)))
                             (declare (not safe))
                             (cons __tmp153708 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp153707)))
                   (__tmp153705
                    (let () (declare (not safe)) (cons '(%#quote 0) '()))))
               (declare (not safe))
               (cons __tmp153706 __tmp153705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-symbolic-table)
                                                      __tmp153704))))
                                         (declare (not safe))
                                         (cons '%#call __tmp153703))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp153702
                                   _stx151089_))))
                           (declare (not safe))
                           (cons __tmp153701 '()))))
                    (declare (not safe))
                    (cons __tmp153709 __tmp153700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153699 '())))
                                                  (__tmp153685
                                                   (let ((__tmp153686
                                                          (let ((__tmp153687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp153688
                                (let ((__tmp153689
                                       (let ((__tmp153690
                                              (let ((__tmp153691
                                                     (let ((__tmp153696
                                                            (let ((__tmp153697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main151128_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp153697)))
                   (__tmp153692
                    (let ((__tmp153694
                           (let ((__tmp153695
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt151143_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp153695)))
                          (__tmp153693
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs151131_ _xargs151168_))))
                      (declare (not safe))
                      (cons __tmp153694 __tmp153693))))
               (declare (not safe))
               (cons __tmp153696 __tmp153692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp153691))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp153690
                                          _stx151089_))))
                                  (declare (not safe))
                                  (cons __tmp153689 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp153688 _kwset151156_))))
                    (declare (not safe))
                    (cons '%#begin __tmp153687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp153686 '()))))
                                              (declare (not safe))
                                              (cons __tmp153698 __tmp153685))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp153684))))
                                (declare (not safe))
                                (cons __tmp153683 '()))))
                         (declare (not safe))
                         (cons _kwbind151151_ __tmp153682))))
                  (declare (not safe))
                  (cons '%#let-values __tmp153681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp153680
                                                    _stx151089_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp153679)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g151108151117_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e151113151174_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151108151117_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e151114151177_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151108151117_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys151180_ _e151114151177_)
                               (_e151115151182_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g151108151117_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main151185_ _e151115151182_))
                          (declare (not safe))
                          (_K151112151171_ _main151185_ _keys151180_))
                        (let () (declare (not safe)) (_else151110151125_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self151091151099_
                 'gxc#!kw-lambda::t))
              (let* ((_e151095151190_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151091151099_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e151096151193_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151091151099_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table151196_ _e151096151193_)
                     (_e151097151198_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self151091151099_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch151201_ _e151097151198_))
                (declare (not safe))
                (_K151094151187_ _dispatch151201_ _table151196_))
              (let () (declare (not safe)) (_E151093151103_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx150701_ _args150702_)
        (let _lp150704_ ((_rest150706_ _args150702_)
                         (_pargs150707_ '())
                         (_kwargs150708_ '()))
          (let* ((___stx152752152753_ _rest150706_)
                 (_g150714150766_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx152752152753_)))))
            (let ((___kont152754152755_
                   (lambda (_L150945_ _L150946_)
                     (let ((__tmp153719
                            (let ()
                              (declare (not safe))
                              (cons _L150946_ _pargs150707_))))
                       (declare (not safe))
                       (_lp150704_ _L150945_ __tmp153719 _kwargs150708_))))
                  (___kont152756152757_
                   (lambda (_L150891_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L150891_ _pargs150707_))
                             (reverse _kwargs150708_))))
                  (___kont152758152759_
                   (lambda (_L150838_ _L150839_ _L150840_)
                     (let ((_kw150857_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L150840_))))
                       (if (assq _kw150857_ _kwargs150708_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx150701_
                              _kw150857_))
                           (let ((__tmp153720
                                  (let ((__tmp153721
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw150857_ _L150839_))))
                                    (declare (not safe))
                                    (cons __tmp153721 _kwargs150708_))))
                             (declare (not safe))
                             (_lp150704_
                              _L150838_
                              _pargs150707_
                              __tmp153720))))))
                  (___kont152760152761_
                   (lambda (_L150786_ _L150787_)
                     (let ((__tmp153722
                            (let ()
                              (declare (not safe))
                              (cons _L150787_ _pargs150707_))))
                       (declare (not safe))
                       (_lp150704_ _L150786_ __tmp153722 _kwargs150708_))))
                  (___kont152762152763_
                   (lambda ()
                     (values (reverse _pargs150707_)
                             (reverse _kwargs150708_)))))
              (let* ((_g150713150773_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx152752152753_))
                            (___kont152762152763_)
                            (let () (declare (not safe)) (_g150714150766_)))))
                     (___match152859152860_
                      (lambda (_e150747150806_
                               _hd150746150809_
                               _tl150745150811_
                               _e150750150814_
                               _hd150749150817_
                               _tl150748150819_
                               _e150753150822_
                               _hd150752150825_
                               _tl150751150827_
                               _e150756150830_
                               _hd150755150833_
                               _tl150754150835_)
                        (let ((_L150838_ _tl150754150835_)
                              (_L150839_ _hd150755150833_)
                              (_L150840_ _hd150752150825_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L150840_))
                              (___kont152758152759_
                               _L150838_
                               _L150839_
                               _L150840_)
                              (___kont152760152761_
                               _tl150745150811_
                               _hd150746150809_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx152752152753_))
                    (let ((_e150720150910_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx152752152753_))))
                      (let ((_tl150718150915_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150720150910_)))
                            (_hd150719150913_
                             (let ()
                               (declare (not safe))
                               (##car _e150720150910_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd150719150913_))
                            (let ((_e150723150918_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd150719150913_))))
                              (let ((_tl150721150923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e150723150918_)))
                                    (_hd150722150921_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e150723150918_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd150722150921_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd150722150921_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl150721150923_))
                                            (let ((_e150726150926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl150721150923_))))
                                              (let ((_tl150724150931_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e150726150926_)))
                                                    (_hd150725150929_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e150726150926_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd150725150929_))
                                                    (let ((_e150727150934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd150725150929_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e150727150934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl150724150931_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl150718150915_))
                          (let ((_e150730150937_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl150718150915_))))
                            (let ((_tl150728150942_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e150730150937_)))
                                  (_hd150729150940_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e150730150937_))))
                              (___kont152754152755_
                               _tl150728150942_
                               _hd150729150940_)))
                          (___kont152760152761_
                           _tl150718150915_
                           _hd150719150913_))
                      (___kont152760152761_ _tl150718150915_ _hd150719150913_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e150727150934_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150724150931_))
                          (___kont152756152757_ _tl150718150915_)
                          (___kont152760152761_
                           _tl150718150915_
                           _hd150719150913_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl150724150931_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl150718150915_))
                              (let ((_e150756150830_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl150718150915_))))
                                (let ((_tl150754150835_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e150756150830_)))
                                      (_hd150755150833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e150756150830_))))
                                  (___match152859152860_
                                   _e150720150910_
                                   _hd150719150913_
                                   _tl150718150915_
                                   _e150723150918_
                                   _hd150722150921_
                                   _tl150721150923_
                                   _e150726150926_
                                   _hd150725150929_
                                   _tl150724150931_
                                   _e150756150830_
                                   _hd150755150833_
                                   _tl150754150835_)))
                              (___kont152760152761_
                               _tl150718150915_
                               _hd150719150913_))
                          (___kont152760152761_
                           _tl150718150915_
                           _hd150719150913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl150724150931_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl150718150915_))
                                                            (let ((_e150756150830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl150718150915_))))
                      (let ((_tl150754150835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e150756150830_)))
                            (_hd150755150833_
                             (let ()
                               (declare (not safe))
                               (##car _e150756150830_))))
                        (___match152859152860_
                         _e150720150910_
                         _hd150719150913_
                         _tl150718150915_
                         _e150723150918_
                         _hd150722150921_
                         _tl150721150923_
                         _e150726150926_
                         _hd150725150929_
                         _tl150724150931_
                         _e150756150830_
                         _hd150755150833_
                         _tl150754150835_)))
                    (___kont152760152761_ _tl150718150915_ _hd150719150913_))
                (___kont152760152761_ _tl150718150915_ _hd150719150913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont152760152761_
                                             _tl150718150915_
                                             _hd150719150913_))
                                        (___kont152760152761_
                                         _tl150718150915_
                                         _hd150719150913_))
                                    (___kont152760152761_
                                     _tl150718150915_
                                     _hd150719150913_))))
                            (___kont152760152761_
                             _tl150718150915_
                             _hd150719150913_))))
                    (let () (declare (not safe)) (_g150713150773_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self150697_ _stx150698_ _args150699_)
        (let () (declare (not safe)) (gxc#xform-call% _stx150698_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
