(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1707659885)
  (begin
    (define gxc#&optimize-call
      (make-promise
       (lambda ()
         (let ((_tbl274025_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp278784 (force gxc#&basic-xform)))
             (declare (not safe))
             (hash-copy! _tbl274025_ __tmp278784))
           (let ()
             (declare (not safe))
             (table-set! _tbl274025_ '%#call gxc#optimize-call%))
           _tbl274025_))))
    (define gxc#apply-optimize-call
      (lambda (_stx274008_ . _args274010_)
        (let ((__tmp278786
               (lambda ()
                 (declare (not safe))
                 (if (null? _args274010_)
                     (gxc#compile-e__0 _stx274008_)
                     (let ((_arg1274015_ (car _args274010_))
                           (_rest274017_ (cdr _args274010_)))
                       (if (null? _rest274017_)
                           (gxc#compile-e__1 _stx274008_ _arg1274015_)
                           (let ((_arg2274020_ (car _rest274017_))
                                 (_rest274022_ (cdr _rest274017_)))
                             (if (null? _rest274022_)
                                 (gxc#compile-e__2
                                  _stx274008_
                                  _arg1274015_
                                  _arg2274020_)
                                 (apply gxc#compile-e
                                        _stx274008_
                                        _arg1274015_
                                        _arg2274020_
                                        _rest274022_))))))))
              (__tmp278785 (force gxc#&optimize-call)))
          (declare (not safe))
          (call-with-parameters
           __tmp278786
           gxc#current-compile-methods
           __tmp278785))))
    (define gxc#optimize-call%
      (lambda (_stx273863_)
        (let* ((___stx278534278535_ _stx273863_)
               (_g273866273886_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx278534278535_)))))
          (let ((___kont278536278537_
                 (lambda (_L273930_ _L273931_)
                   (let* ((_rator-id273949_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L273931_)))
                          (_rator-type273951_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _rator-id273949_))))
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _rator-type273951_
                            'gxc#!procedure::t))
                         (begin
                           (let ((__tmp278787
                                  (##structure-ref
                                   _rator-type273951_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#verbose
                              '"optimize-call "
                              _rator-id273949_
                              '" => "
                              _rator-type273951_
                              '" "
                              __tmp278787))
                           (let ((_optimized273954_
                                  (let ((__method278782
                                         (let ()
                                           (declare (not safe))
                                           (method-ref
                                            _rator-type273951_
                                            'optimize-call))))
                                    (if __method278782
                                        (__method278782
                                         _rator-type273951_
                                         _stx273863_
                                         _L273930_)
                                        (error '"Missing method"
                                               _rator-type273951_
                                               'optimize-call)))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gxc#!primitive::t
                                    _rator-type273951_))
                                 _optimized273954_
                                 (let* ((___stx278516278517_ _optimized273954_)
                                        (_g273957273967_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx278516278517_)))))
                                   (let ((___kont278518278519_
                                          (lambda (_L273987_)
                                            (let ((__tmp278788
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '%#call-unchecked
                                                           _L273987_))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp278788
                                               _stx273863_))))
                                         (___kont278520278521_
                                          (lambda () _optimized273954_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx278516278517_))
                                         (let ((_e273962273979_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx278516278517_))))
                                           (let ((_tl273960273984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e273962273979_)))
                                                 (_hd273961273982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e273962273979_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd273961273982_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _hd273961273982_))
                                                     (___kont278518278519_
                                                      _tl273960273984_)
                                                     (___kont278520278521_))
                                                 (___kont278520278521_))))
                                         (___kont278520278521_)))))))
                         (if (let ()
                               (declare (not safe))
                               (not _rator-type273951_))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _stx273863_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _stx273863_
                                _rator-type273951_)))))))
                (___kont278538278539_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#xform-call% _stx273863_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx278534278535_))
                (let ((_e273872273898_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx278534278535_))))
                  (let ((_tl273870273903_
                         (let () (declare (not safe)) (##cdr _e273872273898_)))
                        (_hd273871273901_
                         (let ()
                           (declare (not safe))
                           (##car _e273872273898_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl273870273903_))
                        (let ((_e273875273906_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl273870273903_))))
                          (let ((_tl273873273911_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e273875273906_)))
                                (_hd273874273909_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e273875273906_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd273874273909_))
                                (let ((_e273878273914_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd273874273909_))))
                                  (let ((_tl273876273919_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e273878273914_)))
                                        (_hd273877273917_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e273878273914_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd273877273917_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd273877273917_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl273876273919_))
                                                (let ((_e273881273922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl273876273919_))))
                                                  (let ((_tl273879273927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e273881273922_)))
                                                        (_hd273880273925_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e273881273922_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl273879273927_))
                                                        (___kont278536278537_
                                                         _tl273873273911_
                                                         _hd273880273925_)
                                                        (___kont278538278539_))))
                                                (___kont278538278539_))
                                            (___kont278538278539_))
                                        (___kont278538278539_))))
                                (___kont278538278539_))))
                        (___kont278538278539_))))
                (___kont278538278539_))))))
    (define gxc#!predicate::optimize-call
      (lambda (_self273817_ _stx273818_ _args273819_)
        (let* ((_g273821273831_
                (lambda (_g273822273828_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273822273828_))))
               (_g273820273860_
                (lambda (_g273822273834_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273822273834_))
                      (let ((_e273826273836_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273822273834_))))
                        (let ((_hd273825273839_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273826273836_)))
                              (_tl273824273841_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273826273836_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273824273841_))
                              ((lambda (_L273844_)
                                 (let* ((_klass273855_
                                         (let ((__tmp278789
                                                (##structure-ref
                                                 _self273817_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273818_
                                            __tmp278789)))
                                        (_object273857_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273844_))))
                                   (if (##structure-ref
                                        _klass273855_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp278805
                                              (let ((__tmp278806
                                                     (let ((__tmp278808
                                                            (let ((__tmp278809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278810
                                  (##structure-ref
                                   _klass273855_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp278810 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp278809)))
                   (__tmp278807
                    (let () (declare (not safe)) (cons _object273857_ '()))))
               (declare (not safe))
               (cons __tmp278808 __tmp278807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#struct-direct-instance?
                                                      __tmp278806))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp278805
                                          _stx273818_))
                                       (if (##structure-ref
                                            _klass273855_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp278799
                                                  (let ((__tmp278800
                                                         (let ((__tmp278802
                                                                (let ((__tmp278803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp278804
                                      (##structure-ref
                                       _klass273855_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp278804 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp278803)))
                       (__tmp278801
                        (let ()
                          (declare (not safe))
                          (cons _object273857_ '()))))
                   (declare (not safe))
                   (cons __tmp278802 __tmp278801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-instance?
                                                          __tmp278800))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp278799
                                              _stx273818_))
                                           (let ((__tmp278790
                                                  (let ((__tmp278791
                                                         (let ((__tmp278797
                                                                (let ((__tmp278798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'class-instance? '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp278798)))
                       (__tmp278792
                        (let ((__tmp278794
                               (let ((__tmp278795
                                      (let ((__tmp278796
                                             (##structure-ref
                                              _self273817_
                                              '1
                                              gxc#!type::t
                                              '#f)))
                                        (declare (not safe))
                                        (cons __tmp278796 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp278795)))
                              (__tmp278793
                               (let ()
                                 (declare (not safe))
                                 (cons _object273857_ '()))))
                          (declare (not safe))
                          (cons __tmp278794 __tmp278793))))
                   (declare (not safe))
                   (cons __tmp278797 __tmp278792))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#call
                                                          __tmp278791))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp278790
                                              _stx273818_))))))
                               _hd273825273839_)
                              (let ()
                                (declare (not safe))
                                (_g273821273831_ _g273822273834_)))))
                      (let ()
                        (declare (not safe))
                        (_g273821273831_ _g273822273834_))))))
          (declare (not safe))
          (_g273820273860_ _args273819_))))
    (define gxc#!predicate::optimize-call::specialize
      (lambda (__t278495)
        (let ((__id278496
               (let ((__tmp278497
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278495 'id))))
                 (if __tmp278497 __tmp278497 (error '"Unknown slot" 'id)))))
          (lambda (_self273817_ _stx273818_ _args273819_)
            (let* ((_g273821273831_
                    (lambda (_g273822273828_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273822273828_))))
                   (_g273820273860_
                    (lambda (_g273822273834_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273822273834_))
                          (let ((_e273826273836_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273822273834_))))
                            (let ((_hd273825273839_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273826273836_)))
                                  (_tl273824273841_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273826273836_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273824273841_))
                                  ((lambda (_L273844_)
                                     (let* ((_klass273855_
                                             (let ((__tmp278811
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273817_
                                                       __id278496
                                                       __t278495
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273818_
                                                __tmp278811)))
                                            (_object273857_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273844_))))
                                       (if (##structure-ref
                                            _klass273855_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp278827
                                                  (let ((__tmp278828
                                                         (let ((__tmp278830
                                                                (let ((__tmp278831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp278832
                                      (##structure-ref
                                       _klass273855_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp278832 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp278831)))
                       (__tmp278829
                        (let ()
                          (declare (not safe))
                          (cons _object273857_ '()))))
                   (declare (not safe))
                   (cons __tmp278830 __tmp278829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#struct-direct-instance?
                                                          __tmp278828))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp278827
                                              _stx273818_))
                                           (if (##structure-ref
                                                _klass273855_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp278821
                                                      (let ((__tmp278822
                                                             (let ((__tmp278824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp278825
                                   (let ((__tmp278826
                                          (##structure-ref
                                           _klass273855_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp278826 '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp278825)))
                           (__tmp278823
                            (let ()
                              (declare (not safe))
                              (cons _object273857_ '()))))
                       (declare (not safe))
                       (cons __tmp278824 __tmp278823))))
                (declare (not safe))
                (cons '%#struct-instance? __tmp278822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp278821
                                                  _stx273818_))
                                               (let ((__tmp278812
                                                      (let ((__tmp278813
                                                             (let ((__tmp278819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp278820
                                   (let ()
                                     (declare (not safe))
                                     (cons 'class-instance? '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp278820)))
                           (__tmp278814
                            (let ((__tmp278816
                                   (let ((__tmp278817
                                          (let ((__tmp278818
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _self273817_
                                                    __id278496
                                                    __t278495
                                                    '#f))))
                                            (declare (not safe))
                                            (cons __tmp278818 '()))))
                                     (declare (not safe))
                                     (cons '%#ref __tmp278817)))
                                  (__tmp278815
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273857_ '()))))
                              (declare (not safe))
                              (cons __tmp278816 __tmp278815))))
                       (declare (not safe))
                       (cons __tmp278819 __tmp278814))))
                (declare (not safe))
                (cons '%#call __tmp278813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp278812
                                                  _stx273818_))))))
                                   _hd273825273839_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273821273831_ _g273822273834_)))))
                          (let ()
                            (declare (not safe))
                            (_g273821273831_ _g273822273834_))))))
              (declare (not safe))
              (_g273820273860_ _args273819_))))))
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
      (lambda (_self273548_ _stx273549_ _args273550_)
        (let* ((_klass273552_
                (let ((__tmp278833
                       (##structure-ref _self273548_ '1 gxc#!type::t '#f)))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class _stx273549_ __tmp278833)))
               (_fields273554_
                (length (##structure-ref _klass273552_ '5 gxc#!class::t '#f)))
               (_args273556_ (map gxc#compile-e _args273550_))
               (_inline-make-object273558_
                (let ((__tmp278834
                       (let ((__tmp278840
                              (let ((__tmp278841
                                     (let ()
                                       (declare (not safe))
                                       (cons '##structure '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp278841)))
                             (__tmp278835
                              (let ((__tmp278837
                                     (let ((__tmp278838
                                            (let ((__tmp278839
                                                   (##structure-ref
                                                    _self273548_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp278839 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp278838)))
                                    (__tmp278836
                                     (make-list _fields273554_ '(%#quote #f))))
                                (declare (not safe))
                                (cons __tmp278837 __tmp278836))))
                         (declare (not safe))
                         (cons __tmp278840 __tmp278835))))
                  (declare (not safe))
                  (cons '%#call __tmp278834))))
          (let ((_$e273561_
                 (##structure-ref _klass273552_ '6 gxc#!class::t '#f)))
            (if _$e273561_
                ((lambda (_ctor273564_)
                   (let ((_$obj273566_
                          (let ((__tmp278903 (gensym '__obj)))
                            (declare (not safe))
                            (make-symbol__0 __tmp278903)))
                         (_ctor-impl273567_
                          (let ()
                            (declare (not safe))
                            (gxc#!class-lookup-method
                             _klass273552_
                             _ctor273564_))))
                     (let ((__tmp278904
                            (let ((__tmp278905
                                   (let ((__tmp278970
                                          (let ((__tmp278971
                                                 (let ((__tmp278973
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273566_
                                                                '())))
                                                       (__tmp278972
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _inline-make-object273558_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp278973
                                                         __tmp278972))))
                                            (declare (not safe))
                                            (cons __tmp278971 '())))
                                         (__tmp278906
                                          (let ((__tmp278907
                                                 (let ((__tmp278908
                                                        (let ((__tmp278912
                                                               (if _ctor-impl273567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278964
                                  (let ((__tmp278968
                                         (let ((__tmp278969
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _ctor-impl273567_
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp278969)))
                                        (__tmp278965
                                         (let ((__tmp278966
                                                (let ((__tmp278967
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273566_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp278967))))
                                           (declare (not safe))
                                           (cons __tmp278966 _args273556_))))
                                    (declare (not safe))
                                    (cons __tmp278968 __tmp278965))))
                             (declare (not safe))
                             (cons '%#call __tmp278964))
                           (let* ((_$ctor273569_
                                   (let ((__tmp278913 (gensym '__constructor)))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp278913)))
                                  (__tmp278914
                                   (let ((__tmp278949
                                          (let ((__tmp278950
                                                 (let ((__tmp278963
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$ctor273569_
                                                                '())))
                                                       (__tmp278951
                                                        (let ((__tmp278952
                                                               (let ((__tmp278953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp278961
                                     (let ((__tmp278962
                                            (let ()
                                              (declare (not safe))
                                              (cons 'direct-method-ref '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp278962)))
                                    (__tmp278954
                                     (let ((__tmp278958
                                            (let ((__tmp278959
                                                   (let ((__tmp278960
                                                          (##structure-ref
                                                           _self273548_
                                                           '1
                                                           gxc#!type::t
                                                           '#f)))
                                                     (declare (not safe))
                                                     (cons __tmp278960 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp278959)))
                                           (__tmp278955
                                            (let ((__tmp278956
                                                   (let ((__tmp278957
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _ctor273564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp278957))))
                                              (declare (not safe))
                                              (cons __tmp278956 '()))))
                                       (declare (not safe))
                                       (cons __tmp278958 __tmp278955))))
                                (declare (not safe))
                                (cons __tmp278961 __tmp278954))))
                         (declare (not safe))
                         (cons '%#call __tmp278953))))
                  (declare (not safe))
                  (cons __tmp278952 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp278963
                                                         __tmp278951))))
                                            (declare (not safe))
                                            (cons __tmp278950 '())))
                                         (__tmp278915
                                          (let ((__tmp278916
                                                 (let ((__tmp278917
                                                        (let ((__tmp278947
                                                               (let ((__tmp278948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$ctor273569_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp278948)))
                      (__tmp278918
                       (let ((__tmp278940
                              (let ((__tmp278941
                                     (let ((__tmp278945
                                            (let ((__tmp278946
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$ctor273569_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp278946)))
                                           (__tmp278942
                                            (let ((__tmp278943
                                                   (let ((__tmp278944
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp278944))))
                                              (declare (not safe))
                                              (cons __tmp278943
                                                    _args273556_))))
                                       (declare (not safe))
                                       (cons __tmp278945 __tmp278942))))
                                (declare (not safe))
                                (cons '%#call __tmp278941)))
                             (__tmp278919
                              (let ((__tmp278920
                                     (let ((__tmp278921
                                            (let ((__tmp278938
                                                   (let ((__tmp278939
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp278939)))
                                                  (__tmp278922
                                                   (let ((__tmp278936
                                                          (let ((__tmp278937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons '"missing constructor method implementation"
                                 '()))))
                    (declare (not safe))
                    (cons '%#quote __tmp278937)))
                 (__tmp278923
                  (let ((__tmp278934
                         (let ((__tmp278935
                                (let ()
                                  (declare (not safe))
                                  (cons 'class: '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp278935)))
                        (__tmp278924
                         (let ((__tmp278931
                                (let ((__tmp278932
                                       (let ((__tmp278933
                                              (##structure-ref
                                               _self273548_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp278933 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp278932)))
                               (__tmp278925
                                (let ((__tmp278929
                                       (let ((__tmp278930
                                              (let ()
                                                (declare (not safe))
                                                (cons 'method: '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp278930)))
                                      (__tmp278926
                                       (let ((__tmp278927
                                              (let ((__tmp278928
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _ctor273564_
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#quote __tmp278928))))
                                         (declare (not safe))
                                         (cons __tmp278927 '()))))
                                  (declare (not safe))
                                  (cons __tmp278929 __tmp278926))))
                           (declare (not safe))
                           (cons __tmp278931 __tmp278925))))
                    (declare (not safe))
                    (cons __tmp278934 __tmp278924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp278936
                                                           __tmp278923))))
                                              (declare (not safe))
                                              (cons __tmp278938 __tmp278922))))
                                       (declare (not safe))
                                       (cons '%#call __tmp278921))))
                                (declare (not safe))
                                (cons __tmp278920 '()))))
                         (declare (not safe))
                         (cons __tmp278940 __tmp278919))))
                  (declare (not safe))
                  (cons __tmp278947 __tmp278918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#if __tmp278917))))
                                            (declare (not safe))
                                            (cons __tmp278916 '()))))
                                     (declare (not safe))
                                     (cons __tmp278949 __tmp278915))))
                             (declare (not safe))
                             (cons '%#let-values __tmp278914))))
                      (__tmp278909
                       (let ((__tmp278910
                              (let ((__tmp278911
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273566_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp278911))))
                         (declare (not safe))
                         (cons __tmp278910 '()))))
                  (declare (not safe))
                  (cons __tmp278912 __tmp278909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#begin
                                                         __tmp278908))))
                                            (declare (not safe))
                                            (cons __tmp278907 '()))))
                                     (declare (not safe))
                                     (cons __tmp278970 __tmp278906))))
                              (declare (not safe))
                              (cons '%#let-values __tmp278905))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp278904 _stx273549_))))
                 _$e273561_)
                (if (##structure-ref _klass273552_ '7 gxc#!class::t '#f)
                    (if (fx= (length _args273556_) _fields273554_)
                        (let ((__tmp278895
                               (let ((__tmp278896
                                      (let ((__tmp278901
                                             (let ((__tmp278902
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '##structure
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp278902)))
                                            (__tmp278897
                                             (let ((__tmp278898
                                                    (let ((__tmp278899
                                                           (let ((__tmp278900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##structure-ref _self273548_ '1 gxc#!type::t '#f)))
                     (declare (not safe))
                     (cons __tmp278900 '()))))
              (declare (not safe))
              (cons '%#ref __tmp278899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp278898
                                                     _args273556_))))
                                        (declare (not safe))
                                        (cons __tmp278901 __tmp278897))))
                                 (declare (not safe))
                                 (cons '%#call __tmp278896))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp278895 _stx273549_))
                        (let ((__tmp278894
                               (##structure-ref
                                _self273548_
                                '1
                                gxc#!type::t
                                '#f))
                              (__tmp278893
                               (length (##structure-ref
                                        _klass273552_
                                        '5
                                        gxc#!class::t
                                        '#f))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"illegal struct constructor application; arity mismatch"
                           _stx273549_
                           __tmp278894
                           __tmp278893)))
                    (let ((_$obj273571_
                           (let ((__tmp278842 (gensym '__obj)))
                             (declare (not safe))
                             (make-symbol__0 __tmp278842))))
                      (let _lp273573_ ((_rest273575_ _args273556_)
                                       (_initializers273576_ '()))
                        (let* ((___stx278572278573_ _rest273575_)
                               (_g273580273601_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx278572278573_)))))
                          (let ((___kont278574278575_
                                 (lambda (_L273655_ _L273656_ _L273657_)
                                   (let* ((_slot273687_
                                           (keyword->symbol
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _L273657_))))
                                          (_off273689_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _klass273552_
                                              _slot273687_))))
                                     (if _off273689_
                                         (let ((__tmp278844
                                                (let ((__tmp278845
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _off273689_
                                                               _L273656_))))
                                                  (declare (not safe))
                                                  (cons __tmp278845
                                                        _initializers273576_))))
                                           (declare (not safe))
                                           (_lp273573_ _L273655_ __tmp278844))
                                         (let ((__tmp278843
                                                (##structure-ref
                                                 _self273548_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#raise-compile-error
                                            '"unknown slot"
                                            _stx273549_
                                            __tmp278843
                                            _slot273687_))))))
                                (___kont278576278577_
                                 (lambda ()
                                   (let ((__tmp278846
                                          (let ((__tmp278847
                                                 (let ((__tmp278870
                                                        (let ((__tmp278871
                                                               (let ((__tmp278873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273571_ '())))
                             (__tmp278872
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273558_ '()))))
                         (declare (not safe))
                         (cons __tmp278873 __tmp278872))))
                  (declare (not safe))
                  (cons __tmp278871 '())))
               (__tmp278848
                (let ((__tmp278849
                       (let ((__tmp278850
                              (let ((__tmp278867
                                     (let ((__tmp278868
                                            (let ((__tmp278869
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273571_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp278869))))
                                       (declare (not safe))
                                       (cons __tmp278868 '())))
                                    (__tmp278851
                                     (let ((__tmp278852
                                            (lambda (_i273615_ _r273616_)
                                              (let ((__tmp278853
                                                     (let ((__tmp278854
                                                            (let ((__tmp278864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp278865
                                  (let ((__tmp278866
                                         (##structure-ref
                                          _self273548_
                                          '1
                                          gxc#!type::t
                                          '#f)))
                                    (declare (not safe))
                                    (cons __tmp278866 '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp278865)))
                          (__tmp278855
                           (let ((__tmp278861
                                  (let ((__tmp278862
                                         (let ((__tmp278863 (car _i273615_)))
                                           (declare (not safe))
                                           (cons __tmp278863 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp278862)))
                                 (__tmp278856
                                  (let ((__tmp278859
                                         (let ((__tmp278860
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273571_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp278860)))
                                        (__tmp278857
                                         (let ((__tmp278858 (cdr _i273615_)))
                                           (declare (not safe))
                                           (cons __tmp278858 '()))))
                                    (declare (not safe))
                                    (cons __tmp278859 __tmp278857))))
                             (declare (not safe))
                             (cons __tmp278861 __tmp278856))))
                      (declare (not safe))
                      (cons __tmp278864 __tmp278855))))
               (declare (not safe))
               (cons '%#struct-unchecked-set! __tmp278854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp278853
                                                      _r273616_)))))
                                       (declare (not safe))
                                       (foldl1 __tmp278852
                                               '()
                                               _initializers273576_))))
                                (declare (not safe))
                                (foldr1 cons __tmp278867 __tmp278851))))
                         (declare (not safe))
                         (cons '%#begin __tmp278850))))
                  (declare (not safe))
                  (cons __tmp278849 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp278870
                                                         __tmp278848))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp278847))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp278846
                                      _stx273549_))))
                                (___kont278578278579_
                                 (lambda ()
                                   (let ((__tmp278874
                                          (let ((__tmp278875
                                                 (let ((__tmp278889
                                                        (let ((__tmp278890
                                                               (let ((__tmp278892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$obj273571_ '())))
                             (__tmp278891
                              (let ()
                                (declare (not safe))
                                (cons _inline-make-object273558_ '()))))
                         (declare (not safe))
                         (cons __tmp278892 __tmp278891))))
                  (declare (not safe))
                  (cons __tmp278890 '())))
               (__tmp278876
                (let ((__tmp278877
                       (let ((__tmp278878
                              (let ((__tmp278882
                                     (let ((__tmp278883
                                            (let ((__tmp278887
                                                   (let ((__tmp278888
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons 'class-instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp278888)))
                                                  (__tmp278884
                                                   (let ((__tmp278885
                                                          (let ((__tmp278886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273571_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp278886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp278885
                                                           _args273556_))))
                                              (declare (not safe))
                                              (cons __tmp278887 __tmp278884))))
                                       (declare (not safe))
                                       (cons '%#call __tmp278883)))
                                    (__tmp278879
                                     (let ((__tmp278880
                                            (let ((__tmp278881
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$obj273571_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp278881))))
                                       (declare (not safe))
                                       (cons __tmp278880 '()))))
                                (declare (not safe))
                                (cons __tmp278882 __tmp278879))))
                         (declare (not safe))
                         (cons '%#begin __tmp278878))))
                  (declare (not safe))
                  (cons __tmp278877 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp278889
                                                         __tmp278876))))
                                            (declare (not safe))
                                            (cons '%#let-values __tmp278875))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp278874
                                      _stx273549_)))))
                            (let* ((_g273578273618_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? ___stx278572278573_))
                                          (___kont278576278577_)
                                          (___kont278578278579_))))
                                   (___match278609278610_
                                    (lambda (_e273587273623_
                                             _hd273586273626_
                                             _tl273585273628_
                                             _e273590273631_
                                             _hd273589273634_
                                             _tl273588273636_
                                             _e273593273639_
                                             _hd273592273642_
                                             _tl273591273644_
                                             _e273596273647_
                                             _hd273595273650_
                                             _tl273594273652_)
                                      (let ((_L273655_ _tl273594273652_)
                                            (_L273656_ _hd273595273650_)
                                            (_L273657_ _hd273592273642_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-keyword? _L273657_))
                                            (___kont278574278575_
                                             _L273655_
                                             _L273656_
                                             _L273657_)
                                            (___kont278578278579_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? ___stx278572278573_))
                                  (let ((_e273587273623_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e ___stx278572278573_))))
                                    (let ((_tl273585273628_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273587273623_)))
                                          (_hd273586273626_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273587273623_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd273586273626_))
                                          (let ((_e273590273631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd273586273626_))))
                                            (let ((_tl273588273636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e273590273631_)))
                                                  (_hd273589273634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e273590273631_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd273589273634_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#quote
                                                         _hd273589273634_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl273588273636_))
                                                          (let ((_e273593273639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl273588273636_))))
                    (let ((_tl273591273644_
                           (let ()
                             (declare (not safe))
                             (##cdr _e273593273639_)))
                          (_hd273592273642_
                           (let ()
                             (declare (not safe))
                             (##car _e273593273639_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl273591273644_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273585273628_))
                              (let ((_e273596273647_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273585273628_))))
                                (let ((_tl273594273652_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273596273647_)))
                                      (_hd273595273650_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273596273647_))))
                                  (___match278609278610_
                                   _e273587273623_
                                   _hd273586273626_
                                   _tl273585273628_
                                   _e273590273631_
                                   _hd273589273634_
                                   _tl273588273636_
                                   _e273593273639_
                                   _hd273592273642_
                                   _tl273591273644_
                                   _e273596273647_
                                   _hd273595273650_
                                   _tl273594273652_)))
                              (___kont278578278579_))
                          (___kont278578278579_))))
                  (___kont278578278579_))
              (___kont278578278579_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont278578278579_))))
                                          (___kont278578278579_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273578273618_))))))))))))))
    (define gxc#!constructor::optimize-call::specialize
      (lambda (__t278498)
        (let ((__id278499
               (let ((__tmp278500
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278498 'id))))
                 (if __tmp278500 __tmp278500 (error '"Unknown slot" 'id)))))
          (lambda (_self273548_ _stx273549_ _args273550_)
            (let* ((_klass273552_
                    (let ((__tmp278974
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _self273548_
                              __id278499
                              __t278498
                              '#f))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-class _stx273549_ __tmp278974)))
                   (_fields273554_
                    (length (##structure-ref
                             _klass273552_
                             '5
                             gxc#!class::t
                             '#f)))
                   (_args273556_ (map gxc#compile-e _args273550_))
                   (_inline-make-object273558_
                    (let ((__tmp278975
                           (let ((__tmp278981
                                  (let ((__tmp278982
                                         (let ()
                                           (declare (not safe))
                                           (cons '##structure '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp278982)))
                                 (__tmp278976
                                  (let ((__tmp278978
                                         (let ((__tmp278979
                                                (let ((__tmp278980
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273548_
                                                          __id278499
                                                          __t278498
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp278980 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp278979)))
                                        (__tmp278977
                                         (make-list
                                          _fields273554_
                                          '(%#quote #f))))
                                    (declare (not safe))
                                    (cons __tmp278978 __tmp278977))))
                             (declare (not safe))
                             (cons __tmp278981 __tmp278976))))
                      (declare (not safe))
                      (cons '%#call __tmp278975))))
              (let ((_$e273561_
                     (##structure-ref _klass273552_ '6 gxc#!class::t '#f)))
                (if _$e273561_
                    ((lambda (_ctor273564_)
                       (let ((_$obj273566_
                              (let ((__tmp279044 (gensym '__obj)))
                                (declare (not safe))
                                (make-symbol__0 __tmp279044)))
                             (_ctor-impl273567_
                              (let ()
                                (declare (not safe))
                                (gxc#!class-lookup-method
                                 _klass273552_
                                 _ctor273564_))))
                         (let ((__tmp279045
                                (let ((__tmp279046
                                       (let ((__tmp279111
                                              (let ((__tmp279112
                                                     (let ((__tmp279114
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$obj273566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279113
                    (let ()
                      (declare (not safe))
                      (cons _inline-make-object273558_ '()))))
               (declare (not safe))
               (cons __tmp279114 __tmp279113))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279112 '())))
                                             (__tmp279047
                                              (let ((__tmp279048
                                                     (let ((__tmp279049
                                                            (let ((__tmp279053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _ctor-impl273567_
                               (let ((__tmp279105
                                      (let ((__tmp279109
                                             (let ((__tmp279110
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _ctor-impl273567_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279110)))
                                            (__tmp279106
                                             (let ((__tmp279107
                                                    (let ((__tmp279108
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$obj273566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279107
                                                     _args273556_))))
                                        (declare (not safe))
                                        (cons __tmp279109 __tmp279106))))
                                 (declare (not safe))
                                 (cons '%#call __tmp279105))
                               (let* ((_$ctor273569_
                                       (let ((__tmp279054
                                              (gensym '__constructor)))
                                         (declare (not safe))
                                         (make-symbol__0 __tmp279054)))
                                      (__tmp279055
                                       (let ((__tmp279090
                                              (let ((__tmp279091
                                                     (let ((__tmp279104
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _$ctor273569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
                   (__tmp279092
                    (let ((__tmp279093
                           (let ((__tmp279094
                                  (let ((__tmp279102
                                         (let ((__tmp279103
                                                (let ()
                                                  (declare (not safe))
                                                  (cons 'direct-method-ref
                                                        '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279103)))
                                        (__tmp279095
                                         (let ((__tmp279099
                                                (let ((__tmp279100
                                                       (let ((__tmp279101
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _self273548_
                         __id278499
                         __t278498
                         '#f))))
                 (declare (not safe))
                 (cons __tmp279101 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279100)))
                                               (__tmp279096
                                                (let ((__tmp279097
                                                       (let ((__tmp279098
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _ctor273564_ '()))))
                 (declare (not safe))
                 (cons '%#quote __tmp279098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279097 '()))))
                                           (declare (not safe))
                                           (cons __tmp279099 __tmp279096))))
                                    (declare (not safe))
                                    (cons __tmp279102 __tmp279095))))
                             (declare (not safe))
                             (cons '%#call __tmp279094))))
                      (declare (not safe))
                      (cons __tmp279093 '()))))
               (declare (not safe))
               (cons __tmp279104 __tmp279092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279091 '())))
                                             (__tmp279056
                                              (let ((__tmp279057
                                                     (let ((__tmp279058
                                                            (let ((__tmp279088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279089
                                  (let ()
                                    (declare (not safe))
                                    (cons _$ctor273569_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279089)))
                          (__tmp279059
                           (let ((__tmp279081
                                  (let ((__tmp279082
                                         (let ((__tmp279086
                                                (let ((__tmp279087
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$ctor273569_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279087)))
                                               (__tmp279083
                                                (let ((__tmp279084
                                                       (let ((__tmp279085
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273566_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279084
                                                        _args273556_))))
                                           (declare (not safe))
                                           (cons __tmp279086 __tmp279083))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279082)))
                                 (__tmp279060
                                  (let ((__tmp279061
                                         (let ((__tmp279062
                                                (let ((__tmp279079
                                                       (let ((__tmp279080
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'error '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279080)))
              (__tmp279063
               (let ((__tmp279077
                      (let ((__tmp279078
                             (let ()
                               (declare (not safe))
                               (cons '"missing constructor method implementation"
                                     '()))))
                        (declare (not safe))
                        (cons '%#quote __tmp279078)))
                     (__tmp279064
                      (let ((__tmp279075
                             (let ((__tmp279076
                                    (let ()
                                      (declare (not safe))
                                      (cons 'class: '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279076)))
                            (__tmp279065
                             (let ((__tmp279072
                                    (let ((__tmp279073
                                           (let ((__tmp279074
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273548_
                                                     __id278499
                                                     __t278498
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279074 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279073)))
                                   (__tmp279066
                                    (let ((__tmp279070
                                           (let ((__tmp279071
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'method: '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279071)))
                                          (__tmp279067
                                           (let ((__tmp279068
                                                  (let ((__tmp279069
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _ctor273564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#quote
                                                          __tmp279069))))
                                             (declare (not safe))
                                             (cons __tmp279068 '()))))
                                      (declare (not safe))
                                      (cons __tmp279070 __tmp279067))))
                               (declare (not safe))
                               (cons __tmp279072 __tmp279066))))
                        (declare (not safe))
                        (cons __tmp279075 __tmp279065))))
                 (declare (not safe))
                 (cons __tmp279077 __tmp279064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279079
                                                        __tmp279063))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279062))))
                                    (declare (not safe))
                                    (cons __tmp279061 '()))))
                             (declare (not safe))
                             (cons __tmp279081 __tmp279060))))
                      (declare (not safe))
                      (cons __tmp279088 __tmp279059))))
               (declare (not safe))
               (cons '%#if __tmp279058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279057 '()))))
                                         (declare (not safe))
                                         (cons __tmp279090 __tmp279056))))
                                 (declare (not safe))
                                 (cons '%#let-values __tmp279055))))
                          (__tmp279050
                           (let ((__tmp279051
                                  (let ((__tmp279052
                                         (let ()
                                           (declare (not safe))
                                           (cons _$obj273566_ '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279052))))
                             (declare (not safe))
                             (cons __tmp279051 '()))))
                      (declare (not safe))
                      (cons __tmp279053 __tmp279050))))
               (declare (not safe))
               (cons '%#begin __tmp279049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279048 '()))))
                                         (declare (not safe))
                                         (cons __tmp279111 __tmp279047))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279046))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279045 _stx273549_))))
                     _$e273561_)
                    (if (##structure-ref _klass273552_ '7 gxc#!class::t '#f)
                        (if (fx= (length _args273556_) _fields273554_)
                            (let ((__tmp279036
                                   (let ((__tmp279037
                                          (let ((__tmp279042
                                                 (let ((__tmp279043
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '##structure
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279043)))
                                                (__tmp279038
                                                 (let ((__tmp279039
                                                        (let ((__tmp279040
                                                               (let ((__tmp279041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _self273548_
                                 __id278499
                                 __t278498
                                 '#f))))
                         (declare (not safe))
                         (cons __tmp279041 '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279039
                                                         _args273556_))))
                                            (declare (not safe))
                                            (cons __tmp279042 __tmp279038))))
                                     (declare (not safe))
                                     (cons '%#call __tmp279037))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp279036 _stx273549_))
                            (let ((__tmp279035
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _self273548_
                                      __id278499
                                      __t278498
                                      '#f)))
                                  (__tmp279034
                                   (length (##structure-ref
                                            _klass273552_
                                            '5
                                            gxc#!class::t
                                            '#f))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"illegal struct constructor application; arity mismatch"
                               _stx273549_
                               __tmp279035
                               __tmp279034)))
                        (let ((_$obj273571_
                               (let ((__tmp278983 (gensym '__obj)))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp278983))))
                          (let _lp273573_ ((_rest273575_ _args273556_)
                                           (_initializers273576_ '()))
                            (let* ((___stx278614278615_ _rest273575_)
                                   (_g273580273601_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         ___stx278614278615_)))))
                              (let ((___kont278616278617_
                                     (lambda (_L273655_ _L273656_ _L273657_)
                                       (let* ((_slot273687_
                                               (keyword->symbol
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L273657_))))
                                              (_off273689_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _klass273552_
                                                  _slot273687_))))
                                         (if _off273689_
                                             (let ((__tmp278985
                                                    (let ((__tmp278986
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _off273689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L273656_))))
              (declare (not safe))
              (cons __tmp278986 _initializers273576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp273573_
                                                _L273655_
                                                __tmp278985))
                                             (let ((__tmp278984
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273548_
                                                       __id278499
                                                       __t278498
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#raise-compile-error
                                                '"unknown slot"
                                                _stx273549_
                                                __tmp278984
                                                _slot273687_))))))
                                    (___kont278618278619_
                                     (lambda ()
                                       (let ((__tmp278987
                                              (let ((__tmp278988
                                                     (let ((__tmp279011
                                                            (let ((__tmp279012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279014
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273571_ '())))
                                 (__tmp279013
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273558_ '()))))
                             (declare (not safe))
                             (cons __tmp279014 __tmp279013))))
                      (declare (not safe))
                      (cons __tmp279012 '())))
                   (__tmp278989
                    (let ((__tmp278990
                           (let ((__tmp278991
                                  (let ((__tmp279008
                                         (let ((__tmp279009
                                                (let ((__tmp279010
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273571_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279010))))
                                           (declare (not safe))
                                           (cons __tmp279009 '())))
                                        (__tmp278992
                                         (let ((__tmp278993
                                                (lambda (_i273615_ _r273616_)
                                                  (let ((__tmp278994
                                                         (let ((__tmp278995
                                                                (let ((__tmp279005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279006
                                      (let ((__tmp279007
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _self273548_
                                                __id278499
                                                __t278498
                                                '#f))))
                                        (declare (not safe))
                                        (cons __tmp279007 '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp279006)))
                              (__tmp278996
                               (let ((__tmp279002
                                      (let ((__tmp279003
                                             (let ((__tmp279004
                                                    (car _i273615_)))
                                               (declare (not safe))
                                               (cons __tmp279004 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279003)))
                                     (__tmp278997
                                      (let ((__tmp279000
                                             (let ((__tmp279001
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273571_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279001)))
                                            (__tmp278998
                                             (let ((__tmp278999
                                                    (cdr _i273615_)))
                                               (declare (not safe))
                                               (cons __tmp278999 '()))))
                                        (declare (not safe))
                                        (cons __tmp279000 __tmp278998))))
                                 (declare (not safe))
                                 (cons __tmp279002 __tmp278997))))
                          (declare (not safe))
                          (cons __tmp279005 __tmp278996))))
                   (declare (not safe))
                   (cons '%#struct-unchecked-set! __tmp278995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp278994
                                                          _r273616_)))))
                                           (declare (not safe))
                                           (foldl1 __tmp278993
                                                   '()
                                                   _initializers273576_))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp279008 __tmp278992))))
                             (declare (not safe))
                             (cons '%#begin __tmp278991))))
                      (declare (not safe))
                      (cons __tmp278990 '()))))
               (declare (not safe))
               (cons __tmp279011 __tmp278989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp278988))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp278987
                                          _stx273549_))))
                                    (___kont278620278621_
                                     (lambda ()
                                       (let ((__tmp279015
                                              (let ((__tmp279016
                                                     (let ((__tmp279030
                                                            (let ((__tmp279031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279033
                                  (let ()
                                    (declare (not safe))
                                    (cons _$obj273571_ '())))
                                 (__tmp279032
                                  (let ()
                                    (declare (not safe))
                                    (cons _inline-make-object273558_ '()))))
                             (declare (not safe))
                             (cons __tmp279033 __tmp279032))))
                      (declare (not safe))
                      (cons __tmp279031 '())))
                   (__tmp279017
                    (let ((__tmp279018
                           (let ((__tmp279019
                                  (let ((__tmp279023
                                         (let ((__tmp279024
                                                (let ((__tmp279028
                                                       (let ((__tmp279029
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'class-instance-init! '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279029)))
              (__tmp279025
               (let ((__tmp279026
                      (let ((__tmp279027
                             (let ()
                               (declare (not safe))
                               (cons _$obj273571_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279027))))
                 (declare (not safe))
                 (cons __tmp279026 _args273556_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279028
                                                        __tmp279025))))
                                           (declare (not safe))
                                           (cons '%#call __tmp279024)))
                                        (__tmp279020
                                         (let ((__tmp279021
                                                (let ((__tmp279022
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _$obj273571_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279022))))
                                           (declare (not safe))
                                           (cons __tmp279021 '()))))
                                    (declare (not safe))
                                    (cons __tmp279023 __tmp279020))))
                             (declare (not safe))
                             (cons '%#begin __tmp279019))))
                      (declare (not safe))
                      (cons __tmp279018 '()))))
               (declare (not safe))
               (cons __tmp279030 __tmp279017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#let-values
                                                      __tmp279016))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279015
                                          _stx273549_)))))
                                (let* ((_g273578273618_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 ___stx278614278615_))
                                              (___kont278618278619_)
                                              (___kont278620278621_))))
                                       (___match278651278652_
                                        (lambda (_e273587273623_
                                                 _hd273586273626_
                                                 _tl273585273628_
                                                 _e273590273631_
                                                 _hd273589273634_
                                                 _tl273588273636_
                                                 _e273593273639_
                                                 _hd273592273642_
                                                 _tl273591273644_
                                                 _e273596273647_
                                                 _hd273595273650_
                                                 _tl273594273652_)
                                          (let ((_L273655_ _tl273594273652_)
                                                (_L273656_ _hd273595273650_)
                                                (_L273657_ _hd273592273642_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-keyword? _L273657_))
                                                (___kont278616278617_
                                                 _L273655_
                                                 _L273656_
                                                 _L273657_)
                                                (___kont278620278621_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? ___stx278614278615_))
                                      (let ((_e273587273623_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                ___stx278614278615_))))
                                        (let ((_tl273585273628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e273587273623_)))
                                              (_hd273586273626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e273587273623_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd273586273626_))
                                              (let ((_e273590273631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd273586273626_))))
                                                (let ((_tl273588273636_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e273590273631_)))
                                                      (_hd273589273634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e273590273631_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd273589273634_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#quote
                                                             _hd273589273634_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl273588273636_))
                      (let ((_e273593273639_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl273588273636_))))
                        (let ((_tl273591273644_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273593273639_)))
                              (_hd273592273642_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273593273639_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273591273644_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273585273628_))
                                  (let ((_e273596273647_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273585273628_))))
                                    (let ((_tl273594273652_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273596273647_)))
                                          (_hd273595273650_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273596273647_))))
                                      (___match278651278652_
                                       _e273587273623_
                                       _hd273586273626_
                                       _tl273585273628_
                                       _e273590273631_
                                       _hd273589273634_
                                       _tl273588273636_
                                       _e273593273639_
                                       _hd273592273642_
                                       _tl273591273644_
                                       _e273596273647_
                                       _hd273595273650_
                                       _tl273594273652_)))
                                  (___kont278620278621_))
                              (___kont278620278621_))))
                      (___kont278620278621_))
                  (___kont278620278621_))
              (___kont278620278621_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont278620278621_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g273578273618_))))))))))))))))
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
      (lambda (_self273371_ _stx273372_ _args273373_)
        (let* ((_g273375273385_
                (lambda (_g273376273382_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273376273382_))))
               (_g273374273423_
                (lambda (_g273376273388_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273376273388_))
                      (let ((_e273380273390_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273376273388_))))
                        (let ((_hd273379273393_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273380273390_)))
                              (_tl273378273395_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273380273390_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl273378273395_))
                              ((lambda (_L273398_)
                                 (let* ((_klass273409_
                                         (let ((__tmp279115
                                                (##structure-ref
                                                 _self273371_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-class
                                            _stx273372_
                                            __tmp279115)))
                                        (_field273411_
                                         (let ((__tmp279116
                                                (##structure-ref
                                                 _self273371_
                                                 '2
                                                 gxc#!accessor::t
                                                 '#f)))
                                           (declare (not safe))
                                           (gxc#!class-slot->field-offset
                                            _klass273409_
                                            __tmp279116)))
                                        (_object273413_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__0 _L273398_))))
                                   (if (##structure-ref
                                        _klass273409_
                                        '8
                                        gxc#!class::t
                                        '#f)
                                       (let ((__tmp279193
                                              (let ((__tmp279202
                                                     (if (##structure-ref
                                                          _self273371_
                                                          '3
                                                          gxc#!accessor::t
                                                          '#f)
                                                         '%#struct-direct-ref
                                                         '%#struct-unchecked-ref))
                                                    (__tmp279194
                                                     (let ((__tmp279199
                                                            (let ((__tmp279200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279201
                                  (##structure-ref
                                   _self273371_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (cons __tmp279201 '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279200)))
                   (__tmp279195
                    (let ((__tmp279197
                           (let ((__tmp279198
                                  (let ()
                                    (declare (not safe))
                                    (cons _field273411_ '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279198)))
                          (__tmp279196
                           (let ()
                             (declare (not safe))
                             (cons _object273413_ '()))))
                      (declare (not safe))
                      (cons __tmp279197 __tmp279196))))
               (declare (not safe))
               (cons __tmp279199 __tmp279195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp279202
                                                      __tmp279194))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279193
                                          _stx273372_))
                                       (if (##structure-ref
                                            _klass273409_
                                            '7
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279183
                                                  (let ((__tmp279192
                                                         (if (##structure-ref
                                                              _self273371_
                                                              '3
                                                              gxc#!accessor::t
                                                              '#f)
                                                             '%#struct-ref
                                                             '%#struct-unchecked-ref))
                                                        (__tmp279184
                                                         (let ((__tmp279189
                                                                (let ((__tmp279190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279191
                                      (##structure-ref
                                       _self273371_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (cons __tmp279191 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279190)))
                       (__tmp279185
                        (let ((__tmp279187
                               (let ((__tmp279188
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273411_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279188)))
                              (__tmp279186
                               (let ()
                                 (declare (not safe))
                                 (cons _object273413_ '()))))
                          (declare (not safe))
                          (cons __tmp279187 __tmp279186))))
                   (declare (not safe))
                   (cons __tmp279189 __tmp279185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279192
                                                          __tmp279184))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279183
                                              _stx273372_))
                                           (let ((_$e273416_
                                                  (let ((__tmp279117
                                                         (##structure-ref
                                                          _self273371_
                                                          '2
                                                          gxc#!accessor::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (gxc#!class-slot-find-struct
                                                     _klass273409_
                                                     __tmp279117))))
                                             (if _$e273416_
                                                 ((lambda (_klass273419_)
                                                    (let ((__tmp279173
                                                           (let ((__tmp279182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##structure-ref
                               _self273371_
                               '3
                               gxc#!accessor::t
                               '#f)
                              '%#struct-ref
                              '%#struct-unchecked-ref))
                         (__tmp279174
                          (let ((__tmp279179
                                 (let ((__tmp279180
                                        (let ((__tmp279181
                                               (##structure-ref
                                                _self273371_
                                                '1
                                                gxc#!type::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279181 '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp279180)))
                                (__tmp279175
                                 (let ((__tmp279177
                                        (let ((__tmp279178
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _field273411_ '()))))
                                          (declare (not safe))
                                          (cons '%#quote __tmp279178)))
                                       (__tmp279176
                                        (let ()
                                          (declare (not safe))
                                          (cons _object273413_ '()))))
                                   (declare (not safe))
                                   (cons __tmp279177 __tmp279176))))
                            (declare (not safe))
                            (cons __tmp279179 __tmp279175))))
                     (declare (not safe))
                     (cons __tmp279182 __tmp279174))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp279173 _stx273372_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e273416_)
                                                 (if (##structure-ref
                                                      _self273371_
                                                      '3
                                                      gxc#!accessor::t
                                                      '#f)
                                                     (let ((__tmp279127
                                                            (let* ((_$obj273421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279128 (gensym '__obj)))
                              (declare (not safe))
                              (make-symbol__0 __tmp279128)))
                           (__tmp279129
                            (let ((__tmp279169
                                   (let ((__tmp279170
                                          (let ((__tmp279172
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _$obj273421_ '())))
                                                (__tmp279171
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _object273413_ '()))))
                                            (declare (not safe))
                                            (cons __tmp279172 __tmp279171))))
                                     (declare (not safe))
                                     (cons __tmp279170 '())))
                                  (__tmp279130
                                   (let ((__tmp279131
                                          (let ((__tmp279132
                                                 (let ((__tmp279161
                                                        (let ((__tmp279162
                                                               (let ((__tmp279166
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279167
                                     (let ((__tmp279168
                                            (##structure-ref
                                             _klass273409_
                                             '1
                                             gxc#!type::t
                                             '#f)))
                                       (declare (not safe))
                                       (cons __tmp279168 '()))))
                                (declare (not safe))
                                (cons '%#quote __tmp279167)))
                             (__tmp279163
                              (let ((__tmp279164
                                     (let ((__tmp279165
                                            (let ()
                                              (declare (not safe))
                                              (cons _$obj273421_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279165))))
                                (declare (not safe))
                                (cons __tmp279164 '()))))
                         (declare (not safe))
                         (cons __tmp279166 __tmp279163))))
                  (declare (not safe))
                  (cons '%#struct-direct-instance? __tmp279162)))
               (__tmp279133
                (let ((__tmp279150
                       (let ((__tmp279151
                              (let ((__tmp279158
                                     (let ((__tmp279159
                                            (let ((__tmp279160
                                                   (##structure-ref
                                                    _self273371_
                                                    '1
                                                    gxc#!type::t
                                                    '#f)))
                                              (declare (not safe))
                                              (cons __tmp279160 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279159)))
                                    (__tmp279152
                                     (let ((__tmp279156
                                            (let ((__tmp279157
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273411_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279157)))
                                           (__tmp279153
                                            (let ((__tmp279154
                                                   (let ((__tmp279155
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$obj273421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279155))))
                                              (declare (not safe))
                                              (cons __tmp279154 '()))))
                                       (declare (not safe))
                                       (cons __tmp279156 __tmp279153))))
                                (declare (not safe))
                                (cons __tmp279158 __tmp279152))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp279151)))
                      (__tmp279134
                       (let ((__tmp279135
                              (let ((__tmp279136
                                     (let ((__tmp279148
                                            (let ((__tmp279149
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'class-slot-ref
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp279149)))
                                           (__tmp279137
                                            (let ((__tmp279145
                                                   (let ((__tmp279146
                                                          (let ((__tmp279147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref _self273371_ '1 gxc#!type::t '#f)))
                    (declare (not safe))
                    (cons __tmp279147 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp279146)))
                                                  (__tmp279138
                                                   (let ((__tmp279143
                                                          (let ((__tmp279144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _$obj273421_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp279144)))
                 (__tmp279139
                  (let ((__tmp279140
                         (let ((__tmp279141
                                (let ((__tmp279142
                                       (##structure-ref
                                        _self273371_
                                        '2
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (cons __tmp279142 '()))))
                           (declare (not safe))
                           (cons '%#quote __tmp279141))))
                    (declare (not safe))
                    (cons __tmp279140 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279143
                                                           __tmp279139))))
                                              (declare (not safe))
                                              (cons __tmp279145 __tmp279138))))
                                       (declare (not safe))
                                       (cons __tmp279148 __tmp279137))))
                                (declare (not safe))
                                (cons '%#call __tmp279136))))
                         (declare (not safe))
                         (cons __tmp279135 '()))))
                  (declare (not safe))
                  (cons __tmp279150 __tmp279134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279161
                                                         __tmp279133))))
                                            (declare (not safe))
                                            (cons '%#if __tmp279132))))
                                     (declare (not safe))
                                     (cons __tmp279131 '()))))
                              (declare (not safe))
                              (cons __tmp279169 __tmp279130))))
                      (declare (not safe))
                      (cons '%#let-values __tmp279129))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279127 _stx273372_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp279118
                                                            (let ((__tmp279119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279125
                                  (let ((__tmp279126
                                         (let ()
                                           (declare (not safe))
                                           (cons 'unchecked-slot-ref '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp279126)))
                                 (__tmp279120
                                  (let ((__tmp279121
                                         (let ((__tmp279122
                                                (let ((__tmp279123
                                                       (let ((__tmp279124
                                                              (##structure-ref
                                                               _self273371_
                                                               '2
                                                               gxc#!accessor::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp279124
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote
                                                        __tmp279123))))
                                           (declare (not safe))
                                           (cons __tmp279122 '()))))
                                    (declare (not safe))
                                    (cons _object273413_ __tmp279121))))
                             (declare (not safe))
                             (cons __tmp279125 __tmp279120))))
                      (declare (not safe))
                      (cons '%#call __tmp279119))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp279118 _stx273372_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _hd273379273393_)
                              (let ()
                                (declare (not safe))
                                (_g273375273385_ _g273376273388_)))))
                      (let ()
                        (declare (not safe))
                        (_g273375273385_ _g273376273388_))))))
          (declare (not safe))
          (_g273374273423_ _args273373_))))
    (define gxc#!accessor::optimize-call::specialize
      (lambda (__t278501)
        (let ((__id278502
               (let ((__tmp278505
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278501 'id))))
                 (if __tmp278505 __tmp278505 (error '"Unknown slot" 'id))))
              (__checked?278503
               (let ((__tmp278506
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278501 'checked?))))
                 (if __tmp278506
                     __tmp278506
                     (error '"Unknown slot" 'checked?))))
              (__slot278504
               (let ((__tmp278507
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278501 'slot))))
                 (if __tmp278507 __tmp278507 (error '"Unknown slot" 'slot)))))
          (lambda (_self273371_ _stx273372_ _args273373_)
            (let* ((_g273375273385_
                    (lambda (_g273376273382_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273376273382_))))
                   (_g273374273423_
                    (lambda (_g273376273388_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273376273388_))
                          (let ((_e273380273390_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273376273388_))))
                            (let ((_hd273379273393_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273380273390_)))
                                  (_tl273378273395_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273380273390_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl273378273395_))
                                  ((lambda (_L273398_)
                                     (let* ((_klass273409_
                                             (let ((__tmp279203
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273371_
                                                       __id278502
                                                       __t278501
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                _stx273372_
                                                __tmp279203)))
                                            (_field273411_
                                             (let ((__tmp279204
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _self273371_
                                                       __slot278504
                                                       __t278501
                                                       '#f))))
                                               (declare (not safe))
                                               (gxc#!class-slot->field-offset
                                                _klass273409_
                                                __tmp279204)))
                                            (_object273413_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__0 _L273398_))))
                                       (if (##structure-ref
                                            _klass273409_
                                            '8
                                            gxc#!class::t
                                            '#f)
                                           (let ((__tmp279281
                                                  (let ((__tmp279290
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273371_
                        __checked?278503
                        __t278501
                        '#f))
                     '%#struct-direct-ref
                     '%#struct-unchecked-ref))
                (__tmp279282
                 (let ((__tmp279287
                        (let ((__tmp279288
                               (let ((__tmp279289
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _self273371_
                                         __id278502
                                         __t278501
                                         '#f))))
                                 (declare (not safe))
                                 (cons __tmp279289 '()))))
                          (declare (not safe))
                          (cons '%#ref __tmp279288)))
                       (__tmp279283
                        (let ((__tmp279285
                               (let ((__tmp279286
                                      (let ()
                                        (declare (not safe))
                                        (cons _field273411_ '()))))
                                 (declare (not safe))
                                 (cons '%#quote __tmp279286)))
                              (__tmp279284
                               (let ()
                                 (declare (not safe))
                                 (cons _object273413_ '()))))
                          (declare (not safe))
                          (cons __tmp279285 __tmp279284))))
                   (declare (not safe))
                   (cons __tmp279287 __tmp279283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279290
                                                          __tmp279282))))
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp279281
                                              _stx273372_))
                                           (if (##structure-ref
                                                _klass273409_
                                                '7
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279271
                                                      (let ((__tmp279280
                                                             (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273371_
                            __checked?278503
                            __t278501
                            '#f))
                         '%#struct-ref
                         '%#struct-unchecked-ref))
                    (__tmp279272
                     (let ((__tmp279277
                            (let ((__tmp279278
                                   (let ((__tmp279279
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273371_
                                             __id278502
                                             __t278501
                                             '#f))))
                                     (declare (not safe))
                                     (cons __tmp279279 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279278)))
                           (__tmp279273
                            (let ((__tmp279275
                                   (let ((__tmp279276
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273411_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279276)))
                                  (__tmp279274
                                   (let ()
                                     (declare (not safe))
                                     (cons _object273413_ '()))))
                              (declare (not safe))
                              (cons __tmp279275 __tmp279274))))
                       (declare (not safe))
                       (cons __tmp279277 __tmp279273))))
                (declare (not safe))
                (cons __tmp279280 __tmp279272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279271
                                                  _stx273372_))
                                               (let ((_$e273416_
                                                      (let ((__tmp279205
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _self273371_
                        __slot278504
                        __t278501
                        '#f))))
                (declare (not safe))
                (gxc#!class-slot-find-struct _klass273409_ __tmp279205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e273416_
                                                     ((lambda (_klass273419_)
                                                        (let ((__tmp279261
                                                               (let ((__tmp279270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273371_
                                     __checked?278503
                                     __t278501
                                     '#f))
                                  '%#struct-ref
                                  '%#struct-unchecked-ref))
                             (__tmp279262
                              (let ((__tmp279267
                                     (let ((__tmp279268
                                            (let ((__tmp279269
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273371_
                                                      __id278502
                                                      __t278501
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279269 '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp279268)))
                                    (__tmp279263
                                     (let ((__tmp279265
                                            (let ((__tmp279266
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _field273411_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp279266)))
                                           (__tmp279264
                                            (let ()
                                              (declare (not safe))
                                              (cons _object273413_ '()))))
                                       (declare (not safe))
                                       (cons __tmp279265 __tmp279264))))
                                (declare (not safe))
                                (cons __tmp279267 __tmp279263))))
                         (declare (not safe))
                         (cons __tmp279270 __tmp279262))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp279261 _stx273372_)))
              _$e273416_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _self273371_
                                                            __checked?278503
                                                            __t278501
                                                            '#f))
                                                         (let ((__tmp279215
                                                                (let* ((_$obj273421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp279216 (gensym '__obj)))
                                  (declare (not safe))
                                  (make-symbol__0 __tmp279216)))
                               (__tmp279217
                                (let ((__tmp279257
                                       (let ((__tmp279258
                                              (let ((__tmp279260
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _$obj273421_
                                                             '())))
                                                    (__tmp279259
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _object273413_
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp279260
                                                      __tmp279259))))
                                         (declare (not safe))
                                         (cons __tmp279258 '())))
                                      (__tmp279218
                                       (let ((__tmp279219
                                              (let ((__tmp279220
                                                     (let ((__tmp279249
                                                            (let ((__tmp279250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279254
                                  (let ((__tmp279255
                                         (let ((__tmp279256
                                                (##structure-ref
                                                 _klass273409_
                                                 '1
                                                 gxc#!type::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp279256 '()))))
                                    (declare (not safe))
                                    (cons '%#quote __tmp279255)))
                                 (__tmp279251
                                  (let ((__tmp279252
                                         (let ((__tmp279253
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$obj273421_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279253))))
                                    (declare (not safe))
                                    (cons __tmp279252 '()))))
                             (declare (not safe))
                             (cons __tmp279254 __tmp279251))))
                      (declare (not safe))
                      (cons '%#struct-direct-instance? __tmp279250)))
                   (__tmp279221
                    (let ((__tmp279238
                           (let ((__tmp279239
                                  (let ((__tmp279246
                                         (let ((__tmp279247
                                                (let ((__tmp279248
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _self273371_
                                                          __id278502
                                                          __t278501
                                                          '#f))))
                                                  (declare (not safe))
                                                  (cons __tmp279248 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279247)))
                                        (__tmp279240
                                         (let ((__tmp279244
                                                (let ((__tmp279245
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273411_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279245)))
                                               (__tmp279241
                                                (let ((__tmp279242
                                                       (let ((__tmp279243
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$obj273421_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279242 '()))))
                                           (declare (not safe))
                                           (cons __tmp279244 __tmp279241))))
                                    (declare (not safe))
                                    (cons __tmp279246 __tmp279240))))
                             (declare (not safe))
                             (cons '%#struct-unchecked-ref __tmp279239)))
                          (__tmp279222
                           (let ((__tmp279223
                                  (let ((__tmp279224
                                         (let ((__tmp279236
                                                (let ((__tmp279237
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-slot-ref
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp279237)))
                                               (__tmp279225
                                                (let ((__tmp279233
                                                       (let ((__tmp279234
                                                              (let ((__tmp279235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273371_
                                __id278502
                                __t278501
                                '#f))))
                        (declare (not safe))
                        (cons __tmp279235 '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp279234)))
              (__tmp279226
               (let ((__tmp279231
                      (let ((__tmp279232
                             (let ()
                               (declare (not safe))
                               (cons _$obj273421_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279232)))
                     (__tmp279227
                      (let ((__tmp279228
                             (let ((__tmp279229
                                    (let ((__tmp279230
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _self273371_
                                              __slot278504
                                              __t278501
                                              '#f))))
                                      (declare (not safe))
                                      (cons __tmp279230 '()))))
                               (declare (not safe))
                               (cons '%#quote __tmp279229))))
                        (declare (not safe))
                        (cons __tmp279228 '()))))
                 (declare (not safe))
                 (cons __tmp279231 __tmp279227))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp279233
                                                        __tmp279226))))
                                           (declare (not safe))
                                           (cons __tmp279236 __tmp279225))))
                                    (declare (not safe))
                                    (cons '%#call __tmp279224))))
                             (declare (not safe))
                             (cons __tmp279223 '()))))
                      (declare (not safe))
                      (cons __tmp279238 __tmp279222))))
               (declare (not safe))
               (cons __tmp279249 __tmp279221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#if __tmp279220))))
                                         (declare (not safe))
                                         (cons __tmp279219 '()))))
                                  (declare (not safe))
                                  (cons __tmp279257 __tmp279218))))
                          (declare (not safe))
                          (cons '%#let-values __tmp279217))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279215 _stx273372_))
                 (let ((__tmp279206
                        (let ((__tmp279207
                               (let ((__tmp279213
                                      (let ((__tmp279214
                                             (let ()
                                               (declare (not safe))
                                               (cons 'unchecked-slot-ref
                                                     '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp279214)))
                                     (__tmp279208
                                      (let ((__tmp279209
                                             (let ((__tmp279210
                                                    (let ((__tmp279211
                                                           (let ((__tmp279212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _self273371_
                             __slot278504
                             __t278501
                             '#f))))
                     (declare (not safe))
                     (cons __tmp279212 '()))))
              (declare (not safe))
              (cons '%#quote __tmp279211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279210 '()))))
                                        (declare (not safe))
                                        (cons _object273413_ __tmp279209))))
                                 (declare (not safe))
                                 (cons __tmp279213 __tmp279208))))
                          (declare (not safe))
                          (cons '%#call __tmp279207))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp279206 _stx273372_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd273379273393_)
                                  (let ()
                                    (declare (not safe))
                                    (_g273375273385_ _g273376273388_)))))
                          (let ()
                            (declare (not safe))
                            (_g273375273385_ _g273376273388_))))))
              (declare (not safe))
              (_g273374273423_ _args273373_))))))
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
      (lambda (_self273176_ _stx273177_ _args273178_)
        (let* ((_g273180273194_
                (lambda (_g273181273191_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g273181273191_))))
               (_g273179273246_
                (lambda (_g273181273197_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g273181273197_))
                      (let ((_e273186273199_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g273181273197_))))
                        (let ((_hd273185273202_
                               (let ()
                                 (declare (not safe))
                                 (##car _e273186273199_)))
                              (_tl273184273204_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e273186273199_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl273184273204_))
                              (let ((_e273189273207_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl273184273204_))))
                                (let ((_hd273188273210_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e273189273207_)))
                                      (_tl273187273212_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e273189273207_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl273187273212_))
                                      ((lambda (_L273215_ _L273216_)
                                         (let* ((_klass273230_
                                                 (let ((__tmp279291
                                                        (##structure-ref
                                                         _self273176_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#optimizer-resolve-class
                                                    _stx273177_
                                                    __tmp279291)))
                                                (_field273232_
                                                 (let ((__tmp279292
                                                        (##structure-ref
                                                         _self273176_
                                                         '2
                                                         gxc#!mutator::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (gxc#!class-slot->field-offset
                                                    _klass273230_
                                                    __tmp279292)))
                                                (_object273234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273216_)))
                                                (_value273236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _L273215_))))
                                           (if (##structure-ref
                                                _klass273230_
                                                '8
                                                gxc#!class::t
                                                '#f)
                                               (let ((__tmp279374
                                                      (let ((__tmp279384
                                                             (if (##structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _self273176_
                          '3
                          gxc#!mutator::t
                          '#f)
                         '%#struct-direct-set!
                         '%#struct-unchecked-set!))
                    (__tmp279375
                     (let ((__tmp279381
                            (let ((__tmp279382
                                   (let ((__tmp279383
                                          (##structure-ref
                                           _self273176_
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (cons __tmp279383 '()))))
                              (declare (not safe))
                              (cons '%#ref __tmp279382)))
                           (__tmp279376
                            (let ((__tmp279379
                                   (let ((__tmp279380
                                          (let ()
                                            (declare (not safe))
                                            (cons _field273232_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp279380)))
                                  (__tmp279377
                                   (let ((__tmp279378
                                          (let ()
                                            (declare (not safe))
                                            (cons _value273236_ '()))))
                                     (declare (not safe))
                                     (cons _object273234_ __tmp279378))))
                              (declare (not safe))
                              (cons __tmp279379 __tmp279377))))
                       (declare (not safe))
                       (cons __tmp279381 __tmp279376))))
                (declare (not safe))
                (cons __tmp279384 __tmp279375))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp279374
                                                  _stx273177_))
                                               (if (##structure-ref
                                                    _klass273230_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279363
                                                          (let ((__tmp279373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##structure-ref
                              _self273176_
                              '3
                              gxc#!mutator::t
                              '#f)
                             '%#struct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279364
                         (let ((__tmp279370
                                (let ((__tmp279371
                                       (let ((__tmp279372
                                              (##structure-ref
                                               _self273176_
                                               '1
                                               gxc#!type::t
                                               '#f)))
                                         (declare (not safe))
                                         (cons __tmp279372 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279371)))
                               (__tmp279365
                                (let ((__tmp279368
                                       (let ((__tmp279369
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273232_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279369)))
                                      (__tmp279366
                                       (let ((__tmp279367
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273236_ '()))))
                                         (declare (not safe))
                                         (cons _object273234_ __tmp279367))))
                                  (declare (not safe))
                                  (cons __tmp279368 __tmp279366))))
                           (declare (not safe))
                           (cons __tmp279370 __tmp279365))))
                    (declare (not safe))
                    (cons __tmp279373 __tmp279364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279363
                                                      _stx273177_))
                                                   (let ((_$e273239_
                                                          (let ((__tmp279293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##structure-ref
                          _self273176_
                          '2
                          gxc#!mutator::t
                          '#f)))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct _klass273230_ __tmp279293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e273239_
                                                         ((lambda (_klass273242_)
                                                            (let ((__tmp279352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279362
                                  (if (##structure-ref
                                       _self273176_
                                       '3
                                       gxc#!mutator::t
                                       '#f)
                                      '%#struct-set!
                                      '%#struct-unchecked-set!))
                                 (__tmp279353
                                  (let ((__tmp279359
                                         (let ((__tmp279360
                                                (let ((__tmp279361
                                                       (##structure-ref
                                                        _self273176_
                                                        '1
                                                        gxc#!type::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp279361 '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp279360)))
                                        (__tmp279354
                                         (let ((__tmp279357
                                                (let ((__tmp279358
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _field273232_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#quote __tmp279358)))
                                               (__tmp279355
                                                (let ((__tmp279356
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _value273236_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _object273234_
                                                        __tmp279356))))
                                           (declare (not safe))
                                           (cons __tmp279357 __tmp279355))))
                                    (declare (not safe))
                                    (cons __tmp279359 __tmp279354))))
                             (declare (not safe))
                             (cons __tmp279362 __tmp279353))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp279352 _stx273177_)))
                  _$e273239_)
                 (if (##structure-ref _self273176_ '3 gxc#!mutator::t '#f)
                     (let ((__tmp279304
                            (let* ((_$obj273244_
                                    (let ((__tmp279305 (gensym '__obj)))
                                      (declare (not safe))
                                      (make-symbol__0 __tmp279305)))
                                   (__tmp279306
                                    (let ((__tmp279348
                                           (let ((__tmp279349
                                                  (let ((__tmp279351
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$obj273244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp279350
                 (let () (declare (not safe)) (cons _object273234_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp279351
                                                          __tmp279350))))
                                             (declare (not safe))
                                             (cons __tmp279349 '())))
                                          (__tmp279307
                                           (let ((__tmp279308
                                                  (let ((__tmp279309
                                                         (let ((__tmp279340
                                                                (let ((__tmp279341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp279345
                                      (let ((__tmp279346
                                             (let ((__tmp279347
                                                    (##structure-ref
                                                     _klass273230_
                                                     '1
                                                     gxc#!type::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp279347 '()))))
                                        (declare (not safe))
                                        (cons '%#quote __tmp279346)))
                                     (__tmp279342
                                      (let ((__tmp279343
                                             (let ((__tmp279344
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _$obj273244_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279344))))
                                        (declare (not safe))
                                        (cons __tmp279343 '()))))
                                 (declare (not safe))
                                 (cons __tmp279345 __tmp279342))))
                          (declare (not safe))
                          (cons '%#struct-direct-instance? __tmp279341)))
                       (__tmp279310
                        (let ((__tmp279328
                               (let ((__tmp279329
                                      (let ((__tmp279337
                                             (let ((__tmp279338
                                                    (let ((__tmp279339
                                                           (##structure-ref
                                                            _self273176_
                                                            '1
                                                            gxc#!type::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (cons __tmp279339 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279338)))
                                            (__tmp279330
                                             (let ((__tmp279335
                                                    (let ((__tmp279336
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279336)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279331
                                                    (let ((__tmp279333
                                                           (let ((__tmp279334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$obj273244_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279334)))
                  (__tmp279332
                   (let () (declare (not safe)) (cons _value273236_ '()))))
              (declare (not safe))
              (cons __tmp279333 __tmp279332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279335
                                                     __tmp279331))))
                                        (declare (not safe))
                                        (cons __tmp279337 __tmp279330))))
                                 (declare (not safe))
                                 (cons '%#struct-unchecked-set! __tmp279329)))
                              (__tmp279311
                               (let ((__tmp279312
                                      (let ((__tmp279313
                                             (let ((__tmp279326
                                                    (let ((__tmp279327
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp279327)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279314
                                                    (let ((__tmp279323
                                                           (let ((__tmp279324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp279325
                                 (##structure-ref
                                  _self273176_
                                  '1
                                  gxc#!type::t
                                  '#f)))
                            (declare (not safe))
                            (cons __tmp279325 '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp279324)))
                  (__tmp279315
                   (let ((__tmp279321
                          (let ((__tmp279322
                                 (let ()
                                   (declare (not safe))
                                   (cons _$obj273244_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp279322)))
                         (__tmp279316
                          (let ((__tmp279318
                                 (let ((__tmp279319
                                        (let ((__tmp279320
                                               (##structure-ref
                                                _self273176_
                                                '2
                                                gxc#!mutator::t
                                                '#f)))
                                          (declare (not safe))
                                          (cons __tmp279320 '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp279319)))
                                (__tmp279317
                                 (let ()
                                   (declare (not safe))
                                   (cons _value273236_ '()))))
                            (declare (not safe))
                            (cons __tmp279318 __tmp279317))))
                     (declare (not safe))
                     (cons __tmp279321 __tmp279316))))
              (declare (not safe))
              (cons __tmp279323 __tmp279315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279326
                                                     __tmp279314))))
                                        (declare (not safe))
                                        (cons '%#call __tmp279313))))
                                 (declare (not safe))
                                 (cons __tmp279312 '()))))
                          (declare (not safe))
                          (cons __tmp279328 __tmp279311))))
                   (declare (not safe))
                   (cons __tmp279340 __tmp279310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#if __tmp279309))))
                                             (declare (not safe))
                                             (cons __tmp279308 '()))))
                                      (declare (not safe))
                                      (cons __tmp279348 __tmp279307))))
                              (declare (not safe))
                              (cons '%#let-values __tmp279306))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279304 _stx273177_))
                     (let ((__tmp279294
                            (let ((__tmp279295
                                   (let ((__tmp279302
                                          (let ((__tmp279303
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons 'unchecked-slot-set!
                                                         '()))))
                                            (declare (not safe))
                                            (cons '%#ref __tmp279303)))
                                         (__tmp279296
                                          (let ((__tmp279297
                                                 (let ((__tmp279299
                                                        (let ((__tmp279300
                                                               (let ((__tmp279301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##structure-ref
                               _self273176_
                               '2
                               gxc#!mutator::t
                               '#f)))
                         (declare (not safe))
                         (cons __tmp279301 '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279300)))
               (__tmp279298
                (let () (declare (not safe)) (cons _value273236_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279299
                                                         __tmp279298))))
                                            (declare (not safe))
                                            (cons _object273234_
                                                  __tmp279297))))
                                     (declare (not safe))
                                     (cons __tmp279302 __tmp279296))))
                              (declare (not safe))
                              (cons '%#call __tmp279295))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp279294 _stx273177_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd273188273210_
                                       _hd273185273202_)
                                      (let ()
                                        (declare (not safe))
                                        (_g273180273194_ _g273181273197_)))))
                              (let ()
                                (declare (not safe))
                                (_g273180273194_ _g273181273197_)))))
                      (let ()
                        (declare (not safe))
                        (_g273180273194_ _g273181273197_))))))
          (declare (not safe))
          (_g273179273246_ _args273178_))))
    (define gxc#!mutator::optimize-call::specialize
      (lambda (__t278508)
        (let ((__id278509
               (let ((__tmp278512
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278508 'id))))
                 (if __tmp278512 __tmp278512 (error '"Unknown slot" 'id))))
              (__checked?278510
               (let ((__tmp278513
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278508 'checked?))))
                 (if __tmp278513
                     __tmp278513
                     (error '"Unknown slot" 'checked?))))
              (__slot278511
               (let ((__tmp278514
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t278508 'slot))))
                 (if __tmp278514 __tmp278514 (error '"Unknown slot" 'slot)))))
          (lambda (_self273176_ _stx273177_ _args273178_)
            (let* ((_g273180273194_
                    (lambda (_g273181273191_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _g273181273191_))))
                   (_g273179273246_
                    (lambda (_g273181273197_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _g273181273197_))
                          (let ((_e273186273199_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _g273181273197_))))
                            (let ((_hd273185273202_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e273186273199_)))
                                  (_tl273184273204_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e273186273199_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl273184273204_))
                                  (let ((_e273189273207_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl273184273204_))))
                                    (let ((_hd273188273210_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e273189273207_)))
                                          (_tl273187273212_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e273189273207_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl273187273212_))
                                          ((lambda (_L273215_ _L273216_)
                                             (let* ((_klass273230_
                                                     (let ((__tmp279385
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273176_
                                                               __id278509
                                                               __t278508
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#optimizer-resolve-class
                                                        _stx273177_
                                                        __tmp279385)))
                                                    (_field273232_
                                                     (let ((__tmp279386
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _self273176_
                                                               __slot278511
                                                               __t278508
                                                               '#f))))
                                                       (declare (not safe))
                                                       (gxc#!class-slot->field-offset
                                                        _klass273230_
                                                        __tmp279386)))
                                                    (_object273234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273216_)))
                                                    (_value273236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__0
                                                        _L273215_))))
                                               (if (##structure-ref
                                                    _klass273230_
                                                    '8
                                                    gxc#!class::t
                                                    '#f)
                                                   (let ((__tmp279468
                                                          (let ((__tmp279478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273176_
                                __checked?278510
                                __t278508
                                '#f))
                             '%#struct-direct-set!
                             '%#struct-unchecked-set!))
                        (__tmp279469
                         (let ((__tmp279475
                                (let ((__tmp279476
                                       (let ((__tmp279477
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _self273176_
                                                 __id278509
                                                 __t278508
                                                 '#f))))
                                         (declare (not safe))
                                         (cons __tmp279477 '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp279476)))
                               (__tmp279470
                                (let ((__tmp279473
                                       (let ((__tmp279474
                                              (let ()
                                                (declare (not safe))
                                                (cons _field273232_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp279474)))
                                      (__tmp279471
                                       (let ((__tmp279472
                                              (let ()
                                                (declare (not safe))
                                                (cons _value273236_ '()))))
                                         (declare (not safe))
                                         (cons _object273234_ __tmp279472))))
                                  (declare (not safe))
                                  (cons __tmp279473 __tmp279471))))
                           (declare (not safe))
                           (cons __tmp279475 __tmp279470))))
                    (declare (not safe))
                    (cons __tmp279478 __tmp279469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp279468
                                                      _stx273177_))
                                                   (if (##structure-ref
                                                        _klass273230_
                                                        '7
                                                        gxc#!class::t
                                                        '#f)
                                                       (let ((__tmp279457
                                                              (let ((__tmp279467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _self273176_
                                    __checked?278510
                                    __t278508
                                    '#f))
                                 '%#struct-set!
                                 '%#struct-unchecked-set!))
                            (__tmp279458
                             (let ((__tmp279464
                                    (let ((__tmp279465
                                           (let ((__tmp279466
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _self273176_
                                                     __id278509
                                                     __t278508
                                                     '#f))))
                                             (declare (not safe))
                                             (cons __tmp279466 '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279465)))
                                   (__tmp279459
                                    (let ((__tmp279462
                                           (let ((__tmp279463
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _field273232_ '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279463)))
                                          (__tmp279460
                                           (let ((__tmp279461
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _value273236_ '()))))
                                             (declare (not safe))
                                             (cons _object273234_
                                                   __tmp279461))))
                                      (declare (not safe))
                                      (cons __tmp279462 __tmp279460))))
                               (declare (not safe))
                               (cons __tmp279464 __tmp279459))))
                        (declare (not safe))
                        (cons __tmp279467 __tmp279458))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp279457 _stx273177_))
               (let ((_$e273239_
                      (let ((__tmp279387
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _self273176_
                                __slot278511
                                __t278508
                                '#f))))
                        (declare (not safe))
                        (gxc#!class-slot-find-struct
                         _klass273230_
                         __tmp279387))))
                 (if _$e273239_
                     ((lambda (_klass273242_)
                        (let ((__tmp279446
                               (let ((__tmp279456
                                      (if (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _self273176_
                                             __checked?278510
                                             __t278508
                                             '#f))
                                          '%#struct-set!
                                          '%#struct-unchecked-set!))
                                     (__tmp279447
                                      (let ((__tmp279453
                                             (let ((__tmp279454
                                                    (let ((__tmp279455
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _self273176_
                                                              __id278509
                                                              __t278508
                                                              '#f))))
                                                      (declare (not safe))
                                                      (cons __tmp279455 '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp279454)))
                                            (__tmp279448
                                             (let ((__tmp279451
                                                    (let ((__tmp279452
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _field273232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#quote __tmp279452)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp279449
                                                    (let ((__tmp279450
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _value273236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _object273234_ __tmp279450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp279451
                                                     __tmp279449))))
                                        (declare (not safe))
                                        (cons __tmp279453 __tmp279448))))
                                 (declare (not safe))
                                 (cons __tmp279456 __tmp279447))))
                          (declare (not safe))
                          (gxc#xform-wrap-source __tmp279446 _stx273177_)))
                      _$e273239_)
                     (if (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _self273176_
                            __checked?278510
                            __t278508
                            '#f))
                         (let ((__tmp279398
                                (let* ((_$obj273244_
                                        (let ((__tmp279399 (gensym '__obj)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp279399)))
                                       (__tmp279400
                                        (let ((__tmp279442
                                               (let ((__tmp279443
                                                      (let ((__tmp279445
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$obj273244_ '())))
                    (__tmp279444
                     (let () (declare (not safe)) (cons _object273234_ '()))))
                (declare (not safe))
                (cons __tmp279445 __tmp279444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279443 '())))
                                              (__tmp279401
                                               (let ((__tmp279402
                                                      (let ((__tmp279403
                                                             (let ((__tmp279434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp279435
                                   (let ((__tmp279439
                                          (let ((__tmp279440
                                                 (let ((__tmp279441
                                                        (##structure-ref
                                                         _klass273230_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp279441 '()))))
                                            (declare (not safe))
                                            (cons '%#quote __tmp279440)))
                                         (__tmp279436
                                          (let ((__tmp279437
                                                 (let ((__tmp279438
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$obj273244_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279438))))
                                            (declare (not safe))
                                            (cons __tmp279437 '()))))
                                     (declare (not safe))
                                     (cons __tmp279439 __tmp279436))))
                              (declare (not safe))
                              (cons '%#struct-direct-instance? __tmp279435)))
                           (__tmp279404
                            (let ((__tmp279422
                                   (let ((__tmp279423
                                          (let ((__tmp279431
                                                 (let ((__tmp279432
                                                        (let ((__tmp279433
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _self273176_
                          __id278509
                          __t278508
                          '#f))))
                  (declare (not safe))
                  (cons __tmp279433 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp279432)))
                                                (__tmp279424
                                                 (let ((__tmp279429
                                                        (let ((__tmp279430
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _field273232_ '()))))
                  (declare (not safe))
                  (cons '%#quote __tmp279430)))
               (__tmp279425
                (let ((__tmp279427
                       (let ((__tmp279428
                              (let ()
                                (declare (not safe))
                                (cons _$obj273244_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279428)))
                      (__tmp279426
                       (let () (declare (not safe)) (cons _value273236_ '()))))
                  (declare (not safe))
                  (cons __tmp279427 __tmp279426))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279429
                                                         __tmp279425))))
                                            (declare (not safe))
                                            (cons __tmp279431 __tmp279424))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp279423)))
                                  (__tmp279405
                                   (let ((__tmp279406
                                          (let ((__tmp279407
                                                 (let ((__tmp279420
                                                        (let ((__tmp279421
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons 'class-slot-set! '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279421)))
               (__tmp279408
                (let ((__tmp279417
                       (let ((__tmp279418
                              (let ((__tmp279419
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _self273176_
                                        __id278509
                                        __t278508
                                        '#f))))
                                (declare (not safe))
                                (cons __tmp279419 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp279418)))
                      (__tmp279409
                       (let ((__tmp279415
                              (let ((__tmp279416
                                     (let ()
                                       (declare (not safe))
                                       (cons _$obj273244_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279416)))
                             (__tmp279410
                              (let ((__tmp279412
                                     (let ((__tmp279413
                                            (let ((__tmp279414
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _self273176_
                                                      __slot278511
                                                      __t278508
                                                      '#f))))
                                              (declare (not safe))
                                              (cons __tmp279414 '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279413)))
                                    (__tmp279411
                                     (let ()
                                       (declare (not safe))
                                       (cons _value273236_ '()))))
                                (declare (not safe))
                                (cons __tmp279412 __tmp279411))))
                         (declare (not safe))
                         (cons __tmp279415 __tmp279410))))
                  (declare (not safe))
                  (cons __tmp279417 __tmp279409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279420
                                                         __tmp279408))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279407))))
                                     (declare (not safe))
                                     (cons __tmp279406 '()))))
                              (declare (not safe))
                              (cons __tmp279422 __tmp279405))))
                       (declare (not safe))
                       (cons __tmp279434 __tmp279404))))
                (declare (not safe))
                (cons '%#if __tmp279403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp279402 '()))))
                                          (declare (not safe))
                                          (cons __tmp279442 __tmp279401))))
                                  (declare (not safe))
                                  (cons '%#let-values __tmp279400))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp279398 _stx273177_))
                         (let ((__tmp279388
                                (let ((__tmp279389
                                       (let ((__tmp279396
                                              (let ((__tmp279397
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons 'unchecked-slot-set!
                                                             '()))))
                                                (declare (not safe))
                                                (cons '%#ref __tmp279397)))
                                             (__tmp279390
                                              (let ((__tmp279391
                                                     (let ((__tmp279393
                                                            (let ((__tmp279394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279395
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _self273176_
                                     __slot278511
                                     __t278508
                                     '#f))))
                             (declare (not safe))
                             (cons __tmp279395 '()))))
                      (declare (not safe))
                      (cons '%#quote __tmp279394)))
                   (__tmp279392
                    (let () (declare (not safe)) (cons _value273236_ '()))))
               (declare (not safe))
               (cons __tmp279393 __tmp279392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _object273234_
                                                      __tmp279391))))
                                         (declare (not safe))
                                         (cons __tmp279396 __tmp279390))))
                                  (declare (not safe))
                                  (cons '%#call __tmp279389))))
                           (declare (not safe))
                           (gxc#xform-wrap-source
                            __tmp279388
                            _stx273177_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _hd273188273210_
                                           _hd273185273202_)
                                          (let ()
                                            (declare (not safe))
                                            (_g273180273194_
                                             _g273181273197_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g273180273194_ _g273181273197_)))))
                          (let ()
                            (declare (not safe))
                            (_g273180273194_ _g273181273197_))))))
              (declare (not safe))
              (_g273179273246_ _args273178_))))))
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
      (lambda (_self273010_ _stx273011_ _args273012_)
        (let* ((_self273013273022_ _self273010_)
               (_E273015273026_
                (lambda () (error '"No clause matching" _self273013273022_)))
               (_K273016273033_
                (lambda (_inline273029_ _dispatch273030_ _arity273031_)
                  (if (let ()
                        (declare (not safe))
                        (gxc#!lambda-arity-match? _self273010_ _args273012_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal lambda application; arity mismatch"
                         _stx273011_
                         _arity273031_)))
                  (if _inline273029_
                      (begin
                        (let ()
                          (declare (not safe))
                          (gxc#verbose '"inline lambda"))
                        (let ((__tmp279484
                               (let ((__tmp279485
                                      (_inline273029_ _stx273011_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp279485
                                  _stx273011_))))
                          (declare (not safe))
                          (gxc#compile-e__0 __tmp279484)))
                      (if _dispatch273030_
                          (begin
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"dispatch lambda => "
                               _dispatch273030_))
                            (let ((__tmp279479
                                   (let ((__tmp279480
                                          (let ((__tmp279481
                                                 (let ((__tmp279482
                                                        (let ((__tmp279483
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _dispatch273030_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp279483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp279482
                                                         _args273012_))))
                                            (declare (not safe))
                                            (cons '%#call __tmp279481))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp279480
                                      _stx273011_))))
                              (declare (not safe))
                              (gxc#compile-e__0 __tmp279479)))
                          (let ()
                            (declare (not safe))
                            (gxc#xform-call% _stx273011_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self273013273022_ 'gxc#!lambda::t))
              (let* ((_e273017273036_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273013273022_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e273018273039_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273013273022_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity273042_ _e273018273039_)
                     (_e273019273044_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273013273022_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch273047_ _e273019273044_)
                     (_e273020273049_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self273013273022_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline273052_ _e273020273049_))
                (declare (not safe))
                (_K273016273033_
                 _inline273052_
                 _dispatch273047_
                 _arity273042_))
              (let () (declare (not safe)) (_E273015273026_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_self272849_ _stx272850_ _args272851_)
        (let* ((_self272852272859_ _self272849_)
               (_E272854272863_
                (lambda () (error '"No clause matching" _self272852272859_)))
               (_K272855272877_
                (lambda (_clauses272866_)
                  (let ((_$e272872_
                         (let ((__tmp279486
                                (lambda (_g272867272869_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!lambda-arity-match?
                                     _g272867272869_
                                     _args272851_)))))
                           (declare (not safe))
                           (find __tmp279486 _clauses272866_))))
                    (if _$e272872_
                        ((lambda (_clause272875_)
                           (let ((__method278783
                                  (let ()
                                    (declare (not safe))
                                    (method-ref
                                     _clause272875_
                                     'optimize-call))))
                             (if __method278783
                                 (__method278783
                                  _clause272875_
                                  _stx272850_
                                  _args272851_)
                                 (error '"Missing method"
                                        _clause272875_
                                        'optimize-call))))
                         _$e272872_)
                        (let ((__tmp279487
                               (map gxc#!lambda-arity _clauses272866_)))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal case-lambda application; arity mismatch"
                           _stx272850_
                           __tmp279487)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272852272859_
                 'gxc#!case-lambda::t))
              (let* ((_e272856272880_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272852272859_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272857272883_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272852272859_
                         '2
                         gxc#!case-lambda::t
                         '#f)))
                     (_clauses272886_ _e272857272883_))
                (declare (not safe))
                (_K272855272877_ _clauses272886_))
              (let () (declare (not safe)) (_E272854272863_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!lambda-arity-match?
      (lambda (_self272663_ _args272664_)
        (let* ((_self272665272672_ _self272663_)
               (_E272667272676_
                (lambda () (error '"No clause matching" _self272665272672_)))
               (_K272668272716_
                (lambda (_arity272679_)
                  (let* ((_arity272680272689_ _arity272679_)
                         (_E272683272693_
                          (lambda ()
                            (error '"No clause matching"
                                   _arity272680272689_))))
                    (let ((_K272687272713_
                           (lambda ()
                             (fx= (length _args272664_) _arity272679_)))
                          (_K272684272699_
                           (lambda (_arity272697_)
                             (fx>= (length _args272664_) _arity272697_))))
                      (let ((_try-match272682272709_
                             (lambda ()
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _arity272680272689_))
                                   (let ((_tl272686272704_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _arity272680272689_)))
                                         (_hd272685272702_
                                          (let ()
                                            (declare (not safe))
                                            (##car _arity272680272689_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _tl272686272704_))
                                         (let ((_arity272707_
                                                _hd272685272702_))
                                           (declare (not safe))
                                           (_K272684272699_ _arity272707_))
                                         (let ()
                                           (declare (not safe))
                                           (_E272683272693_))))
                                   (let ()
                                     (declare (not safe))
                                     (_E272683272693_))))))
                        (if (fixnum? _arity272680272689_)
                            (let () (declare (not safe)) (_K272687272713_))
                            (let ()
                              (declare (not safe))
                              (_try-match272682272709_)))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self272665272672_ 'gxc#!lambda::t))
              (let* ((_e272669272719_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272665272672_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272670272722_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272665272672_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity272725_ _e272670272722_))
                (declare (not safe))
                (_K272668272716_ _arity272725_))
              (let () (declare (not safe)) (_E272667272676_))))))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_self272548_ _stx272549_ _args272550_)
        (let* ((_self272551272559_ _self272548_)
               (_E272553272563_
                (lambda () (error '"No clause matching" _self272551272559_)))
               (_K272554272647_
                (lambda (_dispatch272566_ _table272567_)
                  (let* ((_g272568272577_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-lookup-type _dispatch272566_)))
                         (_else272570272585_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"unknown keyword dispatch lambda "
                               _dispatch272566_))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call% _stx272549_))))
                         (_K272572272631_
                          (lambda (_main272588_ _keys272589_)
                            (let ((_g279488_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#!kw-lambda-split-args
                                      _stx272549_
                                      _args272550_))))
                              (begin
                                (let ((_g279489_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g279488_)
                                             (##vector-length _g279488_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g279489_ 2)))
                                      (error "Context expects 2 values"
                                             _g279489_)))
                                (let ((_pargs272591_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279488_ 0)))
                                      (_kwargs272592_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g279488_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gxc#verbose
                                       '"dispatch kw-lambda => "
                                       _main272588_))
                                    (if _table272567_
                                        (let ((_xargs272599_
                                               (map (lambda (_key272594_)
                                                      (let ((_$e272596_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _key272594_ _kwargs272592_))))
                (if _$e272596_ (values _$e272596_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _keys272589_)))
                                          (for-each
                                           (lambda (_kw272601_)
                                             (if (memq (car _kw272601_)
                                                       _keys272589_)
                                                 '#!void
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"Illegal keyword lambda application; unexpected keyword"
                                                    _stx272549_
                                                    _keys272589_
                                                    _kw272601_))))
                                           _kwargs272592_)
                                          (let ((__tmp279541
                                                 (let ((__tmp279542
                                                        (let ((__tmp279543
                                                               (let ((__tmp279548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279549
                                     (let ()
                                       (declare (not safe))
                                       (cons _main272588_ '()))))
                                (declare (not safe))
                                (cons '%#ref __tmp279549)))
                             (__tmp279544
                              (let ((__tmp279546
                                     (let ((__tmp279547
                                            (let ()
                                              (declare (not safe))
                                              (cons '#f '()))))
                                       (declare (not safe))
                                       (cons '%#quote __tmp279547)))
                                    (__tmp279545
                                     (let ()
                                       (declare (not safe))
                                       (foldr1 cons
                                               _pargs272591_
                                               _xargs272599_))))
                                (declare (not safe))
                                (cons __tmp279546 __tmp279545))))
                         (declare (not safe))
                         (cons __tmp279548 __tmp279544))))
                  (declare (not safe))
                  (cons '%#call __tmp279543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279542
                                                    _stx272549_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0 __tmp279541)))
                                        (let* ((_kwt272603_
                                                (let ((__tmp279490
                                                       (gensym '__kwt)))
                                                  (declare (not safe))
                                                  (make-symbol__0
                                                   __tmp279490)))
                                               (_kwvars272606_
                                                (map (lambda (_g279491_)
                                                       (let ((__tmp279492
                                                              (gensym '__kw)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp279492)))
                                                     _kwargs272592_))
                                               (_kwbind272611_
                                                (map (lambda (_kw272608_
                                                              _kwvar272609_)
                                                       (let ((__tmp279495
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _kwvar272609_ '())))
                     (__tmp279493
                      (let ((__tmp279494 (cdr _kw272608_)))
                        (declare (not safe))
                        (cons __tmp279494 '()))))
                 (declare (not safe))
                 (cons __tmp279495 __tmp279493)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272592_
                                                     _kwvars272606_))
                                               (_kwset272616_
                                                (map (lambda (_kw272613_
                                                              _kwvar272614_)
                                                       (let ((__tmp279496
                                                              (let ((__tmp279497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp279505
                                    (let ((__tmp279506
                                           (let ()
                                             (declare (not safe))
                                             (cons _kwt272603_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp279506)))
                                   (__tmp279498
                                    (let ((__tmp279502
                                           (let ((__tmp279503
                                                  (let ((__tmp279504
                                                         (car _kw272613_)))
                                                    (declare (not safe))
                                                    (cons __tmp279504 '()))))
                                             (declare (not safe))
                                             (cons '%#quote __tmp279503)))
                                          (__tmp279499
                                           (let ((__tmp279500
                                                  (let ((__tmp279501
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _kwvar272614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp279501))))
                                             (declare (not safe))
                                             (cons __tmp279500 '()))))
                                      (declare (not safe))
                                      (cons __tmp279502 __tmp279499))))
                               (declare (not safe))
                               (cons __tmp279505 __tmp279498))))
                        (declare (not safe))
                        (cons '(%#ref hash-put!) __tmp279497))))
                 (declare (not safe))
                 (cons '%#call __tmp279496)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272592_
                                                     _kwvars272606_))
                                               (_xkwargs272621_
                                                (map (lambda (_kw272618_
                                                              _kwvar272619_)
                                                       (let ((__tmp279509
                                                              (car _kw272618_))
                                                             (__tmp279507
                                                              (let ((__tmp279508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _kwvar272619_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp279508))))
                 (declare (not safe))
                 (cons __tmp279509 __tmp279507)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _kwargs272592_
                                                     _kwvars272606_))
                                               (_xargs272628_
                                                (map (lambda (_key272623_)
                                                       (let ((_$e272625_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (assgetq _key272623_ _xkwargs272621_))))
                 (if _$e272625_ (values _$e272625_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _keys272589_)))
                                          (let ((__tmp279510
                                                 (let ((__tmp279511
                                                        (let ((__tmp279512
                                                               (let ((__tmp279513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp279514
                                     (let ((__tmp279515
                                            (let ((__tmp279529
                                                   (let ((__tmp279530
                                                          (let ((__tmp279540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _kwt272603_ '())))
                        (__tmp279531
                         (let ((__tmp279532
                                (let ((__tmp279533
                                       (let ((__tmp279534
                                              (let ((__tmp279535
                                                     (let ((__tmp279536
                                                            (let ((__tmp279537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp279538
                                  (let ((__tmp279539 (length _kwargs272592_)))
                                    (declare (not safe))
                                    (cons __tmp279539 '()))))
                             (declare (not safe))
                             (cons '%#quote __tmp279538))))
                      (declare (not safe))
                      (cons __tmp279537 '()))))
               (declare (not safe))
               (cons '(%#quote size:) __tmp279536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(%#ref make-hash-table-eq)
                                                      __tmp279535))))
                                         (declare (not safe))
                                         (cons '%#call __tmp279534))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp279533
                                   _stx272549_))))
                           (declare (not safe))
                           (cons __tmp279532 '()))))
                    (declare (not safe))
                    (cons __tmp279540 __tmp279531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279530 '())))
                                                  (__tmp279516
                                                   (let ((__tmp279517
                                                          (let ((__tmp279518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp279519
                                (let ((__tmp279520
                                       (let ((__tmp279521
                                              (let ((__tmp279522
                                                     (let ((__tmp279527
                                                            (let ((__tmp279528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _main272588_ '()))))
                      (declare (not safe))
                      (cons '%#ref __tmp279528)))
                   (__tmp279523
                    (let ((__tmp279525
                           (let ((__tmp279526
                                  (let ()
                                    (declare (not safe))
                                    (cons _kwt272603_ '()))))
                             (declare (not safe))
                             (cons '%#ref __tmp279526)))
                          (__tmp279524
                           (let ()
                             (declare (not safe))
                             (foldr1 cons _pargs272591_ _xargs272628_))))
                      (declare (not safe))
                      (cons __tmp279525 __tmp279524))))
               (declare (not safe))
               (cons __tmp279527 __tmp279523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '%#call __tmp279522))))
                                         (declare (not safe))
                                         (gxc#xform-wrap-source
                                          __tmp279521
                                          _stx272549_))))
                                  (declare (not safe))
                                  (cons __tmp279520 '()))))
                           (declare (not safe))
                           (foldr1 cons __tmp279519 _kwset272616_))))
                    (declare (not safe))
                    (cons '%#begin __tmp279518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp279517 '()))))
                                              (declare (not safe))
                                              (cons __tmp279529 __tmp279516))))
                                       (declare (not safe))
                                       (cons '%#let-values __tmp279515))))
                                (declare (not safe))
                                (cons __tmp279514 '()))))
                         (declare (not safe))
                         (cons _kwbind272611_ __tmp279513))))
                  (declare (not safe))
                  (cons '%#let-values __tmp279512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp279511
                                                    _stx272549_))))
                                            (declare (not safe))
                                            (gxc#compile-e__0
                                             __tmp279510)))))))))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _g272568272577_
                           'gxc#!kw-lambda-primary::t))
                        (let* ((_e272573272634_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272568272577_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                               (_e272574272637_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272568272577_
                                   '2
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_keys272640_ _e272574272637_)
                               (_e272575272642_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _g272568272577_
                                   '3
                                   gxc#!kw-lambda-primary::t
                                   '#f)))
                               (_main272645_ _e272575272642_))
                          (declare (not safe))
                          (_K272572272631_ _main272645_ _keys272640_))
                        (let () (declare (not safe)) (_else272570272585_)))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self272551272559_
                 'gxc#!kw-lambda::t))
              (let* ((_e272555272650_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272551272559_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e272556272653_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272551272559_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table272656_ _e272556272653_)
                     (_e272557272658_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self272551272559_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch272661_ _e272557272658_))
                (declare (not safe))
                (_K272554272647_ _dispatch272661_ _table272656_))
              (let () (declare (not safe)) (_E272553272563_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_stx272161_ _args272162_)
        (let _lp272164_ ((_rest272166_ _args272162_)
                         (_pargs272167_ '())
                         (_kwargs272168_ '()))
          (let* ((___stx278665278666_ _rest272166_)
                 (_g272174272226_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx278665278666_)))))
            (let ((___kont278667278668_
                   (lambda (_L272405_ _L272406_)
                     (let ((__tmp279550
                            (let ()
                              (declare (not safe))
                              (cons _L272406_ _pargs272167_))))
                       (declare (not safe))
                       (_lp272164_ _L272405_ __tmp279550 _kwargs272168_))))
                  (___kont278669278670_
                   (lambda (_L272351_)
                     (values (let ()
                               (declare (not safe))
                               (foldl1 cons _L272351_ _pargs272167_))
                             (reverse _kwargs272168_))))
                  (___kont278671278672_
                   (lambda (_L272298_ _L272299_ _L272300_)
                     (let ((_kw272317_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L272300_))))
                       (if (assq _kw272317_ _kwargs272168_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _stx272161_
                              _kw272317_))
                           (let ((__tmp279551
                                  (let ((__tmp279552
                                         (let ()
                                           (declare (not safe))
                                           (cons _kw272317_ _L272299_))))
                                    (declare (not safe))
                                    (cons __tmp279552 _kwargs272168_))))
                             (declare (not safe))
                             (_lp272164_
                              _L272298_
                              _pargs272167_
                              __tmp279551))))))
                  (___kont278673278674_
                   (lambda (_L272246_ _L272247_)
                     (let ((__tmp279553
                            (let ()
                              (declare (not safe))
                              (cons _L272247_ _pargs272167_))))
                       (declare (not safe))
                       (_lp272164_ _L272246_ __tmp279553 _kwargs272168_))))
                  (___kont278675278676_
                   (lambda ()
                     (values (reverse _pargs272167_)
                             (reverse _kwargs272168_)))))
              (let* ((_g272173272233_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? ___stx278665278666_))
                            (___kont278675278676_)
                            (let () (declare (not safe)) (_g272174272226_)))))
                     (___match278772278773_
                      (lambda (_e272207272266_
                               _hd272206272269_
                               _tl272205272271_
                               _e272210272274_
                               _hd272209272277_
                               _tl272208272279_
                               _e272213272282_
                               _hd272212272285_
                               _tl272211272287_
                               _e272216272290_
                               _hd272215272293_
                               _tl272214272295_)
                        (let ((_L272298_ _tl272214272295_)
                              (_L272299_ _hd272215272293_)
                              (_L272300_ _hd272212272285_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-keyword? _L272300_))
                              (___kont278671278672_
                               _L272298_
                               _L272299_
                               _L272300_)
                              (___kont278673278674_
                               _tl272205272271_
                               _hd272206272269_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx278665278666_))
                    (let ((_e272180272370_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx278665278666_))))
                      (let ((_tl272178272375_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272180272370_)))
                            (_hd272179272373_
                             (let ()
                               (declare (not safe))
                               (##car _e272180272370_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd272179272373_))
                            (let ((_e272183272378_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd272179272373_))))
                              (let ((_tl272181272383_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e272183272378_)))
                                    (_hd272182272381_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e272183272378_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd272182272381_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd272182272381_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl272181272383_))
                                            (let ((_e272186272386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl272181272383_))))
                                              (let ((_tl272184272391_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e272186272386_)))
                                                    (_hd272185272389_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e272186272386_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd272185272389_))
                                                    (let ((_e272187272394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd272185272389_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e272187272394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#!key))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl272184272391_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl272178272375_))
                          (let ((_e272190272397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl272178272375_))))
                            (let ((_tl272188272402_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e272190272397_)))
                                  (_hd272189272400_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e272190272397_))))
                              (___kont278667278668_
                               _tl272188272402_
                               _hd272189272400_)))
                          (___kont278673278674_
                           _tl272178272375_
                           _hd272179272373_))
                      (___kont278673278674_ _tl272178272375_ _hd272179272373_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e272187272394_ '#!rest))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272184272391_))
                          (___kont278669278670_ _tl272178272375_)
                          (___kont278673278674_
                           _tl272178272375_
                           _hd272179272373_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl272184272391_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl272178272375_))
                              (let ((_e272216272290_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl272178272375_))))
                                (let ((_tl272214272295_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e272216272290_)))
                                      (_hd272215272293_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e272216272290_))))
                                  (___match278772278773_
                                   _e272180272370_
                                   _hd272179272373_
                                   _tl272178272375_
                                   _e272183272378_
                                   _hd272182272381_
                                   _tl272181272383_
                                   _e272186272386_
                                   _hd272185272389_
                                   _tl272184272391_
                                   _e272216272290_
                                   _hd272215272293_
                                   _tl272214272295_)))
                              (___kont278673278674_
                               _tl272178272375_
                               _hd272179272373_))
                          (___kont278673278674_
                           _tl272178272375_
                           _hd272179272373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl272184272391_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl272178272375_))
                                                            (let ((_e272216272290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl272178272375_))))
                      (let ((_tl272214272295_
                             (let ()
                               (declare (not safe))
                               (##cdr _e272216272290_)))
                            (_hd272215272293_
                             (let ()
                               (declare (not safe))
                               (##car _e272216272290_))))
                        (___match278772278773_
                         _e272180272370_
                         _hd272179272373_
                         _tl272178272375_
                         _e272183272378_
                         _hd272182272381_
                         _tl272181272383_
                         _e272186272386_
                         _hd272185272389_
                         _tl272184272391_
                         _e272216272290_
                         _hd272215272293_
                         _tl272214272295_)))
                    (___kont278673278674_ _tl272178272375_ _hd272179272373_))
                (___kont278673278674_ _tl272178272375_ _hd272179272373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont278673278674_
                                             _tl272178272375_
                                             _hd272179272373_))
                                        (___kont278673278674_
                                         _tl272178272375_
                                         _hd272179272373_))
                                    (___kont278673278674_
                                     _tl272178272375_
                                     _hd272179272373_))))
                            (___kont278673278674_
                             _tl272178272375_
                             _hd272179272373_))))
                    (let () (declare (not safe)) (_g272173272233_)))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_self272157_ _stx272158_ _args272159_)
        (let () (declare (not safe)) (gxc#xform-call% _stx272158_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))))
