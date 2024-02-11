(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707657576)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274152_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp278911 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274152_ __tmp278911))
           (let ()
             (declare (not safe))
             (table-set! _tbl274152_ '%#call gxc#optimize-call%))
           _tbl274152_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274135_ . _args274137_)
        (let ((__tmp278913
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274137_)
                     (gxc#compile-e__0 _stx274135_)
                     (let ((_arg1274142_ (car _args274137_))
                           (_rest274144_ (cdr _args274137_)))
                       (if (null? _rest274144_)
                           (gxc#compile-e__1 _stx274135_ _arg1274142_)
                           (let ((_arg2274147_ (car _rest274144_))
                                 (_rest274149_ (cdr _rest274144_)))
                             (if (null? _rest274149_)
                                 (gxc#compile-e__2
                                  _stx274135_
                                  _arg1274142_
                                  _arg2274147_)
                                 (apply gxc#compile-e
                                        _stx274135_
                                        _arg1274142_
                                        _arg2274147_
                                        _rest274149_))))))))
              (__tmp278912 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp278913
           gxc#current-compile-methods
           __tmp278912))))
    (define gxc#optimize-call%
      (lambda (_stx273990_)
        (let* ((___stx278661278662_ _stx273990_)
               (_g273993274013_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx278661278662_)))))
          (let ((___kont278663278664_
                 (lambda (_L274057_ _L274058_)
                   (let* ((_rator-id274076_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L274058_)))
                          (_rator-type274078_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id274076_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type274078_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp278914
                                  (##structure-ref
                                   _rator-type274078_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id274076_
                              '" => "
                              _rator-type274078_
                              '" "
                              __tmp278914))
                           (let ((_optimized274081_
                                  (let ((__method278909
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type274078_
                                            'optimize-call))))
                                    (if __method278909
                                        (__method278909
                                         _rator-type274078_
                                         _stx273990_
                                         _L274057_)
                                        (error '"Missing method"
                                               _rator-type274078_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type274078_))
                                 _optimized274081_
                                 (let* ((___stx278643278644_ _optimized274081_)
                                        (_g274084274094_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx278643278644_)))))
                                   (let ((___kont278645278646_
                                          (lambda (_L274114_)
                                            (let ((__tmp278915
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L274114_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp278915
                                               _stx273990_))))
                                         (___kont278647278648_
                                          (lambda () _optimized274081_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx278643278644_))
                                         (let ((_e274089274106_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx278643278644_))))
                                           (let ((_tl274087274111_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e274089274106_)))
                                                 (_hd274088274109_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e274089274106_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd274088274109_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd274088274109_))
                                                     (___kont278645278646_
                                                      _tl274087274111_)
                                                     (___kont278647278648_))
                                                 (___kont278647278648_))))
                                         (___kont278647278648_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type274078_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx273990_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx273990_
                                _rator-type274078_)))))))
                (___kont278665278666_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx273990_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx278661278662_))
                (let ((_e273999274025_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx278661278662_))))
                  (let ((_tl273997274030_
                         (let () (declare (not safe)) (##cdr _e273999274025_)))
                        (_hd273998274028_
                         (let ()
                           (declare (not safe))
                           (##car _e273999274025_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl273997274030_))
                        (let ((_e274002274033_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl273997274030_))))
                          (let ((_tl274000274038_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e274002274033_)))
                                (_hd274001274036_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e274002274033_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd274001274036_))
                                (let ((_e274005274041_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd274001274036_))))
                                  (let ((_tl274003274046_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e274005274041_)))
                                        (_hd274004274044_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e274005274041_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd274004274044_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd274004274044_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl274003274046_))
                                                (let ((_e274008274049_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl274003274046_))))
                                                  (let ((_tl274006274054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e274008274049_)))
                                                        (_hd274007274052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e274008274049_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl274006274054_))
                                                        (___kont278663278664_
                                                         _tl274000274038_
                                                         _hd274007274052_)
                                                        (___kont278665278666_))))
                                                (___kont278665278666_))
                                            (___kont278665278666_))
                                        (___kont278665278666_))))
                                (___kont278665278666_))))
                        (___kont278665278666_))))
                (___kont278665278666_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self273944_ _stx273945_ _args273946_)
        (let* ((_g273948273958_
                (lambda (_g273949273955_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273949273955_))))
               (_g273947273987_
                (lambda (_g273949273961_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273949273961_))
                      (let ((_e273953273963_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273949273961_))))
                        (let ((_hd273952273966_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273953273963_)))
                              (_tl273951273968_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273953273963_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273951273968_))
                              ((lambda (_L273971_)
                                 (let* ((_klass273982_
                                         (let ((__tmp278916
                                                (##structure-ref
                                                 _self273944_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273945_
                                            __tmp278916)))
                                        (_object273984_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273971_))))
                                   (if (##structure-ref
                                        _klass273982_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp278932
                                              (let ((__tmp278933
                                                     (let ((__tmp278935
                                                            (let ((__tmp278936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278937
                                  (##structure-ref
                                   _klass273982_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp278937 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp278936)))
                   (__tmp278934
                    (let () (declare (not safe)) (cons _object273984_ '()))))
               (declare (not safe))
               (cons __tmp278935 __tmp278934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp278933))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp278932
                                          _stx273945_))
                                       (if (##structure-ref
                                            _klass273982_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp278926
                                                  (let ((__tmp278927
                                                         (let ((__tmp278929
                                                                (let ((__tmp278930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp278931
                                      (##structure-ref
                                       _klass273982_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp278931 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp278930)))
                       (__tmp278928
                        (let ()
                          (declare (not safe))
                          (cons _object273984_ '()))))
                   (declare (not safe))
                   (cons __tmp278929 __tmp278928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp278927))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp278926
                                              _stx273945_))
                                           (let ((__tmp278917
                                                  (let ((__tmp278918
                                                         (let ((__tmp278924
                                                                (let ((__tmp278925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp278925)))
                       (__tmp278919
                        (let ((__tmp278921
                               (let ((__tmp278922
                                      (let ((__tmp278923
                                             (##structure-ref
                                              _self273944_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp278923 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp278922)))
                              (__tmp278920
                               (let ()
                                 (declare (not safe))
                                 (cons _object273984_ '()))))
                          (declare (not safe))
                          (cons __tmp278921 __tmp278920))))
                   (declare (not safe))
                   (cons __tmp278924 __tmp278919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp278918))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp278917
                                              _stx273945_))))))
                               _hd273952273966_)
                              (let ()
                                (declare (not safe))
                                (_g273948273958_ _g273949273961_)))))
                      (let ()
                        (declare (not safe))
                        (_g273948273958_ _g273949273961_))))))
          (declare (not safe))
          (_g273947273987_ _args273946_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t278622)
        (let ((__id278623
               (let ((__tmp278624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278622 'id))))
                 (if __tmp278624 __tmp278624 (error '"Unknown slot" 'id)))))
          (lambda (_self273944_ _stx273945_ _args273946_)
            (let* ((_g273948273958_
                    (lambda (_g273949273955_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273949273955_))))
                   (_g273947273987_
                    (lambda (_g273949273961_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273949273961_))
                          (let ((_e273953273963_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273949273961_))))
                            (let ((_hd273952273966_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273953273963_)))
                                  (_tl273951273968_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273953273963_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273951273968_))
                                  ((lambda (_L273971_)
                                     (let* ((_klass273982_
                                             (let ((__tmp278938
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273944_
                                                       __id278623
                                                       __t278622
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273945_
                                                __tmp278938)))
                                            (_object273984_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273971_))))
                                       (if (##structure-ref
                                            _klass273982_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp278954
                                                  (let ((__tmp278955
                                                         (let ((__tmp278957
                                                                (let ((__tmp278958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp278959
                                      (##structure-ref
                                       _klass273982_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp278959 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp278958)))
                       (__tmp278956
                        (let ()
                          (declare (not safe))
                          (cons _object273984_ '()))))
                   (declare (not safe))
                   (cons __tmp278957 __tmp278956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp278955))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp278954
                                              _stx273945_))
                                           (if (##structure-ref
                                                _klass273982_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp278948
                                                      (let ((__tmp278949
                                                             (let ((__tmp278951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp278952
                                   (let ((__tmp278953
                                          (##structure-ref
                                           _klass273982_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp278953 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp278952)))
                           (__tmp278950
                            (let ()
                              (declare (not safe))
                              (cons _object273984_ '()))))
                       (declare (not safe))
                       (cons __tmp278951 __tmp278950))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp278949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp278948
                                                  _stx273945_))
                                               (let ((__tmp278939
                                                      (let ((__tmp278940
                                                             (let ((__tmp278946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp278947
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp278947)))
                           (__tmp278941
                            (let ((__tmp278943
                                   (let ((__tmp278944
                                          (let ((__tmp278945
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self273944_
                                                    __id278623
                                                    __t278622
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp278945 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp278944)))
                                  (__tmp278942
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273984_ '()))))
                              (declare (not safe))
                              (cons __tmp278943 __tmp278942))))
                       (declare (not safe))
                       (cons __tmp278946 __tmp278941))))
                (declare (not safe))
                (cons '%#call __tmp278940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp278939
                                                  _stx273945_))))))
                                   _hd273952273966_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273948273958_ _g273949273961_)))))
                          (let ()
                            (declare (not safe))
                            (_g273948273958_ _g273949273961_))))))
              (declare (not safe))
              (_g273947273987_ _args273946_))))))
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
      (lambda (_self273675_ _stx273676_ _args273677_)
        (let* ((_klass273679_
                (let ((__tmp278960
                       (##structure-ref _self273675_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx273676_ __tmp278960)))
               (_fields273681_
                (length (##structure-ref _klass273679_ '5 gxc#!class::t '#f)))
               (_args273683_ (map gxc#compile-e _args273677_))
               (_inline-make-object273685_
                (let ((__tmp278961
                       (let ((__tmp278967
                              (let ((__tmp278968
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp278968)))
                             (__tmp278962
                              (let ((__tmp278964
                                     (let ((__tmp278965
                                            (let ((__tmp278966
                                                   (##structure-ref
                                                    _self273675_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp278966 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp278965)))
                                    (__tmp278963
                                     (make-list _fields273681_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp278964 __tmp278963))))
                         (declare (not safe))
                         (cons __tmp278967 __tmp278962))))
                  (declare (not safe))
                  (cons '%#call __tmp278961))))
          (let ((_$e273688_
                 (##structure-ref _klass273679_ '6 gxc#!class::t '#f)))
            (if _$e273688_
                ((lambda (_ctor273691_)
                   (let ((_$obj273693_
                          (let ((__tmp279030 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp279030)))
                         (_ctor-impl273694_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass273679_
                             _ctor273691_))))
                     (let ((__tmp279031
                            (let ((__tmp279032
                                   (let ((__tmp279097
                                          (let ((__tmp279098
                                                 (let ((__tmp279100
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273693_
                                                                '())))
                                                       (__tmp279099
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object273685_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp279100
                                                         __tmp279099))))
                                            (declare (not safe))
                                            (cons __tmp279098 '())))
                                         (__tmp279033
                                          (let ((__tmp279034
                                                 (let ((__tmp279035
                                                        (let ((__tmp279039
                                                               (if _ctor-impl273694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279091
                                  (let ((__tmp279095
                                         (let ((__tmp279096
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl273694_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279096)))
                                        (__tmp279092
                                         (let ((__tmp279093
                                                (let ((__tmp279094
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273693_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279094))))
                                           (declare (not safe))
                                           (cons __tmp279093 _args273683_))))
                                    (declare (not safe))
                                    (cons __tmp279095 __tmp279092))))
                             (declare (not safe))
                             (cons '%#call __tmp279091))
                           (let* ((_$ctor273696_
                                   (let ((__tmp279040 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp279040)))
                                  (__tmp279041
                                   (let ((__tmp279076
                                          (let ((__tmp279077
                                                 (let ((__tmp279090
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor273696_
                                                                '())))
                                                       (__tmp279078
                                                        (let ((__tmp279079
                                                               (let ((__tmp279080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279088
                                     (let ((__tmp279089
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279089)))
                                    (__tmp279081
                                     (let ((__tmp279085
                                            (let ((__tmp279086
                                                   (let ((__tmp279087
                                                          (##structure-ref
                                                           _self273675_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp279087 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279086)))
                                           (__tmp279082
                                            (let ((__tmp279083
                                                   (let ((__tmp279084
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor273691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp279084))))
                                              (declare (not safe))
                                              (cons __tmp279083 '()))))
                                       (declare (not safe))
                                       (cons __tmp279085 __tmp279082))))
                                (declare (not safe))
                                (cons __tmp279088 __tmp279081))))
                         (declare (not safe))
                         (cons '%#call __tmp279080))))
                  (declare (not safe))
                  (cons __tmp279079 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279090
                                                         __tmp279078))))
                                            (declare (not safe))
                                            (cons __tmp279077 '())))
                                         (__tmp279042
                                          (let ((__tmp279043
                                                 (let ((__tmp279044
                                                        (let ((__tmp279074
                                                               (let ((__tmp279075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor273696_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279075)))
                      (__tmp279045
                       (let ((__tmp279067
                              (let ((__tmp279068
                                     (let ((__tmp279072
                                            (let ((__tmp279073
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor273696_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279073)))
                                           (__tmp279069
                                            (let ((__tmp279070
                                                   (let ((__tmp279071
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279071))))
                                              (declare (not safe))
                                              (cons __tmp279070
                                                    _args273683_))))
                                       (declare (not safe))
                                       (cons __tmp279072 __tmp279069))))
                                (declare (not safe))
                                (cons '%#call __tmp279068)))
                             (__tmp279046
                              (let ((__tmp279047
                                     (let ((__tmp279048
                                            (let ((__tmp279065
                                                   (let ((__tmp279066
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279066)))
                                                  (__tmp279049
                                                   (let ((__tmp279063
                                                          (let ((__tmp279064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp279064)))
                 (__tmp279050
                  (let ((__tmp279061
                         (let ((__tmp279062
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279062)))
                        (__tmp279051
                         (let ((__tmp279058
                                (let ((__tmp279059
                                       (let ((__tmp279060
                                              (##structure-ref
                                               _self273675_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279060 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279059)))
                               (__tmp279052
                                (let ((__tmp279056
                                       (let ((__tmp279057
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279057)))
                                      (__tmp279053
                                       (let ((__tmp279054
                                              (let ((__tmp279055
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor273691_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp279055))))
                                         (declare (not safe))
                                         (cons __tmp279054 '()))))
                                  (declare (not safe))
                                  (cons __tmp279056 __tmp279053))))
                           (declare (not safe))
                           (cons __tmp279058 __tmp279052))))
                    (declare (not safe))
                    (cons __tmp279061 __tmp279051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279063
                                                           __tmp279050))))
                                              (declare (not safe))
                                              (cons __tmp279065 __tmp279049))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279048))))
                                (declare (not safe))
                                (cons __tmp279047 '()))))
                         (declare (not safe))
                         (cons __tmp279067 __tmp279046))))
                  (declare (not safe))
                  (cons __tmp279074 __tmp279045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp279044))))
                                            (declare (not safe))
                                            (cons __tmp279043 '()))))
                                     (declare (not safe))
                                     (cons __tmp279076 __tmp279042))))
                             (declare (not safe))
                             (cons '%#let-values __tmp279041))))
                      (__tmp279036
                       (let ((__tmp279037
                              (let ((__tmp279038
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273693_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279038))))
                         (declare (not safe))
                         (cons __tmp279037 '()))))
                  (declare (not safe))
                  (cons __tmp279039 __tmp279036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp279035))))
                                            (declare (not safe))
                                            (cons __tmp279034 '()))))
                                     (declare (not safe))
                                     (cons __tmp279097 __tmp279033))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279032))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279031 _stx273676_))))
                 _$e273688_)
                (if (##structure-ref _klass273679_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args273683_) _fields273681_)
                        (let ((__tmp279022
                               (let ((__tmp279023
                                      (let ((__tmp279028
                                             (let ((__tmp279029
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279029)))
                                            (__tmp279024
                                             (let ((__tmp279025
                                                    (let ((__tmp279026
                                                           (let ((__tmp279027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self273675_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp279027 '()))))
              (declare (not safe))
              (cons '%#ref __tmp279026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279025
                                                     _args273683_))))
                                        (declare (not safe))
                                        (cons __tmp279028 __tmp279024))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279023))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279022 _stx273676_))
                        (let ((__tmp279021
                               (##structure-ref
                                _self273675_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp279020
                               (length (##structure-ref
                                        _klass273679_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx273676_
                           __tmp279021
                           __tmp279020)))
                    (let ((_$obj273698_
                           (let ((__tmp278969 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp278969))))
                      (let _lp273700_ ((_rest273702_ _args273683_)
                                       (_initializers273703_ '()))
                        (let* ((___stx278699278700_ _rest273702_)
                               (_g273707273728_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx278699278700_)))))
                          (let ((___kont278701278702_
                                 (lambda (_L273782_ _L273783_ _L273784_)
                                   (let* ((_slot273814_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L273784_))))
                                          (_off273816_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass273679_
                                              _slot273814_))))
                                     (if _off273816_
                                         (let ((__tmp278971
                                                (let ((__tmp278972
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off273816_
                                                               _L273783_))))
                                                  (declare (not safe))
                                                  (cons __tmp278972
                                                        _initializers273703_))))
                                           (declare (not safe))
                                           (_lp273700_ _L273782_ __tmp278971))
                                         (let ((__tmp278970
                                                (##structure-ref
                                                 _self273675_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx273676_
                                            __tmp278970
                                            _slot273814_))))))
                                (___kont278703278704_
                                 (lambda ()
                                   (let ((__tmp278973
                                          (let ((__tmp278974
                                                 (let ((__tmp278997
                                                        (let ((__tmp278998
                                                               (let ((__tmp279000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273698_ '())))
                             (__tmp278999
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273685_ '()))))
                         (declare (not safe))
                         (cons __tmp279000 __tmp278999))))
                  (declare (not safe))
                  (cons __tmp278998 '())))
               (__tmp278975
                (let ((__tmp278976
                       (let ((__tmp278977
                              (let ((__tmp278994
                                     (let ((__tmp278995
                                            (let ((__tmp278996
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273698_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp278996))))
                                       (declare (not safe))
                                       (cons __tmp278995 '())))
                                    (__tmp278978
                                     (let ((__tmp278979
                                            (lambda (_i273742_ _r273743_)
                                              (let ((__tmp278980
                                                     (let ((__tmp278981
                                                            (let ((__tmp278991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278992
                                  (let ((__tmp278993
                                         (##structure-ref
                                          _self273675_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp278993 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp278992)))
                          (__tmp278982
                           (let ((__tmp278988
                                  (let ((__tmp278989
                                         (let ((__tmp278990 (car _i273742_)))
                                           (declare (not safe))
                                           (cons __tmp278990 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp278989)))
                                 (__tmp278983
                                  (let ((__tmp278986
                                         (let ((__tmp278987
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273698_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp278987)))
                                        (__tmp278984
                                         (let ((__tmp278985 (cdr _i273742_)))
                                           (declare (not safe))
                                           (cons __tmp278985 '()))))
                                    (declare (not safe))
                                    (cons __tmp278986 __tmp278984))))
                             (declare (not safe))
                             (cons __tmp278988 __tmp278983))))
                      (declare (not safe))
                      (cons __tmp278991 __tmp278982))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp278981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp278980
                                                      _r273743_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp278979
                                               '()
                                               _initializers273703_))))
                                (declare (not safe))
                                (foldr1 cons __tmp278994 __tmp278978))))
                         (declare (not safe))
                         (cons '%#begin __tmp278977))))
                  (declare (not safe))
                  (cons __tmp278976 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp278997
                                                         __tmp278975))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp278974))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp278973
                                      _stx273676_))))
                                (___kont278705278706_
                                 (lambda ()
                                   (let ((__tmp279001
                                          (let ((__tmp279002
                                                 (let ((__tmp279016
                                                        (let ((__tmp279017
                                                               (let ((__tmp279019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273698_ '())))
                             (__tmp279018
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273685_ '()))))
                         (declare (not safe))
                         (cons __tmp279019 __tmp279018))))
                  (declare (not safe))
                  (cons __tmp279017 '())))
               (__tmp279003
                (let ((__tmp279004
                       (let ((__tmp279005
                              (let ((__tmp279009
                                     (let ((__tmp279010
                                            (let ((__tmp279014
                                                   (let ((__tmp279015
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279015)))
                                                  (__tmp279011
                                                   (let ((__tmp279012
                                                          (let ((__tmp279013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273698_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279012
                                                           _args273683_))))
                                              (declare (not safe))
                                              (cons __tmp279014 __tmp279011))))
                                       (declare (not safe))
                                       (cons '%#call __tmp279010)))
                                    (__tmp279006
                                     (let ((__tmp279007
                                            (let ((__tmp279008
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273698_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279008))))
                                       (declare (not safe))
                                       (cons __tmp279007 '()))))
                                (declare (not safe))
                                (cons __tmp279009 __tmp279006))))
                         (declare (not safe))
                         (cons '%#begin __tmp279005))))
                  (declare (not safe))
                  (cons __tmp279004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279016
                                                         __tmp279003))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp279002))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279001
                                      _stx273676_)))))
                            (let* ((_g273705273745_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx278699278700_))
                                          (___kont278703278704_)
                                          (___kont278705278706_))))
                                   (___match278736278737_
                                    (lambda (_e273714273750_
                                             _hd273713273753_
                                             _tl273712273755_
                                             _e273717273758_
                                             _hd273716273761_
                                             _tl273715273763_
                                             _e273720273766_
                                             _hd273719273769_
                                             _tl273718273771_
                                             _e273723273774_
                                             _hd273722273777_
                                             _tl273721273779_)
                                      (let ((_L273782_ _tl273721273779_)
                                            (_L273783_ _hd273722273777_)
                                            (_L273784_ _hd273719273769_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L273784_))
                                            (___kont278701278702_
                                             _L273782_
                                             _L273783_
                                             _L273784_)
                                            (___kont278705278706_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx278699278700_))
                                  (let ((_e273714273750_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx278699278700_))))
                                    (let ((_tl273712273755_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273714273750_)))
                                          (_hd273713273753_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273714273750_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd273713273753_))
                                          (let ((_e273717273758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd273713273753_))))
                                            (let ((_tl273715273763_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e273717273758_)))
                                                  (_hd273716273761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e273717273758_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd273716273761_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd273716273761_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl273715273763_))
                                                          (let ((_e273720273766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl273715273763_))))
                    (let ((_tl273718273771_
                           (let ()
                             (declare (not safe))
                             (##cdr _e273720273766_)))
                          (_hd273719273769_
                           (let ()
                             (declare (not safe))
                             (##car _e273720273766_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl273718273771_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273712273755_))
                              (let ((_e273723273774_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273712273755_))))
                                (let ((_tl273721273779_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273723273774_)))
                                      (_hd273722273777_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273723273774_))))
                                  (___match278736278737_
                                   _e273714273750_
                                   _hd273713273753_
                                   _tl273712273755_
                                   _e273717273758_
                                   _hd273716273761_
                                   _tl273715273763_
                                   _e273720273766_
                                   _hd273719273769_
                                   _tl273718273771_
                                   _e273723273774_
                                   _hd273722273777_
                                   _tl273721273779_)))
                              (___kont278705278706_))
                          (___kont278705278706_))))
                  (___kont278705278706_))
              (___kont278705278706_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont278705278706_))))
                                          (___kont278705278706_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273705273745_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t278625)
        (let ((__id278626
               (let ((__tmp278627
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278625 'id))))
                 (if __tmp278627 __tmp278627 (error '"Unknown slot" 'id)))))
          (lambda (_self273675_ _stx273676_ _args273677_)
            (let* ((_klass273679_
                    (let ((__tmp279101
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self273675_
                              __id278626
                              __t278625
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx273676_ __tmp279101)))
                   (_fields273681_
                    (length (##structure-ref
                             _klass273679_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args273683_ (map gxc#compile-e _args273677_))
                   (_inline-make-object273685_
                    (let ((__tmp279102
                           (let ((__tmp279108
                                  (let ((__tmp279109
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279109)))
                                 (__tmp279103
                                  (let ((__tmp279105
                                         (let ((__tmp279106
                                                (let ((__tmp279107
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273675_
                                                          __id278626
                                                          __t278625
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279107 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279106)))
                                        (__tmp279104
                                         (make-list
                                          _fields273681_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp279105 __tmp279104))))
                             (declare (not safe))
                             (cons __tmp279108 __tmp279103))))
                      (declare (not safe))
                      (cons '%#call __tmp279102))))
              (let ((_$e273688_
                     (##structure-ref _klass273679_ '6 gxc#!class::t '#f)))
                (if _$e273688_
                    ((lambda (_ctor273691_)
                       (let ((_$obj273693_
                              (let ((__tmp279171 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279171)))
                             (_ctor-impl273694_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass273679_
                                 _ctor273691_))))
                         (let ((__tmp279172
                                (let ((__tmp279173
                                       (let ((__tmp279238
                                              (let ((__tmp279239
                                                     (let ((__tmp279241
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj273693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279240
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object273685_ '()))))
               (declare (not safe))
               (cons __tmp279241 __tmp279240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279239 '())))
                                             (__tmp279174
                                              (let ((__tmp279175
                                                     (let ((__tmp279176
                                                            (let ((__tmp279180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl273694_
                               (let ((__tmp279232
                                      (let ((__tmp279236
                                             (let ((__tmp279237
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl273694_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279237)))
                                            (__tmp279233
                                             (let ((__tmp279234
                                                    (let ((__tmp279235
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj273693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279234
                                                     _args273683_))))
                                        (declare (not safe))
                                        (cons __tmp279236 __tmp279233))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279232))
                               (let* ((_$ctor273696_
                                       (let ((__tmp279181
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279181)))
                                      (__tmp279182
                                       (let ((__tmp279217
                                              (let ((__tmp279218
                                                     (let ((__tmp279231
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor273696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279219
                    (let ((__tmp279220
                           (let ((__tmp279221
                                  (let ((__tmp279229
                                         (let ((__tmp279230
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279230)))
                                        (__tmp279222
                                         (let ((__tmp279226
                                                (let ((__tmp279227
                                                       (let ((__tmp279228
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self273675_
                         __id278626
                         __t278625
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279228 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279227)))
                                               (__tmp279223
                                                (let ((__tmp279224
                                                       (let ((__tmp279225
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor273691_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp279225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279224 '()))))
                                           (declare (not safe))
                                           (cons __tmp279226 __tmp279223))))
                                    (declare (not safe))
                                    (cons __tmp279229 __tmp279222))))
                             (declare (not safe))
                             (cons '%#call __tmp279221))))
                      (declare (not safe))
                      (cons __tmp279220 '()))))
               (declare (not safe))
               (cons __tmp279231 __tmp279219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279218 '())))
                                             (__tmp279183
                                              (let ((__tmp279184
                                                     (let ((__tmp279185
                                                            (let ((__tmp279215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279216
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor273696_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279216)))
                          (__tmp279186
                           (let ((__tmp279208
                                  (let ((__tmp279209
                                         (let ((__tmp279213
                                                (let ((__tmp279214
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor273696_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279214)))
                                               (__tmp279210
                                                (let ((__tmp279211
                                                       (let ((__tmp279212
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273693_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279212))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279211
                                                        _args273683_))))
                                           (declare (not safe))
                                           (cons __tmp279213 __tmp279210))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279209)))
                                 (__tmp279187
                                  (let ((__tmp279188
                                         (let ((__tmp279189
                                                (let ((__tmp279206
                                                       (let ((__tmp279207
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279207)))
              (__tmp279190
               (let ((__tmp279204
                      (let ((__tmp279205
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279205)))
                     (__tmp279191
                      (let ((__tmp279202
                             (let ((__tmp279203
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279203)))
                            (__tmp279192
                             (let ((__tmp279199
                                    (let ((__tmp279200
                                           (let ((__tmp279201
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273675_
                                                     __id278626
                                                     __t278625
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279201 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279200)))
                                   (__tmp279193
                                    (let ((__tmp279197
                                           (let ((__tmp279198
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279198)))
                                          (__tmp279194
                                           (let ((__tmp279195
                                                  (let ((__tmp279196
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor273691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279196))))
                                             (declare (not safe))
                                             (cons __tmp279195 '()))))
                                      (declare (not safe))
                                      (cons __tmp279197 __tmp279194))))
                               (declare (not safe))
                               (cons __tmp279199 __tmp279193))))
                        (declare (not safe))
                        (cons __tmp279202 __tmp279192))))
                 (declare (not safe))
                 (cons __tmp279204 __tmp279191))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279206
                                                        __tmp279190))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279189))))
                                    (declare (not safe))
                                    (cons __tmp279188 '()))))
                             (declare (not safe))
                             (cons __tmp279208 __tmp279187))))
                      (declare (not safe))
                      (cons __tmp279215 __tmp279186))))
               (declare (not safe))
               (cons '%#if __tmp279185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279184 '()))))
                                         (declare (not safe))
                                         (cons __tmp279217 __tmp279183))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279182))))
                          (__tmp279177
                           (let ((__tmp279178
                                  (let ((__tmp279179
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj273693_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279179))))
                             (declare (not safe))
                             (cons __tmp279178 '()))))
                      (declare (not safe))
                      (cons __tmp279180 __tmp279177))))
               (declare (not safe))
               (cons '%#begin __tmp279176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279175 '()))))
                                         (declare (not safe))
                                         (cons __tmp279238 __tmp279174))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279173))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279172 _stx273676_))))
                     _$e273688_)
                    (if (##structure-ref _klass273679_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args273683_) _fields273681_)
                            (let ((__tmp279163
                                   (let ((__tmp279164
                                          (let ((__tmp279169
                                                 (let ((__tmp279170
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279170)))
                                                (__tmp279165
                                                 (let ((__tmp279166
                                                        (let ((__tmp279167
                                                               (let ((__tmp279168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self273675_
                                 __id278626
                                 __t278625
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp279168 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279166
                                                         _args273683_))))
                                            (declare (not safe))
                                            (cons __tmp279169 __tmp279165))))
                                     (declare (not safe))
                                     (cons '%#call __tmp279164))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp279163 _stx273676_))
                            (let ((__tmp279162
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self273675_
                                      __id278626
                                      __t278625
                                      '#f)))
                                  (__tmp279161
                                   (length (##structure-ref
                                            _klass273679_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx273676_
                               __tmp279162
                               __tmp279161)))
                        (let ((_$obj273698_
                               (let ((__tmp279110 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp279110))))
                          (let _lp273700_ ((_rest273702_ _args273683_)
                                           (_initializers273703_ '()))
                            (let* ((___stx278741278742_ _rest273702_)
                                   (_g273707273728_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx278741278742_)))))
                              (let ((___kont278743278744_
                                     (lambda (_L273782_ _L273783_ _L273784_)
                                       (let* ((_slot273814_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L273784_))))
                                              (_off273816_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass273679_
                                                  _slot273814_))))
                                         (if _off273816_
                                             (let ((__tmp279112
                                                    (let ((__tmp279113
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off273816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L273783_))))
              (declare (not safe))
              (cons __tmp279113 _initializers273703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp273700_
                                                _L273782_
                                                __tmp279112))
                                             (let ((__tmp279111
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273675_
                                                       __id278626
                                                       __t278625
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx273676_
                                                __tmp279111
                                                _slot273814_))))))
                                    (___kont278745278746_
                                     (lambda ()
                                       (let ((__tmp279114
                                              (let ((__tmp279115
                                                     (let ((__tmp279138
                                                            (let ((__tmp279139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279141
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273698_ '())))
                                 (__tmp279140
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273685_ '()))))
                             (declare (not safe))
                             (cons __tmp279141 __tmp279140))))
                      (declare (not safe))
                      (cons __tmp279139 '())))
                   (__tmp279116
                    (let ((__tmp279117
                           (let ((__tmp279118
                                  (let ((__tmp279135
                                         (let ((__tmp279136
                                                (let ((__tmp279137
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273698_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279137))))
                                           (declare (not safe))
                                           (cons __tmp279136 '())))
                                        (__tmp279119
                                         (let ((__tmp279120
                                                (lambda (_i273742_ _r273743_)
                                                  (let ((__tmp279121
                                                         (let ((__tmp279122
                                                                (let ((__tmp279132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279133
                                      (let ((__tmp279134
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self273675_
                                                __id278626
                                                __t278625
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp279134 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279133)))
                              (__tmp279123
                               (let ((__tmp279129
                                      (let ((__tmp279130
                                             (let ((__tmp279131
                                                    (car _i273742_)))
                                               (declare (not safe))
                                               (cons __tmp279131 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279130)))
                                     (__tmp279124
                                      (let ((__tmp279127
                                             (let ((__tmp279128
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273698_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279128)))
                                            (__tmp279125
                                             (let ((__tmp279126
                                                    (cdr _i273742_)))
                                               (declare (not safe))
                                               (cons __tmp279126 '()))))
                                        (declare (not safe))
                                        (cons __tmp279127 __tmp279125))))
                                 (declare (not safe))
                                 (cons __tmp279129 __tmp279124))))
                          (declare (not safe))
                          (cons __tmp279132 __tmp279123))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp279122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279121
                                                          _r273743_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp279120
                                                   '()
                                                   _initializers273703_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp279135 __tmp279119))))
                             (declare (not safe))
                             (cons '%#begin __tmp279118))))
                      (declare (not safe))
                      (cons __tmp279117 '()))))
               (declare (not safe))
               (cons __tmp279138 __tmp279116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279115))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279114
                                          _stx273676_))))
                                    (___kont278747278748_
                                     (lambda ()
                                       (let ((__tmp279142
                                              (let ((__tmp279143
                                                     (let ((__tmp279157
                                                            (let ((__tmp279158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279160
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273698_ '())))
                                 (__tmp279159
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273685_ '()))))
                             (declare (not safe))
                             (cons __tmp279160 __tmp279159))))
                      (declare (not safe))
                      (cons __tmp279158 '())))
                   (__tmp279144
                    (let ((__tmp279145
                           (let ((__tmp279146
                                  (let ((__tmp279150
                                         (let ((__tmp279151
                                                (let ((__tmp279155
                                                       (let ((__tmp279156
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279156)))
              (__tmp279152
               (let ((__tmp279153
                      (let ((__tmp279154
                             (let ()
                               (declare (not safe))
                               (cons _$obj273698_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279154))))
                 (declare (not safe))
                 (cons __tmp279153 _args273683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279155
                                                        __tmp279152))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279151)))
                                        (__tmp279147
                                         (let ((__tmp279148
                                                (let ((__tmp279149
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273698_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279149))))
                                           (declare (not safe))
                                           (cons __tmp279148 '()))))
                                    (declare (not safe))
                                    (cons __tmp279150 __tmp279147))))
                             (declare (not safe))
                             (cons '%#begin __tmp279146))))
                      (declare (not safe))
                      (cons __tmp279145 '()))))
               (declare (not safe))
               (cons __tmp279157 __tmp279144))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279143))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279142
                                          _stx273676_)))))
                                (let* ((_g273705273745_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx278741278742_))
                                              (___kont278745278746_)
                                              (___kont278747278748_))))
                                       (___match278778278779_
                                        (lambda (_e273714273750_
                                                 _hd273713273753_
                                                 _tl273712273755_
                                                 _e273717273758_
                                                 _hd273716273761_
                                                 _tl273715273763_
                                                 _e273720273766_
                                                 _hd273719273769_
                                                 _tl273718273771_
                                                 _e273723273774_
                                                 _hd273722273777_
                                                 _tl273721273779_)
                                          (let ((_L273782_ _tl273721273779_)
                                                (_L273783_ _hd273722273777_)
                                                (_L273784_ _hd273719273769_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L273784_))
                                                (___kont278743278744_
                                                 _L273782_
                                                 _L273783_
                                                 _L273784_)
                                                (___kont278747278748_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx278741278742_))
                                      (let ((_e273714273750_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx278741278742_))))
                                        (let ((_tl273712273755_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e273714273750_)))
                                              (_hd273713273753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e273714273750_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd273713273753_))
                                              (let ((_e273717273758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd273713273753_))))
                                                (let ((_tl273715273763_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e273717273758_)))
                                                      (_hd273716273761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e273717273758_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd273716273761_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd273716273761_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl273715273763_))
                      (let ((_e273720273766_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl273715273763_))))
                        (let ((_tl273718273771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273720273766_)))
                              (_hd273719273769_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273720273766_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273718273771_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273712273755_))
                                  (let ((_e273723273774_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273712273755_))))
                                    (let ((_tl273721273779_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273723273774_)))
                                          (_hd273722273777_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273723273774_))))
                                      (___match278778278779_
                                       _e273714273750_
                                       _hd273713273753_
                                       _tl273712273755_
                                       _e273717273758_
                                       _hd273716273761_
                                       _tl273715273763_
                                       _e273720273766_
                                       _hd273719273769_
                                       _tl273718273771_
                                       _e273723273774_
                                       _hd273722273777_
                                       _tl273721273779_)))
                                  (___kont278747278748_))
                              (___kont278747278748_))))
                      (___kont278747278748_))
                  (___kont278747278748_))
              (___kont278747278748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont278747278748_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g273705273745_))))))))))))))))
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
      (lambda (_self273498_ _stx273499_ _args273500_)
        (let* ((_g273502273512_
                (lambda (_g273503273509_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273503273509_))))
               (_g273501273550_
                (lambda (_g273503273515_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273503273515_))
                      (let ((_e273507273517_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273503273515_))))
                        (let ((_hd273506273520_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273507273517_)))
                              (_tl273505273522_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273507273517_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273505273522_))
                              ((lambda (_L273525_)
                                 (let* ((_klass273536_
                                         (let ((__tmp279242
                                                (##structure-ref
                                                 _self273498_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273499_
                                            __tmp279242)))
                                        (_field273538_
                                         (let ((__tmp279243
                                                (##structure-ref
                                                 _self273498_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass273536_
                                            __tmp279243)))
                                        (_object273540_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273525_))))
                                   (if (##structure-ref
                                        _klass273536_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279320
                                              (let ((__tmp279329
                                                     (if (##structure-ref
                                                          _self273498_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp279321
                                                     (let ((__tmp279326
                                                            (let ((__tmp279327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279328
                                  (##structure-ref
                                   _self273498_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279328 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279327)))
                   (__tmp279322
                    (let ((__tmp279324
                           (let ((__tmp279325
                                  (let ()
                                    (declare (not safe))
                                    (cons _field273538_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279325)))
                          (__tmp279323
                           (let ()
                             (declare (not safe))
                             (cons _object273540_ '()))))
                      (declare (not safe))
                      (cons __tmp279324 __tmp279323))))
               (declare (not safe))
               (cons __tmp279326 __tmp279322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279329
                                                      __tmp279321))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279320
                                          _stx273499_))
                                       (if (##structure-ref
                                            _klass273536_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279310
                                                  (let ((__tmp279319
                                                         (if (##structure-ref
                                                              _self273498_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp279311
                                                         (let ((__tmp279316
                                                                (let ((__tmp279317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279318
                                      (##structure-ref
                                       _self273498_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279318 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279317)))
                       (__tmp279312
                        (let ((__tmp279314
                               (let ((__tmp279315
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273538_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279315)))
                              (__tmp279313
                               (let ()
                                 (declare (not safe))
                                 (cons _object273540_ '()))))
                          (declare (not safe))
                          (cons __tmp279314 __tmp279313))))
                   (declare (not safe))
                   (cons __tmp279316 __tmp279312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279319
                                                          __tmp279311))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279310
                                              _stx273499_))
                                           (let ((_$e273543_
                                                  (let ((__tmp279244
                                                         (##structure-ref
                                                          _self273498_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass273536_
                                                     __tmp279244))))
                                             (if _$e273543_
                                                 ((lambda (_klass273546_)
                                                    (let ((__tmp279300
                                                           (let ((__tmp279309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self273498_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279301
                          (let ((__tmp279306
                                 (let ((__tmp279307
                                        (let ((__tmp279308
                                               (##structure-ref
                                                _self273498_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279308 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279307)))
                                (__tmp279302
                                 (let ((__tmp279304
                                        (let ((__tmp279305
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field273538_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279305)))
                                       (__tmp279303
                                        (let ()
                                          (declare (not safe))
                                          (cons _object273540_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279304 __tmp279303))))
                            (declare (not safe))
                            (cons __tmp279306 __tmp279302))))
                     (declare (not safe))
                     (cons __tmp279309 __tmp279301))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279300 _stx273499_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e273543_)
                                                 (if (##structure-ref
                                                      _self273498_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp279254
                                                            (let* ((_$obj273548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279255 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279255)))
                           (__tmp279256
                            (let ((__tmp279296
                                   (let ((__tmp279297
                                          (let ((__tmp279299
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj273548_ '())))
                                                (__tmp279298
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object273540_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279299 __tmp279298))))
                                     (declare (not safe))
                                     (cons __tmp279297 '())))
                                  (__tmp279257
                                   (let ((__tmp279258
                                          (let ((__tmp279259
                                                 (let ((__tmp279288
                                                        (let ((__tmp279289
                                                               (let ((__tmp279293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279294
                                     (let ((__tmp279295
                                            (##structure-ref
                                             _klass273536_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp279295 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279294)))
                             (__tmp279290
                              (let ((__tmp279291
                                     (let ((__tmp279292
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj273548_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279292))))
                                (declare (not safe))
                                (cons __tmp279291 '()))))
                         (declare (not safe))
                         (cons __tmp279293 __tmp279290))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279289)))
               (__tmp279260
                (let ((__tmp279277
                       (let ((__tmp279278
                              (let ((__tmp279285
                                     (let ((__tmp279286
                                            (let ((__tmp279287
                                                   (##structure-ref
                                                    _self273498_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279287 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279286)))
                                    (__tmp279279
                                     (let ((__tmp279283
                                            (let ((__tmp279284
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273538_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279284)))
                                           (__tmp279280
                                            (let ((__tmp279281
                                                   (let ((__tmp279282
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279282))))
                                              (declare (not safe))
                                              (cons __tmp279281 '()))))
                                       (declare (not safe))
                                       (cons __tmp279283 __tmp279280))))
                                (declare (not safe))
                                (cons __tmp279285 __tmp279279))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279278)))
                      (__tmp279261
                       (let ((__tmp279262
                              (let ((__tmp279263
                                     (let ((__tmp279275
                                            (let ((__tmp279276
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279276)))
                                           (__tmp279264
                                            (let ((__tmp279272
                                                   (let ((__tmp279273
                                                          (let ((__tmp279274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self273498_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp279274 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279273)))
                                                  (__tmp279265
                                                   (let ((__tmp279270
                                                          (let ((__tmp279271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273548_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279271)))
                 (__tmp279266
                  (let ((__tmp279267
                         (let ((__tmp279268
                                (let ((__tmp279269
                                       (##structure-ref
                                        _self273498_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp279269 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279268))))
                    (declare (not safe))
                    (cons __tmp279267 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279270
                                                           __tmp279266))))
                                              (declare (not safe))
                                              (cons __tmp279272 __tmp279265))))
                                       (declare (not safe))
                                       (cons __tmp279275 __tmp279264))))
                                (declare (not safe))
                                (cons '%#call __tmp279263))))
                         (declare (not safe))
                         (cons __tmp279262 '()))))
                  (declare (not safe))
                  (cons __tmp279277 __tmp279261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279288
                                                         __tmp279260))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279259))))
                                     (declare (not safe))
                                     (cons __tmp279258 '()))))
                              (declare (not safe))
                              (cons __tmp279296 __tmp279257))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279256))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279254 _stx273499_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279245
                                                            (let ((__tmp279246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279252
                                  (let ((__tmp279253
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279253)))
                                 (__tmp279247
                                  (let ((__tmp279248
                                         (let ((__tmp279249
                                                (let ((__tmp279250
                                                       (let ((__tmp279251
                                                              (##structure-ref
                                                               _self273498_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp279251
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279250))))
                                           (declare (not safe))
                                           (cons __tmp279249 '()))))
                                    (declare (not safe))
                                    (cons _object273540_ __tmp279248))))
                             (declare (not safe))
                             (cons __tmp279252 __tmp279247))))
                      (declare (not safe))
                      (cons '%#call __tmp279246))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279245 _stx273499_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd273506273520_)
                              (let ()
                                (declare (not safe))
                                (_g273502273512_ _g273503273515_)))))
                      (let ()
                        (declare (not safe))
                        (_g273502273512_ _g273503273515_))))))
          (declare (not safe))
          (_g273501273550_ _args273500_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t278628)
        (let ((__id278629
               (let ((__tmp278632
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278628 'id))))
                 (if __tmp278632 __tmp278632 (error '"Unknown slot" 'id))))
              (__checked?278630
               (let ((__tmp278633
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278628 'checked?))))
                 (if __tmp278633
                     __tmp278633
                     (error '"Unknown slot" 'checked?))))
              (__slot278631
               (let ((__tmp278634
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278628 'slot))))
                 (if __tmp278634 __tmp278634 (error '"Unknown slot" 'slot)))))
          (lambda (_self273498_ _stx273499_ _args273500_)
            (let* ((_g273502273512_
                    (lambda (_g273503273509_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273503273509_))))
                   (_g273501273550_
                    (lambda (_g273503273515_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273503273515_))
                          (let ((_e273507273517_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273503273515_))))
                            (let ((_hd273506273520_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273507273517_)))
                                  (_tl273505273522_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273507273517_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273505273522_))
                                  ((lambda (_L273525_)
                                     (let* ((_klass273536_
                                             (let ((__tmp279330
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273498_
                                                       __id278629
                                                       __t278628
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273499_
                                                __tmp279330)))
                                            (_field273538_
                                             (let ((__tmp279331
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273498_
                                                       __slot278631
                                                       __t278628
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass273536_
                                                __tmp279331)))
                                            (_object273540_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273525_))))
                                       (if (##structure-ref
                                            _klass273536_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279408
                                                  (let ((__tmp279417
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273498_
                        __checked?278630
                        __t278628
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279409
                 (let ((__tmp279414
                        (let ((__tmp279415
                               (let ((__tmp279416
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self273498_
                                         __id278629
                                         __t278628
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279416 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279415)))
                       (__tmp279410
                        (let ((__tmp279412
                               (let ((__tmp279413
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273538_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279413)))
                              (__tmp279411
                               (let ()
                                 (declare (not safe))
                                 (cons _object273540_ '()))))
                          (declare (not safe))
                          (cons __tmp279412 __tmp279411))))
                   (declare (not safe))
                   (cons __tmp279414 __tmp279410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279417
                                                          __tmp279409))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279408
                                              _stx273499_))
                                           (if (##structure-ref
                                                _klass273536_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279398
                                                      (let ((__tmp279407
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273498_
                            __checked?278630
                            __t278628
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279399
                     (let ((__tmp279404
                            (let ((__tmp279405
                                   (let ((__tmp279406
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273498_
                                             __id278629
                                             __t278628
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279406 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279405)))
                           (__tmp279400
                            (let ((__tmp279402
                                   (let ((__tmp279403
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273538_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279403)))
                                  (__tmp279401
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273540_ '()))))
                              (declare (not safe))
                              (cons __tmp279402 __tmp279401))))
                       (declare (not safe))
                       (cons __tmp279404 __tmp279400))))
                (declare (not safe))
                (cons __tmp279407 __tmp279399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279398
                                                  _stx273499_))
                                               (let ((_$e273543_
                                                      (let ((__tmp279332
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273498_
                        __slot278631
                        __t278628
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass273536_ __tmp279332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e273543_
                                                     ((lambda (_klass273546_)
                                                        (let ((__tmp279388
                                                               (let ((__tmp279397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273498_
                                     __checked?278630
                                     __t278628
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279389
                              (let ((__tmp279394
                                     (let ((__tmp279395
                                            (let ((__tmp279396
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273498_
                                                      __id278629
                                                      __t278628
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279396 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279395)))
                                    (__tmp279390
                                     (let ((__tmp279392
                                            (let ((__tmp279393
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273538_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279393)))
                                           (__tmp279391
                                            (let ()
                                              (declare (not safe))
                                              (cons _object273540_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279392 __tmp279391))))
                                (declare (not safe))
                                (cons __tmp279394 __tmp279390))))
                         (declare (not safe))
                         (cons __tmp279397 __tmp279389))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279388 _stx273499_)))
              _$e273543_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self273498_
                                                            __checked?278630
                                                            __t278628
                                                            '#f))
                                                         (let ((__tmp279342
                                                                (let* ((_$obj273548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279343 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279343)))
                               (__tmp279344
                                (let ((__tmp279384
                                       (let ((__tmp279385
                                              (let ((__tmp279387
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj273548_
                                                             '())))
                                                    (__tmp279386
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object273540_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279387
                                                      __tmp279386))))
                                         (declare (not safe))
                                         (cons __tmp279385 '())))
                                      (__tmp279345
                                       (let ((__tmp279346
                                              (let ((__tmp279347
                                                     (let ((__tmp279376
                                                            (let ((__tmp279377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279381
                                  (let ((__tmp279382
                                         (let ((__tmp279383
                                                (##structure-ref
                                                 _klass273536_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp279383 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279382)))
                                 (__tmp279378
                                  (let ((__tmp279379
                                         (let ((__tmp279380
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273548_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279380))))
                                    (declare (not safe))
                                    (cons __tmp279379 '()))))
                             (declare (not safe))
                             (cons __tmp279381 __tmp279378))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279377)))
                   (__tmp279348
                    (let ((__tmp279365
                           (let ((__tmp279366
                                  (let ((__tmp279373
                                         (let ((__tmp279374
                                                (let ((__tmp279375
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273498_
                                                          __id278629
                                                          __t278628
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279375 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279374)))
                                        (__tmp279367
                                         (let ((__tmp279371
                                                (let ((__tmp279372
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273538_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279372)))
                                               (__tmp279368
                                                (let ((__tmp279369
                                                       (let ((__tmp279370
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273548_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279369 '()))))
                                           (declare (not safe))
                                           (cons __tmp279371 __tmp279368))))
                                    (declare (not safe))
                                    (cons __tmp279373 __tmp279367))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279366)))
                          (__tmp279349
                           (let ((__tmp279350
                                  (let ((__tmp279351
                                         (let ((__tmp279363
                                                (let ((__tmp279364
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279364)))
                                               (__tmp279352
                                                (let ((__tmp279360
                                                       (let ((__tmp279361
                                                              (let ((__tmp279362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273498_
                                __id278629
                                __t278628
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279362 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279361)))
              (__tmp279353
               (let ((__tmp279358
                      (let ((__tmp279359
                             (let ()
                               (declare (not safe))
                               (cons _$obj273548_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279359)))
                     (__tmp279354
                      (let ((__tmp279355
                             (let ((__tmp279356
                                    (let ((__tmp279357
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self273498_
                                              __slot278631
                                              __t278628
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279357 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279356))))
                        (declare (not safe))
                        (cons __tmp279355 '()))))
                 (declare (not safe))
                 (cons __tmp279358 __tmp279354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279360
                                                        __tmp279353))))
                                           (declare (not safe))
                                           (cons __tmp279363 __tmp279352))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279351))))
                             (declare (not safe))
                             (cons __tmp279350 '()))))
                      (declare (not safe))
                      (cons __tmp279365 __tmp279349))))
               (declare (not safe))
               (cons __tmp279376 __tmp279348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279347))))
                                         (declare (not safe))
                                         (cons __tmp279346 '()))))
                                  (declare (not safe))
                                  (cons __tmp279384 __tmp279345))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279344))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279342 _stx273499_))
                 (let ((__tmp279333
                        (let ((__tmp279334
                               (let ((__tmp279340
                                      (let ((__tmp279341
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279341)))
                                     (__tmp279335
                                      (let ((__tmp279336
                                             (let ((__tmp279337
                                                    (let ((__tmp279338
                                                           (let ((__tmp279339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self273498_
                             __slot278631
                             __t278628
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279339 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279337 '()))))
                                        (declare (not safe))
                                        (cons _object273540_ __tmp279336))))
                                 (declare (not safe))
                                 (cons __tmp279340 __tmp279335))))
                          (declare (not safe))
                          (cons '%#call __tmp279334))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279333 _stx273499_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd273506273520_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273502273512_ _g273503273515_)))))
                          (let ()
                            (declare (not safe))
                            (_g273502273512_ _g273503273515_))))))
              (declare (not safe))
              (_g273501273550_ _args273500_))))))
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
      (lambda (_self273303_ _stx273304_ _args273305_)
        (let* ((_g273307273321_
                (lambda (_g273308273318_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273308273318_))))
               (_g273306273373_
                (lambda (_g273308273324_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273308273324_))
                      (let ((_e273313273326_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273308273324_))))
                        (let ((_hd273312273329_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273313273326_)))
                              (_tl273311273331_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273313273326_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273311273331_))
                              (let ((_e273316273334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273311273331_))))
                                (let ((_hd273315273337_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273316273334_)))
                                      (_tl273314273339_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273316273334_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl273314273339_))
                                      ((lambda (_L273342_ _L273343_)
                                         (let* ((_klass273357_
                                                 (let ((__tmp279418
                                                        (##structure-ref
                                                         _self273303_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx273304_
                                                    __tmp279418)))
                                                (_field273359_
                                                 (let ((__tmp279419
                                                        (##structure-ref
                                                         _self273303_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass273357_
                                                    __tmp279419)))
                                                (_object273361_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273343_)))
                                                (_value273363_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273342_))))
                                           (if (##structure-ref
                                                _klass273357_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279501
                                                      (let ((__tmp279511
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self273303_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp279502
                     (let ((__tmp279508
                            (let ((__tmp279509
                                   (let ((__tmp279510
                                          (##structure-ref
                                           _self273303_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279510 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279509)))
                           (__tmp279503
                            (let ((__tmp279506
                                   (let ((__tmp279507
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273359_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279507)))
                                  (__tmp279504
                                   (let ((__tmp279505
                                          (let ()
                                            (declare (not safe))
                                            (cons _value273363_ '()))))
                                     (declare (not safe))
                                     (cons _object273361_ __tmp279505))))
                              (declare (not safe))
                              (cons __tmp279506 __tmp279504))))
                       (declare (not safe))
                       (cons __tmp279508 __tmp279503))))
                (declare (not safe))
                (cons __tmp279511 __tmp279502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279501
                                                  _stx273304_))
                                               (if (##structure-ref
                                                    _klass273357_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279490
                                                          (let ((__tmp279500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self273303_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279491
                         (let ((__tmp279497
                                (let ((__tmp279498
                                       (let ((__tmp279499
                                              (##structure-ref
                                               _self273303_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279499 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279498)))
                               (__tmp279492
                                (let ((__tmp279495
                                       (let ((__tmp279496
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273359_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279496)))
                                      (__tmp279493
                                       (let ((__tmp279494
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273363_ '()))))
                                         (declare (not safe))
                                         (cons _object273361_ __tmp279494))))
                                  (declare (not safe))
                                  (cons __tmp279495 __tmp279493))))
                           (declare (not safe))
                           (cons __tmp279497 __tmp279492))))
                    (declare (not safe))
                    (cons __tmp279500 __tmp279491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279490
                                                      _stx273304_))
                                                   (let ((_$e273366_
                                                          (let ((__tmp279420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self273303_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass273357_ __tmp279420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e273366_
                                                         ((lambda (_klass273369_)
                                                            (let ((__tmp279479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279489
                                  (if (##structure-ref
                                       _self273303_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279480
                                  (let ((__tmp279486
                                         (let ((__tmp279487
                                                (let ((__tmp279488
                                                       (##structure-ref
                                                        _self273303_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp279488 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279487)))
                                        (__tmp279481
                                         (let ((__tmp279484
                                                (let ((__tmp279485
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273359_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279485)))
                                               (__tmp279482
                                                (let ((__tmp279483
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value273363_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object273361_
                                                        __tmp279483))))
                                           (declare (not safe))
                                           (cons __tmp279484 __tmp279482))))
                                    (declare (not safe))
                                    (cons __tmp279486 __tmp279481))))
                             (declare (not safe))
                             (cons __tmp279489 __tmp279480))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279479 _stx273304_)))
                  _$e273366_)
                 (if (##structure-ref _self273303_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp279431
                            (let* ((_$obj273371_
                                    (let ((__tmp279432 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279432)))
                                   (__tmp279433
                                    (let ((__tmp279475
                                           (let ((__tmp279476
                                                  (let ((__tmp279478
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj273371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279477
                 (let () (declare (not safe)) (cons _object273361_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279478
                                                          __tmp279477))))
                                             (declare (not safe))
                                             (cons __tmp279476 '())))
                                          (__tmp279434
                                           (let ((__tmp279435
                                                  (let ((__tmp279436
                                                         (let ((__tmp279467
                                                                (let ((__tmp279468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279472
                                      (let ((__tmp279473
                                             (let ((__tmp279474
                                                    (##structure-ref
                                                     _klass273357_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp279474 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279473)))
                                     (__tmp279469
                                      (let ((__tmp279470
                                             (let ((__tmp279471
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273371_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279471))))
                                        (declare (not safe))
                                        (cons __tmp279470 '()))))
                                 (declare (not safe))
                                 (cons __tmp279472 __tmp279469))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279468)))
                       (__tmp279437
                        (let ((__tmp279455
                               (let ((__tmp279456
                                      (let ((__tmp279464
                                             (let ((__tmp279465
                                                    (let ((__tmp279466
                                                           (##structure-ref
                                                            _self273303_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp279466 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279465)))
                                            (__tmp279457
                                             (let ((__tmp279462
                                                    (let ((__tmp279463
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279463)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279458
                                                    (let ((__tmp279460
                                                           (let ((__tmp279461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj273371_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279461)))
                  (__tmp279459
                   (let () (declare (not safe)) (cons _value273363_ '()))))
              (declare (not safe))
              (cons __tmp279460 __tmp279459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279462
                                                     __tmp279458))))
                                        (declare (not safe))
                                        (cons __tmp279464 __tmp279457))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279456)))
                              (__tmp279438
                               (let ((__tmp279439
                                      (let ((__tmp279440
                                             (let ((__tmp279453
                                                    (let ((__tmp279454
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279454)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279441
                                                    (let ((__tmp279450
                                                           (let ((__tmp279451
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279452
                                 (##structure-ref
                                  _self273303_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp279452 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279451)))
                  (__tmp279442
                   (let ((__tmp279448
                          (let ((__tmp279449
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj273371_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279449)))
                         (__tmp279443
                          (let ((__tmp279445
                                 (let ((__tmp279446
                                        (let ((__tmp279447
                                               (##structure-ref
                                                _self273303_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279447 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279446)))
                                (__tmp279444
                                 (let ()
                                   (declare (not safe))
                                   (cons _value273363_ '()))))
                            (declare (not safe))
                            (cons __tmp279445 __tmp279444))))
                     (declare (not safe))
                     (cons __tmp279448 __tmp279443))))
              (declare (not safe))
              (cons __tmp279450 __tmp279442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279453
                                                     __tmp279441))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279440))))
                                 (declare (not safe))
                                 (cons __tmp279439 '()))))
                          (declare (not safe))
                          (cons __tmp279455 __tmp279438))))
                   (declare (not safe))
                   (cons __tmp279467 __tmp279437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279436))))
                                             (declare (not safe))
                                             (cons __tmp279435 '()))))
                                      (declare (not safe))
                                      (cons __tmp279475 __tmp279434))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279433))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279431 _stx273304_))
                     (let ((__tmp279421
                            (let ((__tmp279422
                                   (let ((__tmp279429
                                          (let ((__tmp279430
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279430)))
                                         (__tmp279423
                                          (let ((__tmp279424
                                                 (let ((__tmp279426
                                                        (let ((__tmp279427
                                                               (let ((__tmp279428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self273303_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp279428 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279427)))
               (__tmp279425
                (let () (declare (not safe)) (cons _value273363_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279426
                                                         __tmp279425))))
                                            (declare (not safe))
                                            (cons _object273361_
                                                  __tmp279424))))
                                     (declare (not safe))
                                     (cons __tmp279429 __tmp279423))))
                              (declare (not safe))
                              (cons '%#call __tmp279422))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279421 _stx273304_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd273315273337_
                                       _hd273312273329_)
                                      (let ()
                                        (declare (not safe))
                                        (_g273307273321_ _g273308273324_)))))
                              (let ()
                                (declare (not safe))
                                (_g273307273321_ _g273308273324_)))))
                      (let ()
                        (declare (not safe))
                        (_g273307273321_ _g273308273324_))))))
          (declare (not safe))
          (_g273306273373_ _args273305_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t278635)
        (let ((__id278636
               (let ((__tmp278639
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278635 'id))))
                 (if __tmp278639 __tmp278639 (error '"Unknown slot" 'id))))
              (__checked?278637
               (let ((__tmp278640
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278635 'checked?))))
                 (if __tmp278640
                     __tmp278640
                     (error '"Unknown slot" 'checked?))))
              (__slot278638
               (let ((__tmp278641
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278635 'slot))))
                 (if __tmp278641 __tmp278641 (error '"Unknown slot" 'slot)))))
          (lambda (_self273303_ _stx273304_ _args273305_)
            (let* ((_g273307273321_
                    (lambda (_g273308273318_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273308273318_))))
                   (_g273306273373_
                    (lambda (_g273308273324_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273308273324_))
                          (let ((_e273313273326_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273308273324_))))
                            (let ((_hd273312273329_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273313273326_)))
                                  (_tl273311273331_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273313273326_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273311273331_))
                                  (let ((_e273316273334_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273311273331_))))
                                    (let ((_hd273315273337_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273316273334_)))
                                          (_tl273314273339_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273316273334_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl273314273339_))
                                          ((lambda (_L273342_ _L273343_)
                                             (let* ((_klass273357_
                                                     (let ((__tmp279512
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273303_
                                                               __id278636
                                                               __t278635
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx273304_
                                                        __tmp279512)))
                                                    (_field273359_
                                                     (let ((__tmp279513
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273303_
                                                               __slot278638
                                                               __t278635
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass273357_
                                                        __tmp279513)))
                                                    (_object273361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273343_)))
                                                    (_value273363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273342_))))
                                               (if (##structure-ref
                                                    _klass273357_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279595
                                                          (let ((__tmp279605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273303_
                                __checked?278637
                                __t278635
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279596
                         (let ((__tmp279602
                                (let ((__tmp279603
                                       (let ((__tmp279604
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self273303_
                                                 __id278636
                                                 __t278635
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp279604 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279603)))
                               (__tmp279597
                                (let ((__tmp279600
                                       (let ((__tmp279601
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273359_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279601)))
                                      (__tmp279598
                                       (let ((__tmp279599
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273363_ '()))))
                                         (declare (not safe))
                                         (cons _object273361_ __tmp279599))))
                                  (declare (not safe))
                                  (cons __tmp279600 __tmp279598))))
                           (declare (not safe))
                           (cons __tmp279602 __tmp279597))))
                    (declare (not safe))
                    (cons __tmp279605 __tmp279596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279595
                                                      _stx273304_))
                                                   (if (##structure-ref
                                                        _klass273357_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp279584
                                                              (let ((__tmp279594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self273303_
                                    __checked?278637
                                    __t278635
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp279585
                             (let ((__tmp279591
                                    (let ((__tmp279592
                                           (let ((__tmp279593
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273303_
                                                     __id278636
                                                     __t278635
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279593 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279592)))
                                   (__tmp279586
                                    (let ((__tmp279589
                                           (let ((__tmp279590
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field273359_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279590)))
                                          (__tmp279587
                                           (let ((__tmp279588
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value273363_ '()))))
                                             (declare (not safe))
                                             (cons _object273361_
                                                   __tmp279588))))
                                      (declare (not safe))
                                      (cons __tmp279589 __tmp279587))))
                               (declare (not safe))
                               (cons __tmp279591 __tmp279586))))
                        (declare (not safe))
                        (cons __tmp279594 __tmp279585))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp279584 _stx273304_))
               (let ((_$e273366_
                      (let ((__tmp279514
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273303_
                                __slot278638
                                __t278635
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass273357_
                         __tmp279514))))
                 (if _$e273366_
                     ((lambda (_klass273369_)
                        (let ((__tmp279573
                               (let ((__tmp279583
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273303_
                                             __checked?278637
                                             __t278635
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp279574
                                      (let ((__tmp279580
                                             (let ((__tmp279581
                                                    (let ((__tmp279582
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self273303_
                                                              __id278636
                                                              __t278635
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp279582 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279581)))
                                            (__tmp279575
                                             (let ((__tmp279578
                                                    (let ((__tmp279579
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279579)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279576
                                                    (let ((__tmp279577
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value273363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object273361_ __tmp279577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279578
                                                     __tmp279576))))
                                        (declare (not safe))
                                        (cons __tmp279580 __tmp279575))))
                                 (declare (not safe))
                                 (cons __tmp279583 __tmp279574))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279573 _stx273304_)))
                      _$e273366_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273303_
                            __checked?278637
                            __t278635
                            '#f))
                         (let ((__tmp279525
                                (let* ((_$obj273371_
                                        (let ((__tmp279526 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp279526)))
                                       (__tmp279527
                                        (let ((__tmp279569
                                               (let ((__tmp279570
                                                      (let ((__tmp279572
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj273371_ '())))
                    (__tmp279571
                     (let () (declare (not safe)) (cons _object273361_ '()))))
                (declare (not safe))
                (cons __tmp279572 __tmp279571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279570 '())))
                                              (__tmp279528
                                               (let ((__tmp279529
                                                      (let ((__tmp279530
                                                             (let ((__tmp279561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279562
                                   (let ((__tmp279566
                                          (let ((__tmp279567
                                                 (let ((__tmp279568
                                                        (##structure-ref
                                                         _klass273357_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp279568 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp279567)))
                                         (__tmp279563
                                          (let ((__tmp279564
                                                 (let ((__tmp279565
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273371_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279565))))
                                            (declare (not safe))
                                            (cons __tmp279564 '()))))
                                     (declare (not safe))
                                     (cons __tmp279566 __tmp279563))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp279562)))
                           (__tmp279531
                            (let ((__tmp279549
                                   (let ((__tmp279550
                                          (let ((__tmp279558
                                                 (let ((__tmp279559
                                                        (let ((__tmp279560
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self273303_
                          __id278636
                          __t278635
                          '#f))))
                  (declare (not safe))
                  (cons __tmp279560 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279559)))
                                                (__tmp279551
                                                 (let ((__tmp279556
                                                        (let ((__tmp279557
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field273359_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279557)))
               (__tmp279552
                (let ((__tmp279554
                       (let ((__tmp279555
                              (let ()
                                (declare (not safe))
                                (cons _$obj273371_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279555)))
                      (__tmp279553
                       (let () (declare (not safe)) (cons _value273363_ '()))))
                  (declare (not safe))
                  (cons __tmp279554 __tmp279553))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279556
                                                         __tmp279552))))
                                            (declare (not safe))
                                            (cons __tmp279558 __tmp279551))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp279550)))
                                  (__tmp279532
                                   (let ((__tmp279533
                                          (let ((__tmp279534
                                                 (let ((__tmp279547
                                                        (let ((__tmp279548
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279548)))
               (__tmp279535
                (let ((__tmp279544
                       (let ((__tmp279545
                              (let ((__tmp279546
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self273303_
                                        __id278636
                                        __t278635
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp279546 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279545)))
                      (__tmp279536
                       (let ((__tmp279542
                              (let ((__tmp279543
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273371_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279543)))
                             (__tmp279537
                              (let ((__tmp279539
                                     (let ((__tmp279540
                                            (let ((__tmp279541
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273303_
                                                      __slot278638
                                                      __t278635
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279541 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279540)))
                                    (__tmp279538
                                     (let ()
                                       (declare (not safe))
                                       (cons _value273363_ '()))))
                                (declare (not safe))
                                (cons __tmp279539 __tmp279538))))
                         (declare (not safe))
                         (cons __tmp279542 __tmp279537))))
                  (declare (not safe))
                  (cons __tmp279544 __tmp279536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279547
                                                         __tmp279535))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279534))))
                                     (declare (not safe))
                                     (cons __tmp279533 '()))))
                              (declare (not safe))
                              (cons __tmp279549 __tmp279532))))
                       (declare (not safe))
                       (cons __tmp279561 __tmp279531))))
                (declare (not safe))
                (cons '%#if __tmp279530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279529 '()))))
                                          (declare (not safe))
                                          (cons __tmp279569 __tmp279528))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279527))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279525 _stx273304_))
                         (let ((__tmp279515
                                (let ((__tmp279516
                                       (let ((__tmp279523
                                              (let ((__tmp279524
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp279524)))
                                             (__tmp279517
                                              (let ((__tmp279518
                                                     (let ((__tmp279520
                                                            (let ((__tmp279521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279522
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273303_
                                     __slot278638
                                     __t278635
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp279522 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279521)))
                   (__tmp279519
                    (let () (declare (not safe)) (cons _value273363_ '()))))
               (declare (not safe))
               (cons __tmp279520 __tmp279519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object273361_
                                                      __tmp279518))))
                                         (declare (not safe))
                                         (cons __tmp279523 __tmp279517))))
                                  (declare (not safe))
                                  (cons '%#call __tmp279516))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp279515
                            _stx273304_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd273315273337_
                                           _hd273312273329_)
                                          (let ()
                                            (declare (not safe))
                                            (_g273307273321_
                                             _g273308273324_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273307273321_ _g273308273324_)))))
                          (let ()
                            (declare (not safe))
                            (_g273307273321_ _g273308273324_))))))
              (declare (not safe))
              (_g273306273373_ _args273305_))))))
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
      (lambda (_self273137_ _stx273138_ _args273139_)
        (let* ((_self273140273149_ _self273137_)
               (_E273142273153_
                (lambda () (error '"No clause matching" _self273140273149_)))
               (_K273143273160_
                (lambda (_inline273156_ _dispatch273157_ _arity273158_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273137_ _args273139_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273138_
                         _arity273158_)))
                  (if _inline273156_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp279611
                               (let ((__tmp279612
                                      (_inline273156_ _stx273138_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp279612
                                  _stx273138_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp279611)))
                      (if _dispatch273157_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273157_))
                            (let ((__tmp279606
                                   (let ((__tmp279607
                                          (let ((__tmp279608
                                                 (let ((__tmp279609
                                                        (let ((__tmp279610
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273157_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279609
                                                         _args273139_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279608))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279607
                                      _stx273138_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp279606)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273138_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273140273149_ 'gxc#!lambda::t))
              (let* ((_e273144273163_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273140273149_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273145273166_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273140273149_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273169_ _e273145273166_)
                     (_e273146273171_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273140273149_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch273174_ _e273146273171_)
                     (_e273147273176_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273140273149_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline273179_ _e273147273176_))
                (declare (not safe))
                (_K273143273160_
                 _inline273179_
                 _dispatch273174_
                 _arity273169_))
              (let () (declare (not safe)) (_E273142273153_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self272976_ _stx272977_ _args272978_)
        (let* ((_self272979272986_ _self272976_)
               (_E272981272990_
                (lambda () (error '"No clause matching" _self272979272986_)))
               (_K272982273004_
                (lambda (_clauses272993_)
                  (let ((_$e272999_
                         (let ((__tmp279613
                                (lambda (_g272994272996_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g272994272996_
                                     _args272978_)))))
                           (declare (not safe))
                           (find __tmp279613 _clauses272993_))))
                    (if _$e272999_
                        ((lambda (_clause273002_)
                           (let ((__method278910
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause273002_
                                     'optimize-call))))
                             (if __method278910
                                 (__method278910
                                  _clause273002_
                                  _stx272977_
                                  _args272978_)
                                 (error '"Missing method"
                                        _clause273002_
                                        'optimize-call))))
                         _$e272999_)
                        (let ((__tmp279614
                               (map gxc#!lambda-arity _clauses272993_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx272977_
                           __tmp279614)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272979272986_
                 'gxc#!case-lambda::t))
              (let* ((_e272983273007_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272979272986_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272984273010_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272979272986_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses273013_ _e272984273010_))
                (declare (not safe))
                (_K272982273004_ _clauses273013_))
              (let () (declare (not safe)) (_E272981272990_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self272790_ _args272791_)
        (let* ((_self272792272799_ _self272790_)
               (_E272794272803_
                (lambda () (error '"No clause matching" _self272792272799_)))
               (_K272795272843_
                (lambda (_arity272806_)
                  (let* ((_arity272807272816_ _arity272806_)
                         (_E272810272820_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity272807272816_))))
                    (let ((_K272814272840_
                           (lambda ()
                             (fx= (length _args272791_) _arity272806_)))
                          (_K272811272826_
                           (lambda (_arity272824_)
                             (fx>= (length _args272791_) _arity272824_))))
                      (let ((_try-match272809272836_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity272807272816_))
                                   (let ((_tl272813272831_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity272807272816_)))
                                         (_hd272812272829_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity272807272816_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl272813272831_))
                                         (let ((_arity272834_
                                                _hd272812272829_))
                                           (declare (not safe))
                                           (_K272811272826_ _arity272834_))
                                         (let ()
                                           (declare (not safe))
                                           (_E272810272820_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E272810272820_))))))
                        (if (fixnum? _arity272807272816_)
                            (let () (declare (not safe)) (_K272814272840_))
                            (let ()
                              (declare (not safe))
                              (_try-match272809272836_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272792272799_ 'gxc#!lambda::t))
              (let* ((_e272796272846_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272792272799_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272797272849_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272792272799_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity272852_ _e272797272849_))
                (declare (not safe))
                (_K272795272843_ _arity272852_))
              (let () (declare (not safe)) (_E272794272803_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self272675_ _stx272676_ _args272677_)
        (let* ((_self272678272686_ _self272675_)
               (_E272680272690_
                (lambda () (error '"No clause matching" _self272678272686_)))
               (_K272681272774_
                (lambda (_dispatch272693_ _table272694_)
                  (let* ((_g272695272704_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch272693_)))
                         (_else272697272712_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch272693_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx272676_))))
                         (_K272699272758_
                          (lambda (_main272715_ _keys272716_)
                            (let ((_g279615_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx272676_
                                      _args272677_))))
                              (begin
                                (let ((_g279616_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g279615_)
                                             (##vector-length _g279615_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g279616_ 2)))
                                      (error "Context expects 2 values"
                                             _g279616_)))
                                (let ((_pargs272718_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279615_ 0)))
                                      (_kwargs272719_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279615_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main272715_))
                                    (if _table272694_
                                        (let ((_xargs272726_
                                               (map (lambda (_key272721_)
                                                      (let ((_$e272723_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key272721_ _kwargs272719_))))
                (if _$e272723_ (values _$e272723_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys272716_)))
                                          (for-each
                                           (lambda (_kw272728_)
                                             (if (memq (car _kw272728_)
                                                       _keys272716_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx272676_
                                                    _keys272716_
                                                    _kw272728_))))
                                           _kwargs272719_)
                                          (let ((__tmp279668
                                                 (let ((__tmp279669
                                                        (let ((__tmp279670
                                                               (let ((__tmp279675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279676
                                     (let ()
                                       (declare (not safe))
                                       (cons _main272715_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279676)))
                             (__tmp279671
                              (let ((__tmp279673
                                     (let ((__tmp279674
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279674)))
                                    (__tmp279672
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs272718_
                                               _xargs272726_))))
                                (declare (not safe))
                                (cons __tmp279673 __tmp279672))))
                         (declare (not safe))
                         (cons __tmp279675 __tmp279671))))
                  (declare (not safe))
                  (cons '%#call __tmp279670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279669
                                                    _stx272676_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp279668)))
                                        (let* ((_kwt272730_
                                                (let ((__tmp279617
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp279617)))
                                               (_kwvars272733_
                                                (map (lambda (_g279618_)
                                                       (let ((__tmp279619
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp279619)))
                                                     _kwargs272719_))
                                               (_kwbind272738_
                                                (map (lambda (_kw272735_
                                                              _kwvar272736_)
                                                       (let ((__tmp279622
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar272736_ '())))
                     (__tmp279620
                      (let ((__tmp279621 (cdr _kw272735_)))
                        (declare (not safe))
                        (cons __tmp279621 '()))))
                 (declare (not safe))
                 (cons __tmp279622 __tmp279620)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272719_
                                                     _kwvars272733_))
                                               (_kwset272743_
                                                (map (lambda (_kw272740_
                                                              _kwvar272741_)
                                                       (let ((__tmp279623
                                                              (let ((__tmp279624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp279632
                                    (let ((__tmp279633
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt272730_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279633)))
                                   (__tmp279625
                                    (let ((__tmp279629
                                           (let ((__tmp279630
                                                  (let ((__tmp279631
                                                         (car _kw272740_)))
                                                    (declare (not safe))
                                                    (cons __tmp279631 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279630)))
                                          (__tmp279626
                                           (let ((__tmp279627
                                                  (let ((__tmp279628
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar272741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp279628))))
                                             (declare (not safe))
                                             (cons __tmp279627 '()))))
                                      (declare (not safe))
                                      (cons __tmp279629 __tmp279626))))
                               (declare (not safe))
                               (cons __tmp279632 __tmp279625))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp279624))))
                 (declare (not safe))
                 (cons '%#call __tmp279623)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272719_
                                                     _kwvars272733_))
                                               (_xkwargs272748_
                                                (map (lambda (_kw272745_
                                                              _kwvar272746_)
                                                       (let ((__tmp279636
                                                              (car _kw272745_))
                                                             (__tmp279634
                                                              (let ((__tmp279635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar272746_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279635))))
                 (declare (not safe))
                 (cons __tmp279636 __tmp279634)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272719_
                                                     _kwvars272733_))
                                               (_xargs272755_
                                                (map (lambda (_key272750_)
                                                       (let ((_$e272752_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key272750_ _xkwargs272748_))))
                 (if _$e272752_ (values _$e272752_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys272716_)))
                                          (let ((__tmp279637
                                                 (let ((__tmp279638
                                                        (let ((__tmp279639
                                                               (let ((__tmp279640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279641
                                     (let ((__tmp279642
                                            (let ((__tmp279656
                                                   (let ((__tmp279657
                                                          (let ((__tmp279667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt272730_ '())))
                        (__tmp279658
                         (let ((__tmp279659
                                (let ((__tmp279660
                                       (let ((__tmp279661
                                              (let ((__tmp279662
                                                     (let ((__tmp279663
                                                            (let ((__tmp279664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279665
                                  (let ((__tmp279666 (length _kwargs272719_)))
                                    (declare (not safe))
                                    (cons __tmp279666 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279665))))
                      (declare (not safe))
                      (cons __tmp279664 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp279663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp279662))))
                                         (declare (not safe))
                                         (cons '%#call __tmp279661))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp279660
                                   _stx272676_))))
                           (declare (not safe))
                           (cons __tmp279659 '()))))
                    (declare (not safe))
                    (cons __tmp279667 __tmp279658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279657 '())))
                                                  (__tmp279643
                                                   (let ((__tmp279644
                                                          (let ((__tmp279645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp279646
                                (let ((__tmp279647
                                       (let ((__tmp279648
                                              (let ((__tmp279649
                                                     (let ((__tmp279654
                                                            (let ((__tmp279655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main272715_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279655)))
                   (__tmp279650
                    (let ((__tmp279652
                           (let ((__tmp279653
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt272730_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279653)))
                          (__tmp279651
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs272718_ _xargs272755_))))
                      (declare (not safe))
                      (cons __tmp279652 __tmp279651))))
               (declare (not safe))
               (cons __tmp279654 __tmp279650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp279649))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279648
                                          _stx272676_))))
                                  (declare (not safe))
                                  (cons __tmp279647 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp279646 _kwset272743_))))
                    (declare (not safe))
                    (cons '%#begin __tmp279645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279644 '()))))
                                              (declare (not safe))
                                              (cons __tmp279656 __tmp279643))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp279642))))
                                (declare (not safe))
                                (cons __tmp279641 '()))))
                         (declare (not safe))
                         (cons _kwbind272738_ __tmp279640))))
                  (declare (not safe))
                  (cons '%#let-values __tmp279639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279638
                                                    _stx272676_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp279637)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g272695272704_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e272700272761_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272695272704_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e272701272764_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272695272704_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys272767_ _e272701272764_)
                               (_e272702272769_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272695272704_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main272772_ _e272702272769_))
                          (declare (not safe))
                          (_K272699272758_ _main272772_ _keys272767_))
                        (let () (declare (not safe)) (_else272697272712_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272678272686_
                 'gxc#!kw-lambda::t))
              (let* ((_e272682272777_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272678272686_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272683272780_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272678272686_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table272783_ _e272683272780_)
                     (_e272684272785_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272678272686_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch272788_ _e272684272785_))
                (declare (not safe))
                (_K272681272774_ _dispatch272788_ _table272783_))
              (let () (declare (not safe)) (_E272680272690_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx272288_ _args272289_)
        (let _lp272291_ ((_rest272293_ _args272289_)
                         (_pargs272294_ '())
                         (_kwargs272295_ '()))
          (let* ((___stx278792278793_ _rest272293_)
                 (_g272301272353_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx278792278793_)))))
            (let ((___kont278794278795_
                   (lambda (_L272532_ _L272533_)
                     (let ((__tmp279677
                            (let ()
                              (declare (not safe))
                              (cons _L272533_ _pargs272294_))))
                       (declare (not safe))
                       (_lp272291_ _L272532_ __tmp279677 _kwargs272295_))))
                  (___kont278796278797_
                   (lambda (_L272478_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L272478_ _pargs272294_))
                             (reverse _kwargs272295_))))
                  (___kont278798278799_
                   (lambda (_L272425_ _L272426_ _L272427_)
                     (let ((_kw272444_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L272427_))))
                       (if (assq _kw272444_ _kwargs272295_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx272288_
                              _kw272444_))
                           (let ((__tmp279678
                                  (let ((__tmp279679
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw272444_ _L272426_))))
                                    (declare (not safe))
                                    (cons __tmp279679 _kwargs272295_))))
                             (declare (not safe))
                             (_lp272291_
                              _L272425_
                              _pargs272294_
                              __tmp279678))))))
                  (___kont278800278801_
                   (lambda (_L272373_ _L272374_)
                     (let ((__tmp279680
                            (let ()
                              (declare (not safe))
                              (cons _L272374_ _pargs272294_))))
                       (declare (not safe))
                       (_lp272291_ _L272373_ __tmp279680 _kwargs272295_))))
                  (___kont278802278803_
                   (lambda ()
                     (values (reverse _pargs272294_)
                             (reverse _kwargs272295_)))))
              (let* ((_g272300272360_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx278792278793_))
                            (___kont278802278803_)
                            (let () (declare (not safe)) (_g272301272353_)))))
                     (___match278899278900_
                      (lambda (_e272334272393_
                               _hd272333272396_
                               _tl272332272398_
                               _e272337272401_
                               _hd272336272404_
                               _tl272335272406_
                               _e272340272409_
                               _hd272339272412_
                               _tl272338272414_
                               _e272343272417_
                               _hd272342272420_
                               _tl272341272422_)
                        (let ((_L272425_ _tl272341272422_)
                              (_L272426_ _hd272342272420_)
                              (_L272427_ _hd272339272412_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L272427_))
                              (___kont278798278799_
                               _L272425_
                               _L272426_
                               _L272427_)
                              (___kont278800278801_
                               _tl272332272398_
                               _hd272333272396_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx278792278793_))
                    (let ((_e272307272497_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx278792278793_))))
                      (let ((_tl272305272502_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272307272497_)))
                            (_hd272306272500_
                             (let ()
                               (declare (not safe))
                               (##car _e272307272497_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd272306272500_))
                            (let ((_e272310272505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd272306272500_))))
                              (let ((_tl272308272510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e272310272505_)))
                                    (_hd272309272508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e272310272505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd272309272508_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd272309272508_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl272308272510_))
                                            (let ((_e272313272513_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl272308272510_))))
                                              (let ((_tl272311272518_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e272313272513_)))
                                                    (_hd272312272516_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e272313272513_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd272312272516_))
                                                    (let ((_e272314272521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd272312272516_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e272314272521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl272311272518_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272305272502_))
                          (let ((_e272317272524_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272305272502_))))
                            (let ((_tl272315272529_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272317272524_)))
                                  (_hd272316272527_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272317272524_))))
                              (___kont278794278795_
                               _tl272315272529_
                               _hd272316272527_)))
                          (___kont278800278801_
                           _tl272305272502_
                           _hd272306272500_))
                      (___kont278800278801_ _tl272305272502_ _hd272306272500_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e272314272521_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272311272518_))
                          (___kont278796278797_ _tl272305272502_)
                          (___kont278800278801_
                           _tl272305272502_
                           _hd272306272500_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272311272518_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl272305272502_))
                              (let ((_e272343272417_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl272305272502_))))
                                (let ((_tl272341272422_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272343272417_)))
                                      (_hd272342272420_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272343272417_))))
                                  (___match278899278900_
                                   _e272307272497_
                                   _hd272306272500_
                                   _tl272305272502_
                                   _e272310272505_
                                   _hd272309272508_
                                   _tl272308272510_
                                   _e272313272513_
                                   _hd272312272516_
                                   _tl272311272518_
                                   _e272343272417_
                                   _hd272342272420_
                                   _tl272341272422_)))
                              (___kont278800278801_
                               _tl272305272502_
                               _hd272306272500_))
                          (___kont278800278801_
                           _tl272305272502_
                           _hd272306272500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl272311272518_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl272305272502_))
                                                            (let ((_e272343272417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl272305272502_))))
                      (let ((_tl272341272422_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272343272417_)))
                            (_hd272342272420_
                             (let ()
                               (declare (not safe))
                               (##car _e272343272417_))))
                        (___match278899278900_
                         _e272307272497_
                         _hd272306272500_
                         _tl272305272502_
                         _e272310272505_
                         _hd272309272508_
                         _tl272308272510_
                         _e272313272513_
                         _hd272312272516_
                         _tl272311272518_
                         _e272343272417_
                         _hd272342272420_
                         _tl272341272422_)))
                    (___kont278800278801_ _tl272305272502_ _hd272306272500_))
                (___kont278800278801_ _tl272305272502_ _hd272306272500_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont278800278801_
                                             _tl272305272502_
                                             _hd272306272500_))
                                        (___kont278800278801_
                                         _tl272305272502_
                                         _hd272306272500_))
                                    (___kont278800278801_
                                     _tl272305272502_
                                     _hd272306272500_))))
                            (___kont278800278801_
                             _tl272305272502_
                             _hd272306272500_))))
                    (let () (declare (not safe)) (_g272300272360_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self272284_ _stx272285_ _args272286_)
        (let () (declare (not safe)) (gxc#xform-call% _stx272285_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
